
plot1 <- function(data=NULL) {
  DT <- load_DT()
  hist(as.numeric(DT$Global_active_power), main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red")
  dev.copy(png,filename="plot1.png", width=480, height=480);
  dev.off()
}