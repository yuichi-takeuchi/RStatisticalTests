setwd("D:/RWD")
rm(list=ls())

#sink(file="blahblah.txt",split=TRUE)
sink(file="DemoResults_2AOVTimecourseMix.txt",split=TRUE)

cat("TwoWayANOVATimecourseMix.R\n\n")
cat("TwoWay-ANOVA(Mix)\n")

#data <- read.csv("blahblah.csv", header=T)
data1 <- read.csv("DemoData_TwoWayANOVATimecourseMix.csv", header=T)

cat("\ninput\n")
data1

data2 <- reshape(data1, idvar="number2", varying=3:10, direction="long", drop=1)
cat("\nenlonged\n")
data2

cat("\nmean\n")
tapply(data2$value, list(data2$group, data2$time), mean)
cat("\nsd\n")
tapply(data2$value, list(data2$group, data2$time), sd)
cat("\nANOVA\n")
summary(aov(data2$value~
	data2$time*data2$group
	+Error(data2$number2:data2$group
	+data2$number2:data2$time:data2$group)))

cat("\nOnly time.5\n")
summary(aov(data2$value~data2$group,subset=(data2$time=="5")))
TukeyHSD(aov(data2$value~data2$group,subset=(data2$time=="5")))

cat("\nOnly time.10\n")
summary(aov(data2$value~data2$group,subset=(data2$time=="10")))
TukeyHSD(aov(data2$value~data2$group,subset=(data2$time=="10")))

cat("\nOnly time.15\n")
summary(aov(data2$value~data2$group,subset=(data2$time=="15")))
TukeyHSD(aov(data2$value~data2$group,subset=(data2$time=="15")))

cat("\nOnly time.20\n")
summary(aov(data2$value~data2$group,subset=(data2$time=="20")))
TukeyHSD(aov(data2$value~data2$group,subset=(data2$time=="20")))

cat("\nOnly time.25\n")
summary(aov(data2$value~data2$group,subset=(data2$time=="25")))
TukeyHSD(aov(data2$value~data2$group,subset=(data2$time=="25")))

cat("\nOnly time.30\n")
summary(aov(data2$value~data2$group,subset=(data2$time=="30")))
TukeyHSD(aov(data2$value~data2$group,subset=(data2$time=="30")))

cat("\nOnly time.35\n")
summary(aov(data2$value~data2$group,subset=(data2$time=="35")))
TukeyHSD(aov(data2$value~data2$group,subset=(data2$time=="35")))

cat("\nOnly time.40\n")
summary(aov(data2$value~data2$group,subset=(data2$time=="40")))
TukeyHSD(aov(data2$value~data2$group,subset=(data2$time=="40")))
sink()