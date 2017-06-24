setwd("D:/RWD")
rm(list=ls())

sink(file="Stats_Demo_TwoWayANOVA.txt",split=TRUE)

data <- read.csv("Demo_TwoWayANOVA.csv", header=T)

cat("TwoWayANOVA.R\n")
cat("\ninput\n")
data

cat("\ncontrol summary\n")
ctrldata <- data[data$Operation == "control",]
summary(ctrldata$Value)

cat("\noperated summary\n")
opedata <- data[data$Operation == "operated",]
summary(opedata$Value)

cat("\nsd\n")
tapply(data$Value, data$Operation, sd)

cat("\nDifferences between animals\n")
cat("control\n")
ctrlAnimal <- factor(ctrldata$Animal)
#cat("mean\n")
#mean(tapply(ctrldata$Value, ctrlAnimal, mean, na.rm=TRUE))
cat("One-way ANOVA\n")
summary(aov(ctrldata$Value~ctrlAnimal))

cat("\noperated\n")
opeAnimal <- factor(opedata$Animal)
#cat("mean\n")
#mean(tapply(opedata$Value, opeAnimal, mean, na.rm=TRUE))
cat("One-way ANOVA\n")
summary(aov(opedata$Value~opeAnimal))

cat("\nTwo-way repeated measures ANOVA\n")
Animal <- factor(data$Animal)
Operation <- factor(data$Operation)
summary(aov(data$Value~Operation*Animal))

sink()