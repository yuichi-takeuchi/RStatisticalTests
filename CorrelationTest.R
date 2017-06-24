setwd("D:/RWD")
rm(list=ls())

#sink(file="blahblah.txt",split=TRUE)
sink(file="Stats_Demo_CorTest.txt",split=TRUE)

cat("CorrelationTest.R\n")

#data <- read.csv("blahblah.csv", header=T)
data <- read.csv("Demo_CorTest.csv", header=T)
cat("\ninput\n")
data

#plot(data)

#cor.test(data$header1, data$header2, alternative="two.sided", method="pearson")
#cor.test(data$header1, data$header2, alternative="two.sided", method="spearman")
#cor.test(data$header1, data$header2, alternative="two.sided", method="kendall")
cor.test(data$group1, data$group2, alternative="two.sided", method="pearson")
sink()