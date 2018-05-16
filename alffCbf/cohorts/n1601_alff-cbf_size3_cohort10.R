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

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/8167_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/8167_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/8167")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5874_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5874_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/5874")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6286_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6286_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6286")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6429_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6429_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6429")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6544_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6544_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6544")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6391_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6391_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6391")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6460_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6460_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6460")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6529_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6529_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6529")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6369_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6369_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6369")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6200_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6200_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6200")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/8256_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/8256_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/8256")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6639_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6639_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6639")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6025_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6025_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6025")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6116_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6116_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6116")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6415_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6415_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6415")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6242_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6242_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6242")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6637_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6637_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6637")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6066_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6066_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6066")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6129_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6129_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6129")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6295_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6295_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6295")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/8108_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/8108_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/8108")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6251_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6251_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6251")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6497_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6497_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6497")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6182_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6182_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6182")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6540_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6540_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6540")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6075_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6075_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6075")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6702_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6702_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6702")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/8340_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/8340_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/8340")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6294_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6294_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6294")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6241_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6241_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6241")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6326_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6326_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6326")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6433_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6433_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6433")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6610_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6610_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6610")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6186_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6186_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6186")

#cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6699_asl_quant_ssT1Std.nii.gz")
#alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6699_alffStd.nii.gz")
#maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

#fls = list()
#fls[[1]] = alffNorm
#fls[[2]] = cbfNorm

#imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6699")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6260_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6260_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6260")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6323_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6323_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6323")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6351_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6351_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6351")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6324_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6324_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6324")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6489_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6489_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6489")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6473_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6473_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6473")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6393_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6393_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6393")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6353_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6353_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6353")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6360_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6360_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6360")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6439_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6439_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6439")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6402_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6402_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6402")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6388_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6388_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6388")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6414_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6414_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6414")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6352_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6352_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6352")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6498_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6498_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6498")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6698_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6698_alffStd.nii.gz")
maskImg <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/pncTemplate/pnc_template_brain_mask_2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=3, thresh=0.005, radius=3, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf_size3_20180209/6698")
