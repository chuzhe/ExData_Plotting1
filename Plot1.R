
## call the function that get data. PlotData is the output that would be use
setwd("E:/Dropbox/Data Science Coursera/Exploratory Data Analysis/Projects/ExData_Plotting1")
source('GetData.R')

## Plot 1
png(filename="plot1.png",bg="transparent")   ## bg="transparent" make the background transparent
with(PlotData,hist(Global_active_power,main= "Global Active Power", xlab="Global Active Power (kilowatts)",col="red"))
dev.off()

