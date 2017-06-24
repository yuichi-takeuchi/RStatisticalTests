setwd("D:/RWD")
rm(list=ls())

#sink(file="blahblah.txt",split=TRUE)
sink(file="DemoResults_1AOV.txt",split=TRUE)

cat("OneWayANOVA.R\n\n")
cat("###### Parametric ######\n\n")
cat("OneWay-ANOVA\n")

#data <- read.csv("blahblah.csv", header=T)
data1 <- read.csv("DemoData_OneWayANOVA.csv", header=T)
library(reshape)
data2 <- melt(data1)
summary(aov(data2$value~data2$variable))
cat("\n")
TukeyHSD(aov(data2$value~data2$variable))

DATAX = as.matrix(data2[1])
DATAY = as.matrix(data2[2])
pairwise.t.test(DATAY, DATAX, p.adj="bonferroni")
pairwise.t.test(DATAY, DATAX, p.adj="holm")
pairwise.t.test(DATAY, DATAX, p.adj="hommel")
pairwise.t.test(DATAY, DATAX, p.adj="hochberg")

cat("\n###### non-parametric ######\n")
kruskal.test(data1)
pairwise.wilcox.test(DATAY, DATAX, p.adj="bonferroni")
pairwise.wilcox.test(DATAY, DATAX, p.adj="holm")
pairwise.wilcox.test(DATAY, DATAX, p.adj="hommel")
pairwise.wilcox.test(DATAY, DATAX, p.adj="hochberg")

sink()