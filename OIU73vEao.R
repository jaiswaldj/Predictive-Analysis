  rm(list=ls())
setwd("C:\Users\Deepak Jaiswal\Desktop\Data Science\data01s2l1/IMDB_data(R programing")
getwd()
IMDB_data=read.csv("IMDB_data.csv",header = TRUE)[-2]
df=length(unique(IMDB_data$Genre))
IMDB_data=as.numeric(IMDB_data)
IMDB_data=IMDB_data[order(IMDB_data$Genre),]
x=(as.numeric(IMDB_data$imdbRating))^2
y=(as.numeric(IMDB_data$imdbVotes))^2
IMDB_data$square_Diff=with(IMDB_data,(x-y))

