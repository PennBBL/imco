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

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6215_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6215_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/6215")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4617_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4617_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4617")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4295_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4295_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4295")


cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4444_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4444_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4444")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/7631_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/7631_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/7631")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5977_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5977_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/5977")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4640_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4640_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4640")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5791_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5791_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/5791")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6790_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6790_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/6790")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4287_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4287_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4287")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4511_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4511_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4511")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5999_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5999_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/5999")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/7499_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/7499_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/7499")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6249_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6249_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/6249")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4941_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4941_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4941")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4361_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4361_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4361")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4362_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4362_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4362")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4852_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4852_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4852")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4479_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4479_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4479")


cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/8311_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/8311_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/8311")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5945_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5945_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/5945")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4546_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4546_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4546")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5185_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5185_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/5185")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4614_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4614_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4614")


cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4533_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4533_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4533")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4729_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4729_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4729")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4696_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4696_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4696")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4735_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4735_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4735")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4339_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4339_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4339")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4438_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4438_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4438")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6188_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6188_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/6188")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6541_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6541_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/6541")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4636_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4636_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4636")


cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6261_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6261_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/6261")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4418_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4418_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4418")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4575_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4575_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4575")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4653_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4653_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4653")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5161_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5161_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/5161")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4415_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4415_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4415")


cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4611_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4611_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4611")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4576_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4576_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size4_20180209/4576")
