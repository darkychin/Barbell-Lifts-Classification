## Common useful handmade R functions

## Convert "\" to "/" when copying file path from windows explorer
convertWinPath <- function(){
  x <- readline()
  wd <- gsub("\\\\", "/", x)
  setwd(wd)
  wd
}

## Clear system environment
cleanEV <- function(){
  rm(list = ls())
}

## Check total number of NA for each column in a dataframe
eachColNASum <- function(dataFrame){
  lapply(dataFrame, function(x) sum(is.na(x)))
}