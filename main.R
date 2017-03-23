rm(list = ls())
setwd("/Users/shuning/Desktop/Capstone/DHSGroup3") # change to where you put the DHSGroup3 folder 
dat <- read.csv("DHSMini.csv")
source("function/DataCleaning.R")
source("graphs/Plotting.R")
result <- AggregateByCase(dat$CaseID, dat$MH1)
PlotByTime1(result$CaseID, result$MHCount)
PlotByTime2(result$CaseID, result$MHCount)