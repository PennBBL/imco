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

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3321_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3321_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3321")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6676_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6676_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6676")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/8286_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/8286_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/8286")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4467_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4467_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/4467")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/7419_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/7419_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/7419")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3344_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3344_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3344")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4439_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4439_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/4439")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3582_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3582_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3582")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3765_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3765_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3765")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3458_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3458_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3458")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6881_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6881_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6881")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6219_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6219_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6219")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3463_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3463_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3463")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/7865_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/7865_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/7865")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3897_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3897_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3897")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4544_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4544_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/4544")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3798_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3798_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3798")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6703_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6703_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6703")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/8312_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/8312_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/8312")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6846_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6846_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6846")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3596_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3596_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3596")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5190_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5190_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5190")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3714_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3714_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3714")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3435_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3435_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3435")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3362_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3362_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3362")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3907_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3907_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3907")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3493_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3493_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3493")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3703_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3703_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3703")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6865_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6865_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6865")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5481_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5481_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5481")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3372_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3372_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3372")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3432_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3432_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3432")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6730_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6730_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6730")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4756_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4756_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/4756")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6608_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6608_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6608")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3634_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3634_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3634")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4075_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4075_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/4075")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/7870_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/7870_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/7870")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5719_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5719_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5719")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4375_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4375_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/4375")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6597_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6597_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6597")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3883_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3883_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3883")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6153_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6153_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6153")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3567_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3567_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3567")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6749_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6749_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6749")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3490_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3490_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3490")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5916_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5916_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5916")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3683_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3683_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3683")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3711_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3711_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3711")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4030_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4030_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/4030")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4489_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4489_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/4489")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3902_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3902_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3902")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4043_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4043_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/4043")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4253_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4253_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/4253")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4150_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4150_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/4150")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4678_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4678_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/4678")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6987_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6987_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6987")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6872_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6872_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6872")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3725_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3725_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3725")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3895_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3895_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3895")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/7037_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/7037_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/7037")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3523_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3523_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3523")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3918_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3918_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3918")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5554_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5554_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5554")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4031_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4031_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/4031")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4596_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4596_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/4596")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4053_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4053_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/4053")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4944_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4944_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/4944")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3648_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3648_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3648")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4824_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4824_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/4824")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3456_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3456_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3456")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4380_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4380_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/4380")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4945_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4945_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/4945")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4512_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4512_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/4512")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/7439_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/7439_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/7439")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5681_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5681_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5681")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3635_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3635_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3635")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4795_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4795_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/4795")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3430_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3430_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3430")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3633_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3633_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3633")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4478_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4478_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/4478")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3473_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3473_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3473")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3702_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3702_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3702")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/4250_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/4250_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/4250")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6986_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6986_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6986")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5419_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5419_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5419")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/7574_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/7574_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/7574")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/3616_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/3616_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/3616")

