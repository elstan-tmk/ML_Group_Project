getwd()
setwd("~/Desktop/Data Set")

# Vector

xNum <- c(1,3.14, 5, 7)
xNum
xNum[2]

# Logic Vector

xLog <- c(TRUE, FALSE, TRUE, FALSE)
xLog[c(1,3)]
xLog

xChar <-c("foo","good", "how", "dog")
xChar

# The system will not recognize each item
xMix <- c(1, TRUE, 3, "6050 class is great") 
xMix
xMix[4] #xMix[c(4)] is the same

## Second Task

x.list <- c(xNum, xLog, xChar)
x.list

# Using list function will provide separation for each list
xList <- list(xNum, xLog, xChar) 
xList

# in order to get the item of the list, will need [[]]
xList[[1]][2] 
xList[[3]][c(2,4)]

## Lapply (the list, function)--> will apply function to all list
lapply(xList, summary)

## Database (read in data and export data)
data.df <- read.csv("satData.csv") # name the data as data.df
head(data.df)       # this will only shows the top 6 of the data
head(data.df, 20)   # This will shows the top 20 of the data

# row.names = F will not create the index when you create the csv
write.csv(data.df, "newdata.csv", row.names = F) 
summary(data.df$iProdSAT)
table(data.df$iProdSAT)     # Use $ to select particular coloum of data


## Self Define Function
install.packages("moments") # install a package 
library(moments)

skewness(data.df$iProdSAT) # as long as =3/-3 skewness is fine
kurtosis(data.df$iProdSAT) # kurtosis is to test if the distribution is too flat/ too skinny(tall)

# create a function called dumb, and it will run this function 
dumb <- function(x){
  boxplot(x)
  print(paste("skewness: ", skewness(x)))
  print(paste("kurtosis: ", kurtosis(x)))
}

# in order to print sth out, use print(paste("___", ___))

dumb(data.df$iProdSAT)

# Sequences

xseq <- 1:10
xseq
xseq[-c(5,6,7)] # use -c to not show particular info in the list

newseq <- seq(-3, 15, 4) # once it passed the ending point, it will not pass through
# same seq(from=-3,to=13, by=4)
newseq

rep(newseq, 3) # repeat 3 times 
rep(newseq, each=3) # repeat each element 3 times

### In class exercise

store.num <- c(3,14,21,32,54)
store.rev <- c(543,654,345,678,234)
store.manager <- c("Annie", "Bert", "Carla", "Dave", "Ella")
store.df <- data.frame(store.num, store.rev, store.manager)
head(store.df)

