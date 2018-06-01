#!/bin/bash

SUBJECTS_DIR=/data/joy/BBL/studies/pnc/processedData/structural/freesurfer53/
fwhm=15
scripts=/data/jux/BBL/projects/coupling/imcoScripts/surfCoupling/R
#sublist=$scripts/bblid_scanid.txt
sublist=/data/jux/BBL/projects/coupling/imcoScripts/surfCoupling/R/n1.csv
logdir=$scripts/logdirReho-Cbf-3
mkdir $logdir 2>/dev/null
rm -f $logdir/*
queue="himem.q"
time=$(date | cut -d " " -f4 | sed "s+:++g")


nsub=$(cat $sublist | wc -l )
qsub -V -N coupling_$time -t 1 -cwd -o $logdir -e $logdir -q $queue $scripts/cbfRehogrid.sh -s $sublist -f $fwhm -o
qsub -V -t 2-$nsub -cwd -hold_jid coupling_$time -o $logdir -e $logdir -q $queue $scripts/cbfRehogrid.sh -s $sublist -f $fwhm -o
