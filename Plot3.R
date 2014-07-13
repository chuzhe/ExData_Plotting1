## call the function that get data. PlotData is the output that would be used
setwd("E:/Dropbox/Data Science Coursera/Exploratory Data Analysis/Projects/ExData_Plotting1")
source('GetData.R')

## Plot 3
png(filename="plot3.png",bg="transparent")
with(PlotData, plot(DateTime,Sub_metering_1,type='l',col="black",ylab="Energy sub metering"))
with(PlotData, lines(DateTime,Sub_metering_2,col="red"))   ## lines: add line to existing plot
with(PlotData, lines(DateTime,Sub_metering_3,col="blue"))
legend("topright",lty=1,col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
