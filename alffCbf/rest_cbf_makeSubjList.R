# Load in files 
pcaslQA <- read.csv("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/n1601_PcaslQaData_20170403.csv") 
restQA <- read.csv("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/n1601_RestQAData_20170714.csv")
t1QA <- read.csv("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/t1struct/n1601_t1QaData_20170306.csv")
healthQA <- read.csv("/data/joy/BBL/studies/pnc/n1601_dataFreeze/health/n1601_health_20170421.csv")

# T1 and LTN subsets
t1QA <- subset(t1QA, select = c("bblid","scanid","t1Exclude"))
healthQA <- subset(healthQA, select = c("bblid","scanid","ltnExcludev2"))

# CBF sample
## Merge all CBF QA files
pcaslQA <- subset(pcaslQA, select = c("bblid","scanid","pcaslVoxelwiseExclude"))
pcaslQa_t1 <- merge(pcaslQA, t1QA, by=c("bblid","scanid"))
pcaslQa_t1_health <- merge(pcaslQa_t1, healthQA, by=c("bblid","scanid"))

## Apply exclusions to CBF
pcasl_exclude <- pcaslQa_t1_health[!grepl("1", pcaslQa_t1_health$pcaslVoxelwiseExclude),]
pcasl_t1_exclude <- pcasl_exclude[!grepl("1", pcasl_exclude$t1Exclude),]
pcasl_t1_health_exclude <- pcasl_t1_exclude[!grepl("1", pcasl_t1_exclude$ltnExcludev2),]
pcasl_final <- subset(pcasl_t1_health_exclude, select = c("bblid","scanid"))

# Rest sample
## Merge all rest QA files
restQA <- subset(restQA, select = c("bblid","scanid","restExcludeVoxelwise"))
restQa_t1 <- merge(restQA, t1QA, by=c("bblid","scanid"))
restQa_t1_health <- merge(restQa_t1, healthQA, by=c("bblid","scanid"))

## Apply exclusions to rest
rest_exclude <- restQa_t1_health[!grepl("1", restQa_t1_health$restExcludeVoxelwise),]
rest_t1_exclude <- rest_exclude[!grepl("1", rest_exclude$t1Exclude),]
rest_t1_health_exclude <- rest_t1_exclude[!grepl("1", rest_t1_exclude$ltnExcludev2),]
rest_final <- subset(rest_t1_health_exclude, select = c("bblid","scanid"))

# Write out subject list
write.csv(pcasl_final,"/data/jux/BBL/projects/coupling/subjectsLists/n1132_cbf_subjList.csv",row.names=FALSE)
write.csv(rest_final,"/data/jux/BBL/projects/coupling/subjectsLists/n869_rest_subjList.csv",row.names=FALSE)
