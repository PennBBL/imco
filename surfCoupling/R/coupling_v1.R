#!/share/apps/R/R-3.2.3/bin/Rscript --vanilla --no-init-file
# Performs a weighted regression at each vertex
# for testing
#sublist = 'bblid_scanid.txt'
#job = 1
suppressMessages(require(optparse))

ol = list(make_option(c("-s", "--subjectlist"), action="store", default=NULL, help="A list of subjects to run. Each line is a subject. Searches within the freesurfer SUBJECTS_DIR environment variable. Default is NA."),
	    make_option(c("-m", "--measures"), action="store", default='thickness,sulc', help="The two (comma separated) measures to use to estimate coupling. The first measure is regressed onto the second. Coupling is the slope parameter of the regression. Defaults is 'thickness,sulc'."),
	    make_option(c("-f", "--fwhm"), action="store", default=5, help="Gaussian fwhm for weightings of neighbors. Units are in number of neighbors from the center vertex. Higher numbers give smoother surfaces. Default is fwhm=5"),
	    make_option(c("-t", "--template"), action="store", default='fsaverage5', help="Template space in which to estimate coupling. Default is fsaverage5 space. Will look for template in SUBJECTS_DIR first then in FREESURFER_HOME. Default is fsaverage5 template."),
	    make_option(c("-n", "--maxneigh"), action="store", default=10, help="Maximum number of neighbors to consider in the estimation of coupling. Ten neighbors gives a max between 275-300 for all vertices. Higher numbers lead to slower run times as neighborhood information needs to be estimated and stored. Default is 10 neighbors which can give very smooth surfaces. No practical need to change this."),
	    make_option(c("-o", "--overwrite"), action="store_true", default=FALSE, help="Overwrite existing files? Default is FALSE.")
)

opt = parse_args(OptionParser(option_list=ol))
#print(opt)

sublist = opt$subjectlist
# comma separated measures
measures = unlist(strsplit(opt$measures, split=','))
fwhm = opt$fwhm
sd=fwhm/(2*sqrt(2*log(2))) # convert to sd
overwrite = opt$overwrite
template = opt$template
k = opt$maxneigh
hemis = c('lh', 'rh')

# note that fwhm is the distance based on how many neighbors away a vertex is.
# sigma for smoothing. Larger value is more smooth. Units are in "neighbors".
# the fwhm is converted to standard dev, and the standard dev corresponds to number of neighbors.

#### GET ENVIRONMENT VARIABLES ####
envvars = Sys.getenv()
# check for freesurfer environment variables
sum(grepl("^SUBJECTS_DIR$|^FREESURFER_HOME$", names(envvars)))
if( sum(grepl("^SUBJECTS_DIR$|^FREESURFER_HOME$", names(envvars))) != 2 ){
	stop('SUBJECTS_DIR and/or FREESURFER_HOME environment variables not found')
}
# get freesurfer directory variables from environment
sdir = Sys.getenv("SUBJECTS_DIR")
fsdir = Sys.getenv("FREESURFER_HOME")
scripts = file.path("/data/jux/BBL/projects/coupling/imcoScripts/surfCoupling", 'R')

# check for job number environment variable in SGE or LSF
grep("SGE_TASK_ID|LSB_JOBINDEX", names(envvars), value=TRUE)
job = as.numeric(envvars[grep("SGE_TASK_ID|LSB_JOBINDEX", names(envvars))] )
job
if(length(job)==0 ){
	job=0
	ids=unlist(read.table(sublist))
	cat('no job index for grid. Running sequentially.\n')
} else {
	ids = unlist(read.table(sublist, skip=job-1, nrow=1))
}


#### CHECK FOR TEMPLATE ####
# check in subject directory first, then check freesurfer home
if(file.exists(file.path(sdir, template))){
	templatedir = file.path(sdir, template)
} else if(file.exists(file.path(fsdir, 'subjects', template)) ){
	templatedir = file.path(fsdir, 'subjects', template)
} else {
	stop('no', template, 'template in SUBJECTS_DIR or FREESURFER_HOME!')
}

#### NOW FIND THE NEAREST NEIGHBORS FOR THIS TEMPLATE ####
# but only if the files don't exist for this template already
neighfiles = file.path(templatedir, 'surf', paste(hemis, '.', k, 'neighbors_degree.rds', sep='') )
# (if sequential, or if not sequential and it is the first job) and (if any of the files don't exist)
# then create the files kth neighbors max degree away is 10 neighbors (can be changed above)
# note that when submitting you should make all subsequent jobs wait for the first to finish
if( (job<=1) & any(!sapply(neighfiles, file.exists)) ){
	system(paste(paste(R.home(component = "home"), '/bin/R', sep=''), '--slave --file=/data/jux/BBL/projects/coupling/imcoScripts/surfCoupling/R/kth_neighbors_v2.R --args', templatedir, k) ) 
}

#### CREATE LABELS IF THEY DON'T EXIST YET ####
# these are used to mask the surfaces
masknames = file.path(templatedir, 'label', paste(hemis, 'unknown.label', sep='.') )
ccnames = file.path(templatedir, 'label', paste(hemis, 'corpuscallosum.label', sep='.') )
if( any( ! sapply(c(masknames, ccnames), file.exists) ) ){
	cmds = paste('mri_annotation2label --hemi', hemis, '--subject', template, '--annotation', file.path(templatedir, 'label', paste(hemis, 'aparc.annot', sep='.')), '--outdir', file.path(templatedir, 'label') )
	sapply(cmds, system)
}


#### FUNCTIONS ####
# performs a local (weighted) regression
# weighted by the neighborly distance
lr = function(neighlist = NULL, weights = NULL, df = NULL){
	neighvec = unlist(neighlist)
	nweights = sapply(lapply(neighlist, unlist), length)
	lrweights = rep(weights, nweights)
	subdf = df[ match(neighvec, df$vertex),]
	# NAs are appropriately ignored in this lm call.
	# i.e. vertices close to the edge only include nonartifactual vertices.
	coef(lm( m1 ~ m2, data=subdf, weights=lrweights))[2]
}


# this is going to round out small weights (at 2 decimal places)
# the returned vector will be <= length(vec); reduced by how many
# weights were rounded to 0.
# SNV UPDATE 20150528 - CHANGED TO DIVIDE BY MAX INSTEAD OF SUM
# (so that weighting for center vertex=1)
decayFUN = function(vec, sd=1.5, dec=2) {
	weights = dnorm(vec, sd=sd)
	weights = weights/max(weights)
	weights = round(weights, dec)
	weights = weights[ weights > 0 ]
	weights/max(weights)
}
# END FUNCTIONS

# create the weights we'll be using today
weights = decayFUN(0:k, sd=sd)
nneigh = length(weights)-1 # -1 for the center vertex

# for each subject
# if this is a grid job length(ids)==1.
for(id in ids){
	cat('working on', id, '\n')
	subdir = file.path(sdir, id)
	# loop through hemispheres
	for( hemi in hemis){
		cat(hemi, '\n')

		# template sphere for conversion between file formats
		avgsph = file.path(templatedir, 'surf', paste( hemi, ".sphere", sep='') )
		#print(grep(hemi, masknames, value=TRUE))
		mask = read.table(grep(hemi, masknames, value=TRUE),
			header=FALSE, skip=2, col.names=c('vertex', 'x', 'y', 'z', 'label') )
		#print(grep(hemi, ccnames, value=TRUE))
		cc = read.table(grep(hemi, ccnames, value=TRUE),
			header=FALSE, skip=2, col.names=c('vertex', 'x', 'y', 'z', 'label') )
		mask = rbind(mask, cc)
		rm(cc)

		# files that store neighborly information for up to k distant neighbors
		nt  = readRDS(file.path(templatedir, 'surf', paste(hemi, '.', k, 'neighbors_degree.rds', sep='') ) )
		# output asc file
		outasc = file.path(subdir, 'surf', paste(hemi, paste('coupling_', paste(measures, collapse='_'), '.fwhm', fwhm, sep=''), template, 'asc', sep='.') ) 

		# if the file exists and we are not overwriting then skip
		if(file.exists(outasc) & ! overwrite){
			cat('file exists\n')
			next
		}

		# make file paths for measure 1 and 2. Measure 1 is regressed onto measure 2.
		measurenames = file.path(subdir, 'surf', paste(hemi, measures, template, 'asc', sep='.') )
		# if asc files don't exists for this template, then create them
		if( any(! sapply(measurenames, file.exists) ) ){
			#system(paste('recon-all -qcache -fwhm 0 -s', id, '-target', template, '-measure', measures[1], '-measure', measures[2], '-no-isrunning' ) ) 
			cmds = paste('mris_preproc --s', id, '--hemi', hemi, '--meas', measures, '--target', template, '--out', file.path(subdir, 'surf', paste(hemi, measures, template, 'mgh', sep='.')) )
			cat(cmds, sep='\n')
			lapply(cmds, system)
			system(paste('$FREESURFER_HOME/bin/mris_convert -c', sub('\\.asc', '.mgh', measurenames[1]), avgsph, measurenames[1] ) )
			system(paste('$FREESURFER_HOME/bin/mris_convert -c', sub('\\.asc', '.mgh', measurenames[2]), avgsph, measurenames[2] ) )
		}

		# read in thickness and sulcal depth
		m1 = read.table(measurenames[1], col.names=c('vertex', 'x', 'y', 'z', 'm1'), header=FALSE)
		m2 = read.table(measurenames[2], col.names=c('vertex', 'x', 'y', 'z', 'm2'), header=FALSE)
		ts = merge(m1, m2, sort=FALSE)
		# m1 saved as output file
		rm(list=c('m2'))

		## SNV UPDATE 5/28/2015 -- mask by fsaverage5 template
		# NA locations that are in unknown and corpus collosum labels
		ts [ which( ts$vertex %in% mask$vertex), 'm1' ] = NA

		# performs the local regression
		cat('performing local regressions\n')
		nt$value = NA
		# only for non NA vertices (non 0 measure1)
		nt$value[ which(nt$vertex %in% ts$vertex[which(!is.na(ts$m1)) ]) ] = apply(nt[ which(nt$vertex %in% ts$vertex[which(!is.na(ts$m1)) ] ), c('vertex', paste('neighs', 1:nneigh, sep='')) ], 1,  lr, df=ts, weights=weights)
		# output into empty m1 dataframe
		m1$m1 = NULL
		m1 = merge(m1, nt[, c('vertex', 'value')], all.x=TRUE)
		# this should not be necessary
		m1$value[ is.na(m1$value)] = 0

		cat('writing out', hemi, 'file\n')
		write.table(m1, file=outasc, row.names=FALSE, col.names=FALSE)

		# convert back to curv format
		system(paste('$FREESURFER_HOME/bin/mris_convert -c', outasc, avgsph, sub('\\.asc', '', outasc) ) )
	}
}
