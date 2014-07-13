## call the function that get data. PlotData is the output that would be used
setwd("E:/Dropbox/Data Science Coursera/Exploratory Data Analysis/Projects/ExData_Plotting1")
source('GetData.R')

## Plot 4
png(filename="plot4.png",bg="transparent")
par(mfcol=c(2,2))  ## 2-by-2 plot grid. Top Left -> Bottom Left -> Top Right -> Bottom Right

with(PlotData,{plot(DateTime,Global_active_power,type='l',xlab="",ylab="Global Active Power")  ## Plot on the top left
               
               ## Plot on the bottom left
               plot(DateTime,Sub_metering_1,type='l',col="black",ylab="Energy sub metering")
               lines(DateTime,Sub_metering_2,col="red")
               lines(DateTime,Sub_metering_3,col="blue")
               ## bty="n": no boxes for the legend
               legend("topright",lty=1,bty="n",col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
               
               ## Plot on the top right
               plot(DateTime,Voltage,xlab="datetime",ylab="Voltage",type="l")
               
               ## Plot on the bottom right
               plot(DateTime,Global_reactive_power,xlab="datetime",ylab="Global_reactive_power",type="l")
               
})
dev.off()