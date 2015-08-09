#3
source(loadData.r)
png(filename = "plot3.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
plot(DateTime, Sub_metering_1, type="l", ylab = "Energy Sub Metering", xlab =" ")
lines(DateTime,Sub_metering_2, col="red")
lines(DateTime,Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), legend = c("Sub Metering 1", "Sub Metering 2", "Sub Metering 3"), lwd=1)
dev.off()