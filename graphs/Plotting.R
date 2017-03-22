# Xiaoying xiy62@pitt.edu

#1.  simple plot
PlotByTime1<-function(time, count){
count.ts<-ts(count) 
plot.ts(time,count.ts,type="l", xlab = "CaseID", ylab = "Number of People Per Case")
title("The time-series graph--Utilization of Mental Health Services")
}

#2. ggplot
PlotByTime2<-function(time, count){
library(ggplot2)
p<-ggplot(data.frame(time,count),mapping=aes(x=time,y=count))
p+geom_line()+labs(title="The time-series graph--Utilization of Mental Health Services",x="CaseID",y="Number of People Per Case")
}


