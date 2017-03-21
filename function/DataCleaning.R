# sht72@pitt.edu

CountOfNonNA <- function(x){
  count <- 0
  for (n in x){
    if (!is.na(n)){
      count <- count + 1
    }
  }
  return(count)
}

AggregateByCase <- function(group, x){
  test <- tapply(x,group,CountOfNonNA)
  sortedGroup <- sort(unique(group))
  sortedGroupFromTest <- as.numeric(names(test))
  print(paste("CaseIdMatch:", all(sortedGroupFromTest == sortedGroup))) # TRUE
  result <- data.frame(CaseID=sortedGroup, MHCount=as.numeric(test))
  return(result)
}

# How to use AggregateByCase function
setwd("/Users/shuning/Desktop/Capstone")
dat <- read.csv("DHSMini.csv") # read in data
result <- AggregateByCase(dat$CaseID, dat$MH1) # call AggregateByCase, fill in two parameters
result[result$CaseID == 31659,] # look at one CaseID and its MHCount