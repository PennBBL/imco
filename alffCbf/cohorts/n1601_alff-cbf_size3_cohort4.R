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

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3894_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3894_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/3894")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4676_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4676_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4676")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4487_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4487_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4487")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/7501_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/7501_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/7501")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4608_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4608_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4608")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4046_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4046_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4046")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3904_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3904_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/3904")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4173_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4173_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4173")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3903_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3903_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/3903")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4220_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4220_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4220")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4271_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4271_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4271")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5751_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5751_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/5751")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4139_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4139_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4139")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6432_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6432_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6432")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4041_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4041_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4041")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3638_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3638_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/3638")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4010_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4010_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4010")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4488_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4488_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4488")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3709_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3709_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/3709")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6157_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6157_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6157")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4545_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4545_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4545")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4119_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4119_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4119")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4072_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4072_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4072")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3998_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3998_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/3998")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4201_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4201_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4201")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4038_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4038_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4038")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4284_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4284_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4284")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6150_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6150_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6150")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4094_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4094_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4094")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4982_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4982_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4982")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6101_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6101_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6101")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4278_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4278_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4278")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4861_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4861_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4861")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4812_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4812_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4812")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4193_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4193_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4193")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3529_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3529_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/3529")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4332_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4332_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4332")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4989_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4989_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4989")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6505_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6505_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6505")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5946_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5946_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/5946")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3600_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3600_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/3600")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3668_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3668_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/3668")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6115_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6115_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6115")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4449_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4449_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4449")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5261_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5261_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/5261")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3934_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3934_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/3934")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/8419_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/8419_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/8419")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6002_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6002_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6002")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3500_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3500_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/3500")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4127_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4127_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4127")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6254_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6254_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6254")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3973_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3973_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/3973")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4343_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4343_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4343")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5023_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5023_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/5023")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5748_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5748_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/5748")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4817_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4817_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4817")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3898_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3898_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/3898")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4138_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4138_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4138")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4943_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4943_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4943")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6239_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6239_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6239")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6086_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6086_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6086")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4685_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4685_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4685")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4639_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4639_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4639")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5595_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5595_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/5595")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4988_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4988_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4988")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3681_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3681_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/3681")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5512_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5512_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/5512")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5015_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5015_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/5015")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5150_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5150_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/5150")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4708_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4708_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4708")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4373_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4373_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4373")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4331_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4331_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4331")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3960_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3960_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/3960")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4245_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4245_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4245")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6221_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6221_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6221")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4252_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4252_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4252")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4897_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4897_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4897")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3957_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3957_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/3957")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4414_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4414_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4414")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3793_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3793_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/3793")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5226_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5226_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/5226")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4996_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4996_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4996")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4558_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4558_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4558")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3825_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3825_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/3825")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3583_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3583_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/3583")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6397_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6397_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6397")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6844_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6844_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6844")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4279_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4279_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4279")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6875_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6875_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6875")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3856_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3856_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/3856")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4637_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4637_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4637")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4400_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4400_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4400")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3912_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3912_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/3912")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5193_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5193_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/5193")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4686_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4686_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4686")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4125_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4125_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4125")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4443_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4443_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/4443")
