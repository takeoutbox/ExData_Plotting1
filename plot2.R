plot2 <- function() {
  DT <- load_DT()
  plot(DT$Time, DT$Global_active_power, type="l",  xlab="", ylab="Global Active Power (kilowatts)")
  dev.copy(png,filename="plot2.png", width=480, height=480);
  dev.off()
}