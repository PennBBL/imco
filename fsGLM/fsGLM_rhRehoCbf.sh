#----------------------------------#
# Lauren Beard | RH Reho-Cbf fsGLM #
#----------------------------------#

#! /bin/bash

# Set directories
data=/data/jux/BBL/projects/coupling/subjectsLists/n831_rest_cbf_finalSample_imageOrder.csv
scriptsdir=/data/jux/BBL/projects/coupling/imcoScripts/surfCoupling/groupAnalysis
export SUBJECTS_DIR=/data/joy/BBL/studies/pnc/processedData/structural/freesurfer53

# TUTORIAL USER EDIT THIS PATH
homedir=/data/jux/BBL/projects/coupling/imcoScripts/surfCoupling/groupAnalysis/rhrehoCbf

# place where output is stored
outdir=$homedir
mkdir $homedir/designs
logdir=$homedir/logs
rm -f $logdir/*


# Set parameters
meas=coupling_coef_reho_cbf.fwhm15.fsaverage5
fwhm=15
template=fsaverage5
hemi=rh


# Create model
# for lm you have to write all terms of interaction, e.g. age + sex + age:sex
# used as argument for R script. since it's a string it must be in quotes (twice).
lm='"~ ageAtScan1 + sex + pcaslRelMeanRMSMotion + restRelMeanRMSMotion"' 


# Get number and order of subjects
n=$(cat $data | wc -l)
n=$(echo "$n - 1" | bc)


# Set model name
name=$(echo $lm | sed "s/~//g" | sed "s/\"//g" | sed "s/ //g" | sed "s/+/_/g" | sed "s/:/BY/g" | sed "s/1/mean/g" )
echo $name
model=n${n}.$meas.$name.fwhm$fwhm.$template


## Set where design files are stored
mkdir $outdir/designs/$model 
wd=$outdir/designs/$model
# where model results are written
mkdir $outdir/$hemi.$model


# Create design matrix and contrast matrices
Rvar=$(which R)
$Rvar --slave --file=$scriptsdir/designMatrix.R --args "$lm" "$data" "$wd"


# Create image file to be analyzed (data are not smoothed at this point)
subjs=""
for sub in $(cat $wd/subjlist.txt); do
	subjs=$(echo $subjs --s $sub)
done

rm /home/lbeard/concatTest/*

# Concatenate all surface files
for i in $(cat $homedir/designs/n831.coupling_coef_reho_cbf.fwhm15.fsaverage5.ageAtScanmean_sex_pcaslRelMeanRMSMotion_restRelMeanRMSMotion.fwhm15.fsaverage5/subjlist.txt);do
	bblid=`echo "$i" | awk -F '/' '{print $1}'`
	datexscanid=`echo "$i" | awk -F '/' '{print $2}'`
	cp /data/jux/BBL/projects/coupling/couplingSurfaceMaps/rehoCbf/rh/surf/${bblid}_${datexscanid}_rh.coupling_coef_reho_cbf.fwhm15.fsaverage5 /home/lbeard/concatTest
done

mri_concat  ~/concatTest/*rh.coupling_coef_reho_cbf.fwhm15.fsaverage5 --o $homedir/$hemi.$meas.$template.n$n.mgh


# Set contrasts
cons=""
for i in $(ls $wd/contrast*.mat); do
	cons=$(echo "$cons --C $i ")
done


# Store this file as a log file
cp $scriptsdir/fsGLM.sh $wd
cp $data $wd


# Run the model
if [ -e "$homedir/$hemi.$meas.$template.n$n.mgh" ]; then
	mri_glmfit --glmdir $outdir/$hemi.$model --y $homedir/$hemi.$meas.$template.n$n.mgh  --X $wd/X.mat $cons --surf $template $hemi --save-yhat
	# remove fwhm bc already smoothed
	for img in $(ls $outdir/$hemi.$model/contrast*/sig.mgh); do
		output=$(dirname $img)
		mri_surfcluster --in $img --subject $template --fdr 0.05 --hemi $hemi --ocn $output/cluster.id.p05fdr.mgh --o $output/cluster.sig.p05fdr.mgh --sum $output/cluster.sum.p05fdr.txt
		mri_surfcluster --in $img --subject $template --fdr 0.01 --hemi $hemi --ocn $output/cluster.id.p01fdr.mgh --o $output/cluster.sig.p01fdr.mgh --sum $output/cluster.sum.p01fdr.txt
		mris_convert -c $output/cluster.id.p05fdr.mgh $SUBJECTS_DIR/$template/surf/$hemi.sphere $output/cluster.id.p05fdr.asc
		mris_convert -c $output/cluster.id.p01fdr.mgh $SUBJECTS_DIR/$template/surf/$hemi.sphere $output/cluster.id.p01fdr.asc
	done
	mris_convert -c $outdir/$hemi.$model/yhat.mgh $SUBJECTS_DIR/$template/surf/$hemi.sphere $outdir/$hemi.$model/yhat.asc
	mris_convert -c $outdir/$hemi.$model/rvar.mgh $SUBJECTS_DIR/$template/surf/$hemi.sphere $outdir/$hemi.$model/rvar.asc
	cp $homedir/$hemi.$meas.$template.n$n.mgh  $outdir/$hemi.$model
fi
