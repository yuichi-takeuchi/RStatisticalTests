setwd("D:/RWD")
rm(list=ls())

#sink(file="blahblah.txt",split=TRUE)
sink(file="Stats_Demo_TwoSampleTest.txt",split=TRUE)

cat("TwoSampleTest.R\n")

#data <- read.csv("blahblah.csv", header=T)
data <- read.csv("Demo_TwoSampleTest.csv", header=T)
cat("\ninput\n")
data
cat("\n")

summary(data)
cat("\nstandard deviation\n")
cat("group1")
sd(data$group1)
cat("group2")
sd(data$group2)

cat("\nNon-paired Two Sample Tests\n")

#stripchart(data, method="stack", pch=1)
#var.test(data$header1, data$header2, alternative="two.sided")
var.test(data$group1, data$group2, alternative="two.sided")
#t.test(data$header1, data$header2, paired=F, alternative="two.sided", var.equal=T)
t.test(data$group1, data$group2, paired=F, alternative="two.sided", var.equal=T)
#t.test(data$header1, data$header2, paired=F, alternative="two.sided", var.equal=F)
t.test(data$group1, data$group2, paired=F, alternative="two.sided", var.equal=F)
#wilcox.test(data$header1, data$header2, paired=F, alternative="two.sided")
wilcox.test(data$group1, data$group2, paired=F, alternative="two.sided")
#ks.test(data$header1, data$header2, alternative="two.sided", exact=NULL)
ks.test(data$group1, data$group2, lternative="two.sided", exact=NULL)

sink()