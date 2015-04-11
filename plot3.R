source("load_file.R")

with(focused.dates, {
  plot(date.time, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(date.time, Sub_metering_2, col="red")
  lines(date.time, Sub_metering_3, col="blue")
  legend("topright", lwd="1", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")) 
})
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()