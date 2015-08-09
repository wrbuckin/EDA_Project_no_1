#2
source(loadData.r)
png(filename = "plot2.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
plot(DateTime, Global_active_power, type="l", ylab = "Global Active Power (kilowatts)", xlab = " ", )
dev.off()