
## call the function that get data. PlotData is the output that would be used
setwd("E:/Dropbox/Data Science Coursera/Exploratory Data Analysis/Projects/ExData_Plotting1")
source('GetData.R')

## Plot 2
png(filename="plot2.png",bg="transparent")
with(PlotData, plot(DateTime,Global_active_power,type='l',xlab="",ylab="Global Active Power (kilowatts)")) ## type="l": line chart
dev.off()
