## This code use Data frame to implement the project. Speed is acceptable since the data set is relativley small.
## However, ideally would use data.table. Encounter some problems when using data.table. Mainly how the date is dealt with
## Run into problems when using both data.table and strptime. Need to investigate further


## clear memory
rm(list=ls())
OriginalDir = getwd()

# File download and unzip

## parameters input
## directory of the code. Please change this accordingly!
CodeDir = "E:/Dropbox/Data Science Coursera/Exploratory Data Analysis/Projects"
setwd(CodeDir)  
fileDir <- "./data"
filename <- "Power_Consumption.zip"
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
filefullname <- paste(fileDir,filename,sep="/")

## download file if not exist
if (!file.exists(filefullname)){
        
        if(!file.exists(fileDir)){dir.create(fileDir)}  ## create directory if not exist
        download.file(fileUrl,destfile=filefullname)
        
}

## unzip file
unzip(filefullname,exdir=fileDir)
rawDataName = "household_power_consumption.txt"
DataLoc <- paste(fileDir,rawDataName,sep="/") 

RawData <- read.table(DataLoc, header=TRUE,sep=";",na.strings="?",colClasses=c("character","character",rep("numeric",7)))

## Select data that we are interested: 2007-02-01 and 2007-02-02
PlotData <- subset(RawData,Date %in% c('1/2/2007','2/2/2007'))
rm(RawData) ## Release raw data

## Combine date time in the original data and convert it
DateTimeTemp <- paste(PlotData$Date,PlotData$Time)
DateTimeTemp <- strptime(DateTimeTemp,"%d/%m/%Y %H:%M:%S")
PlotData$DateTime <- DateTimeTemp

setwd(OriginalDir)