# Load in files 
pcaslQA <- read.csv("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/n1601_PcaslQaData_20170403.csv") 
restQA <- read.csv("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/n1601_RestQAData_20170714.csv")
t1QA <- read.csv("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/t1struct/n1601_t1QaData_20170306.csv")
healthQA <- read.csv("/data/joy/BBL/studies/pnc/n1601_dataFreeze/health/n1601_health_20170421.csv")
demos <- read.csv("/data/joy/BBL/studies/pnc/n1601_dataFreeze/demographics/n1601_demographics_go1_20161212.csv")
datexscan <- read.csv("/data/jux/BBL/projects/coupling/subjectsLists/n1601_bblid_datexscanid.csv")
order <- read.csv("/data/jux/BBL/projects/coupling/subjectsLists/n831_imageOrder.csv")

# T1 and LTN subsets
t1QA <- subset(t1QA, select = c("bblid","scanid","t1Exclude"))
healthQA <- subset(healthQA, select = c("bblid","scanid","ltnExcludev2"))

# CBF sample
## Merge all CBF QA files
pcaslQA <- subset(pcaslQA, select = c("bblid","scanid","pcaslVoxelwiseExclude","pcaslRelMeanRMSMotion"))
pcaslQa_t1 <- merge(pcaslQA, t1QA, by=c("bblid","scanid"))
pcaslQa_t1_health <- merge(pcaslQa_t1, healthQA, by=c("bblid","scanid"))

## Apply exclusions to CBF
pcasl_exclude <- pcaslQa_t1_health[!grepl("1", pcaslQa_t1_health$pcaslVoxelwiseExclude),]
pcasl_t1_exclude <- pcasl_exclude[!grepl("1", pcasl_exclude$t1Exclude),]
pcasl_t1_health_exclude <- pcasl_t1_exclude[!grepl("1", pcasl_t1_exclude$ltnExcludev2),]
pcasl_final <- subset(pcasl_t1_health_exclude, select = c("bblid","scanid","pcaslRelMeanRMSMotion"))

# Rest sample
## Merge all rest QA files
restQA <- subset(restQA, select = c("bblid","scanid","restExcludeVoxelwise","restRelMeanRMSMotion"))
restQa_t1 <- merge(restQA, t1QA, by=c("bblid","scanid"))
restQa_t1_health <- merge(restQa_t1, healthQA, by=c("bblid","scanid"))

## Apply exclusions to rest
rest_exclude <- restQa_t1_health[!grepl("1", restQa_t1_health$restExcludeVoxelwise),]
rest_t1_exclude <- rest_exclude[!grepl("1", rest_exclude$t1Exclude),]
rest_t1_health_exclude <- rest_t1_exclude[!grepl("1", rest_t1_exclude$ltnExcludev2),]
rest_final <- subset(rest_t1_health_exclude, select = c("bblid","scanid","restRelMeanRMSMotion"))

# Get final overall sample
final_sample <- merge(rest_final, pcasl_final, by=c("bblid","scanid"))

# Merge with demographics
final <- merge(demos, final_sample, by = c("bblid","scanid"))
final <- merge(datexscan, final, by="bblid")

## Clean demos
final$ageAtScan1 <- (final$ageAtScan1)/12
final$sex <- as.factor(final$sex)
final$race <- as.factor(final$race)
final$race2 <- as.factor(final$race2)

# Get correct image order for GLM
finalOrdered <- merge(order,final,by=c("bblid","datexscanid"))

# Write out final demos for sample
write.csv(finalOrdered,"/data/jux/BBL/projects/coupling/subjectsLists/n831_alff_cbf_finalSample.csv",row.names=FALSE)
