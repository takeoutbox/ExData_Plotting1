plot3 <- function() {
  DT <- load_DT()
  plot(strptime(DT$timestamp, "%d/%m/%Y %H:%M:%S"), as.numeric(DT$Sub_metering_1), type="l", xlab="", ylab="Energy sub metering")
  lines(strptime(DT$timestamp, "%d/%m/%Y %H:%M:%S"), as.numeric(DT$Sub_metering_2),col="red")
  lines(strptime(DT$timestamp, "%d/%m/%Y %H:%M:%S"), as.numeric(DT$Sub_metering_3),col="blue")
  legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), bty="n", cex=.5) 
  dev.copy(png,filename="plot3.png", width=480, height=480);
  dev.off()
}