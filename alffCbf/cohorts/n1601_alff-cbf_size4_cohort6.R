.libPaths("/data/jux/BBL/applications/R/libs/ANTsR6/ANTsRCore")
.libPaths("/data/jux/BBL/applications/R/libs/ANTsR6")
.libPaths("/data/jux/BBL/applications/R/libs/ANTsR6/extrantsr")
.libPaths("/data/jux/BBL/applications/R/libs/ANTsR6/rlist")

library("ANTsRCore", lib.loc="/data/jux/BBL/applications/R/libs/ANTsR6")
library("ANTsR", lib.loc="/data/jux/BBL/applications/R/libs/ANTsR6")
library("extrantsr", lib.loc="/data/jux/BBL/applications/R/libs/ANTsR6")
library("rlist", lib.loc="/data/jux/BBL/applications/R/libs/ANTsR6")
library(mime)

source("/data/jux/BBL/projects/coupling/scripts/alff_cbf_scripts/get_weights.R")
source("/data/jux/BBL/projects/coupling/scripts/alff_cbf_scripts/imco_pca.R")
source("/data/jux/BBL/projects/coupling/scripts/alff_cbf_scripts/imco.R")
source("/data/jux/BBL/projects/coupling/scripts/alff_cbf_scripts/imco_reg.R")
source("/data/jux/BBL/projects/coupling/scripts/alff_cbf_scripts/imco_single.R")
source("/data/jux/BBL/projects/coupling/scripts/alff_cbf_scripts/make_ants_image.R")
source("/data/jux/BBL/projects/coupling/scripts/alff_cbf_scripts/weighted_slr.R")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3817_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3817_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/3817")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/7869_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/7869_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/7869")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3953_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3953_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/3953")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/7503_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/7503_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/7503")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5332_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5332_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/5332")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5588_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5588_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/5588")


cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4266_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4266_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4266")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4338_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4338_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4338")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/7265_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/7265_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/7265")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4073_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4073_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4073")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3822_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3822_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/3822")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5224_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5224_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/5224")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3736_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3736_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/3736")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5720_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5720_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/5720")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3916_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3916_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/3916")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5319_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5319_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/5319")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4638_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4638_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4638")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4045_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4045_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4045")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6457_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6457_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/6457")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4650_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4650_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4650")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4152_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4152_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4152")



cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4899_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4899_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4899")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3906_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3906_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/3906")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5992_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5992_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/5992")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3928_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3928_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/3928")


cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3911_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3911_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/3911")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5416_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5416_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/5416")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4281_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4281_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4281")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5237_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5237_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/5237")


cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4001_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4001_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4001")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4908_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4908_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4908")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/7434_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/7434_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/7434")


cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5902_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5902_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/5902")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4064_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4064_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4064")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/7703_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/7703_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/7703")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5591_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5591_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/5591")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/8138_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/8138_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/8138")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4570_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4570_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4570")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4906_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4906_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4906")
