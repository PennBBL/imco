# sets up coupling scripts
# and required packages

# install required package
install.packages('optparse', repo='http://cran.us.r-project.org')

# make freesurfer R directory
fshome = Sys.getenv('FREESURFER_HOME')
Rfiles = file.path(fshome, 'R')
system(paste('mkdir', Rfiles) )
files = list.files(pattern="coupling.*R|kth_neighbors.*R")

# edit shebang to source this version of R
couplingscripts=grep('coupling.*R$', files, value=TRUE)
file.rename(couplingscripts[length(couplingscripts)], 'temp.txt')
Rbin = file.path(R.home(component = "bin"), 'Rscript')
#system(paste('chmod 755', grep('/coupling.*R$', outfiles, value=TRUE) ) )
system(paste('sed', paste('"s', '###SHEBANG###', Rbin, 'g"', sep='+'), 'temp.txt>', couplingscripts[ length(couplingscripts) ] ) )

# copy scripts to freesurfer homedir
outfiles = file.path(Rfiles, files)
cmds = paste('rm -f', outfiles)
sapply(cmds, system)
cmds = paste('cp', files, outfiles)
sapply(cmds, system)
cmds = paste('chmod 755', files, outfiles)
sapply(cmds, system)


