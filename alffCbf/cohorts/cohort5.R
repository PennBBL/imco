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

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5391_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5391_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5391")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6536_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6536_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6536")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6355_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6355_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6355")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5469_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5469_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5469")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/7736_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/7736_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/7736")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6370_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6370_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6370")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5516_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5516_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5516")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5572_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5572_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5572")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5836_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5836_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5836")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/7484_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/7484_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/7484")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5340_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5340_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5340")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5480_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5480_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5480")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6201_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6201_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6201")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5980_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5980_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5980")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5495_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5495_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5495")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5596_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5596_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5596")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6535_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6535_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6535")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5642_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5642_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5642")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5494_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5494_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5494")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6580_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6580_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6580")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5464_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5464_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5464")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/8290_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/8290_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/8290")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6389_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6389_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6389")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5788_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5788_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5788")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5882_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5882_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5882")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6296_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6296_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6296")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5544_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5544_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5544")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5686_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5686_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5686")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5954_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5954_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5954")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6680_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6680_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6680")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5812_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5812_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5812")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6120_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6120_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6120")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5590_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5590_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5590")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5551_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5551_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5551")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6609_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6609_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6609")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5545_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5545_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5545")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5876_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5876_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5876")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6526_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6526_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6526")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5658_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5658_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5658")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5546_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5546_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5546")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5947_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5947_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5947")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6018_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6018_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6018")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6329_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6329_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6329")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6029_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6029_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6029")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/8425_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/8425_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/8425")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/8435_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/8435_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/8435")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/8469_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/8469_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/8469")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/8443_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/8443_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/8443")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/8394_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/8394_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/8394")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5848_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5848_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5848")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6465_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6465_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6465")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5910_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5910_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5910")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6189_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6189_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6189")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6358_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6358_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6358")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6151_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6151_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6151")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6335_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6335_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6335")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5957_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5957_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5957")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6070_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6070_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6070")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6530_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6530_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6530")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5983_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5983_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5983")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6805_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6805_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6805")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6068_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6068_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6068")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/8327_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/8327_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/8327")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6083_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6083_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6083")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/5985_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/5985_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/5985")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6024_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6024_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6024")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6155_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6155_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6155")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6506_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6506_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6506")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6417_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6417_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6417")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6041_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6041_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6041")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6190_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6190_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6190")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6173_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6173_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6173")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/8167_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/8167_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/8167")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6429_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6429_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6429")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6544_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6544_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6544")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6460_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6460_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6460")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6200_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6200_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6200")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/8256_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/8256_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/8256")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6639_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6639_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6639")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6025_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6025_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6025")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6242_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6242_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6242")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6637_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6637_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6637")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6066_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6066_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6066")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6129_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6129_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6129")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/8108_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/8108_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/8108")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6182_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6182_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6182")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6540_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6540_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6540")

cbfNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/voxelwiseMaps_cbf/6702_asl_quant_ssT1Std.nii.gz")
alffNorm <- antsImageRead("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/voxelwiseMaps_alff/6702_alffStd.nii.gz")
maskImg <- antsImageRead("/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_outputMaps/gmVals2mm.nii.gz")

fls = list()
fls[[1]] = alffNorm
fls[[2]] = cbfNorm

imco(files = fls, brainMask = maskImg,subMask=NULL, type="regression", ref=1, fwhm=4, thresh=0.005, radius=4, reverse=FALSE, verbose=TRUE, retimg=FALSE,outDir="/data/jux/BBL/projects/coupling/alff_cbf/alff_cbf_size4_rep/6702")

