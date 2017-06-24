setwd("D:/RWD")
rm(list=ls())

#sink(file="blahblah.txt",split=TRUE)
sink(file="DemoResults_ChiSquaredTest.txt",split=TRUE)

cat("ChiSquaredTest.R\n")

#data <- read.csv("blahblah.csv", header=T)
data <- read.csv("DemoData_ChiSquaredTest.csv", header=T)
cat("\ninput\n")
data

data <- as.matrix(data)
cat("\nmatrixed\n")
data

chisq.test(data)
sink()