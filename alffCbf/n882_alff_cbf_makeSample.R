# Load in files
missingASL <- read.csv("/data/jux/BBL/projects/coupling/subjectsLists/aslDNE.csv")
missingALFF <- read.csv("/data/jux/BBL/projects/coupling/subjectsLists/alffDNE.csv") 
pcaslQA <- read.csv("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/asl/n1601_PcaslQaData_20170403.csv") 
restQA <- read.csv("/data/joy/BBL/studies/pnc/n1601_dataFreeze/neuroimaging/rest/n1601_RestQAData_20170714.csv")
healthQA <- read.csv("/data/joy/BBL/studies/pnc/n1601_dataFreeze/health/n1601_health_20170421.csv")
subjectScanids <- read.csv("/data/jux/BBL/projects/coupling/subjectsLists/n1401_scanids_imcoNoQA.csv")
demos <- read.csv("/data/joy/BBL/studies/pnc/n1601_dataFreeze/demographics/n1601_demographics_go1_20161212.csv")

# Subset for QA
pcaslQA <- subset(pcaslQA, select = c("bblid","scanid","pcaslExclude"))
restQA <- subset(restQA, select = c("bblid","scanid","restExclude"))
healthQA <- subset(healthQA, select = c("bblid","scanid","ltnExcludev2"))
qa <- merge(pcaslQA, restQA, by=c("bblid","scanid"))
qa <- merge(healthQA, qa, by=c("bblid","scanid"))

# Get final sample
samplePreQA <- merge(subjectScanids,qa,by="scanid")
sampleRestQA <- samplePreQA[!grepl("1", samplePreQA$restExclude),]
sampleRest.PcaslQA <- sampleRestQA[!grepl("1", sampleRestQA$pcaslExclude),]
sampleAllQA <- sampleRest.PcaslQA[!grepl("1", sampleRest.PcaslQA$ltnExcludev2),]

# Merge with demographics
final <- merge(demos, sampleAllQA, by = c("bblid","scanid"))
final$ageAtScan1 <- (final$ageAtScan1)/12
final$sex <- as.factor(final$sex)
final$race <- as.factor(final$race)
final$race2 <- as.factor(final$race2)

# Write out final demographics
saveRDS(final,"/data/jux/BBL/projects/coupling/subjectsLists/n882_alff_cbf_finalSample.rds")
write.csv(final,"/data/jux/BBL/projects/coupling/subjectsLists/n882_alff_cbf_finalSample.csv",row.names=FALSE)
