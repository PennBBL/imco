#1
for i in $(cat /data/jux/BBL/projects/coupling/scripts/alff_cbf_scripts/cohort1.csv); do 

scanid=`echo "$i"`

echo "cbfNorm <- antsImageRead(/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/${scanid}_asl_quant_ssT1Std.nii.gz)
alffNorm <- antsImageRead(/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/${scanid}_alffStd.nii.gz)
maskImg <- antsImageRead("/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir=/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/${scanid})" >> n1601_alff-cbf_size3_cohort1.R

done

#2
for i in $(cat /data/jux/BBL/projects/coupling/scripts/alff_cbf_scripts/cohort2.csv); do 

scanid=`echo "$i"`

echo "cbfNorm <- antsImageRead(/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/${scanid}_asl_quant_ssT1Std.nii.gz)
alffNorm <- antsImageRead(/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/${scanid}_alffStd.nii.gz)
maskImg <- antsImageRead("/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir=/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/${scanid})" >> n1601_alff-cbf_size3_cohort2.R

done

#3
for i in $(cat /data/jux/BBL/projects/coupling/scripts/alff_cbf_scripts/cohort3.csv); do 

scanid=`echo "$i"`

echo "cbfNorm <- antsImageRead(/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/${scanid}_asl_quant_ssT1Std.nii.gz)
alffNorm <- antsImageRead(/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/${scanid}_alffStd.nii.gz)
maskImg <- antsImageRead("/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir=/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/${scanid})" >> n1601_alff-cbf_size3_cohort3.R

done

#4
for i in $(cat /data/jux/BBL/projects/coupling/scripts/alff_cbf_scripts/cohort4.csv); do 

scanid=`echo "$i"`

echo "cbfNorm <- antsImageRead(/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/${scanid}_asl_quant_ssT1Std.nii.gz)
alffNorm <- antsImageRead(/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/${scanid}_alffStd.nii.gz)
maskImg <- antsImageRead("/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir=/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/${scanid})" >> n1601_alff-cbf_size3_cohort4.R

done

#5
for i in $(cat /data/jux/BBL/projects/coupling/scripts/alff_cbf_scripts/cohort5.csv); do 

scanid=`echo "$i"`

echo "cbfNorm <- antsImageRead(/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/${scanid}_asl_quant_ssT1Std.nii.gz)
alffNorm <- antsImageRead(/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/${scanid}_alffStd.nii.gz)
maskImg <- antsImageRead("/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir=/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/${scanid})" >> n1601_alff-cbf_size3_cohort5.R

done

#6
for i in $(cat /data/jux/BBL/projects/coupling/scripts/alff_cbf_scripts/cohort6.csv); do 

scanid=`echo "$i"`

echo "cbfNorm <- antsImageRead(/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/${scanid}_asl_quant_ssT1Std.nii.gz)
alffNorm <- antsImageRead(/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/${scanid}_alffStd.nii.gz)
maskImg <- antsImageRead("/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir=/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/${scanid})" >> n1601_alff-cbf_size3_cohort6.R

done

#7
for i in $(cat /data/jux/BBL/projects/coupling/scripts/alff_cbf_scripts/cohort7.csv); do 

scanid=`echo "$i"`

echo "cbfNorm <- antsImageRead(/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/${scanid}_asl_quant_ssT1Std.nii.gz)
alffNorm <- antsImageRead(/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/${scanid}_alffStd.nii.gz)
maskImg <- antsImageRead("/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir=/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/${scanid})" >> n1601_alff-cbf_size3_cohort7.R

done

#8
for i in $(cat /data/jux/BBL/projects/coupling/scripts/alff_cbf_scripts/cohort8.csv); do 

scanid=`echo "$i"`

echo "cbfNorm <- antsImageRead(/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/${scanid}_asl_quant_ssT1Std.nii.gz)
alffNorm <- antsImageRead(/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/${scanid}_alffStd.nii.gz)
maskImg <- antsImageRead("/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir=/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/${scanid})" >> n1601_alff-cbf_size3_cohort8.R

done

#9
for i in $(cat /data/jux/BBL/projects/coupling/scripts/alff_cbf_scripts/cohort9.csv); do 

scanid=`echo "$i"`

echo "cbfNorm <- antsImageRead(/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/${scanid}_asl_quant_ssT1Std.nii.gz)
alffNorm <- antsImageRead(/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/${scanid}_alffStd.nii.gz)
maskImg <- antsImageRead("/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir=/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/${scanid})" >> n1601_alff-cbf_size3_cohort9.R

done

#10
for i in $(cat /data/jux/BBL/projects/coupling/scripts/alff_cbf_scripts/cohort10.csv); do 

scanid=`echo "$i"`

echo "cbfNorm <- antsImageRead(/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/${scanid}_asl_quant_ssT1Std.nii.gz)
alffNorm <- antsImageRead(/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/${scanid}_alffStd.nii.gz)
maskImg <- antsImageRead("/data/jux/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir=/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/${scanid})" >> n1601_alff-cbf_size3_cohort10.R

done
