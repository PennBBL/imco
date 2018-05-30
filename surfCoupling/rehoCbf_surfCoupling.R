#------------------------#
# REHO-CBF SURF COUPLING #
#------------------------#

# read in packages
library(plyr)

# read in demos
rehoCbf_subjects <- read.csv("/data/jux/BBL/projects/coupling/subjectsLists/n1400_bblid_datexscanid.csv")
demos <- read.csv("/data/jux/BBL/projects/coupling/subjectsLists/n1601_demographics_go1_20161212.csv")
cbfQa <- read.csv("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/n1601_PcaslQaData_20170403.csv")
restQa <- read.csv("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/n1601_RestQAData_20170714.csv")

# subset csvs
demos <- subset(demos, select = c("bblid","scanid","ageAtScan1","sex"))
cbfQa <- subset(cbfQa, select = c("bblid","scanid","pcaslRelMeanRMSMotion"))
restQa <- subset(restQa, select = c("bblid","scanid","restRelMeanRMSMotion"))

# join csvs
rehoCbf_subjDemos_orig <- join(rehoCbf_subjects,demos)
rehoCbf_subjDemos_cbfQa <- join(rehoCbf_subjDemos_orig,cbfQa)
rehoCbf_subjDemos_cbfQa_restQa <- join(rehoCbf_subjDemos_cbfQa,restQa)
rehoCbf_subjDemos <- as.data.frame(rehoCbf_subjDemos_cbfQa_restQa)
rehoCbf_subjDemos <- rehoCbf_subjDemos[complete.cases(rehoCbf_subjDemos),]
rehoCbf_subjDemos$ageAtScan1 <- (rehoCbf_subjDemos$ageAtScan1)/12
rehoCbf_subjDemos$sex <- as.factor(rehoCbf_subjDemos$sex)

# get all files
setwd("/data/jux/BBL/projects/coupling/couplingSurfaceMaps/rehoCbf/lh/stat")
lh_rehoCbf_files = list.files(pattern="*.asc")
lh_rehoCbf_data = do.call(rbind, lapply(lh_rehoCbf_files, function(x) read.table(x, stringsAsFactors = FALSE)))
lh_rehoCbf_coupling <- as.data.frame(lh_rehoCbf_data$V5)
lh_rehoCbf_coupling_n <- t(as.data.frame(split(lh_rehoCbf_coupling,1:1400)))

# get all files
setwd("/data/jux/BBL/projects/coupling/couplingSurfaceMaps/rehoCbf/rh/stat")
rh_rehoCbf_files = list.files(pattern="*.asc")
rh_rehoCbf_data = do.call(rbind, lapply(rh_rehoCbf_files, function(x) read.table(x, stringsAsFactors = FALSE)))
rh_rehoCbf_coupling <- as.data.frame(rh_rehoCbf_data$V5)
rh_rehoCbf_coupling_n <- t(as.data.frame(split(rh_rehoCbf_coupling,1:1400)))

# run model
for (i in 1:10242) {
  lh_rehoCbf_agemodel <- lm(lh_rehoCbf_coupling_n[,i] ~ ageAtScan1, data=rehoCbf_subjDemos)
  lh_rehoCbf_ageSexmodel <- lm(lh_rehoCbf_coupling_n[,i] ~ ageAtScan1 + sex, data=rehoCbf_subjDemos)
  lh_rehoCbf_ageSex_qaModel <- lm(lh_rehoCbf_coupling_n[,i] ~ ageAtScan1 + sex + pcaslRelMeanRMSMotion + restRelMeanRMSMotion, data=rehoCbf_subjDemos)
}

for (i in 1:10242) {
  rh_rehoCbf_agemodel <- lm(rh_rehoCbf_coupling_n[,i] ~ ageAtScan1, data=rehoCbf_subjDemos)
  rh_rehoCbf_ageSexmodel <- lm(rh_rehoCbf_coupling_n[,i] ~ ageAtScan1 + sex, data=rehoCbf_subjDemos)
  rh_rehoCbf_ageSex_qaModel <- lm(rh_rehoCbf_coupling_n[,i] ~ ageAtScan1 + sex + pcaslRelMeanRMSMotion + restRelMeanRMSMotion, data=rehoCbf_subjDemos)
}

# print out summary results
summary(lh_rehoCbf_agemodel)
summary(lh_rehoCbf_ageSexmodel)
summary(lh_rehoCbf_ageSex_qaModel)
summary(rh_rehoCbf_agemodel)
summary(rh_rehoCbf_ageSexmodel)
summary(lh_rehoCbf_ageSex_qaModel)
