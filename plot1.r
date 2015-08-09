#1
source(loadData.r)
png(filename = "plot1.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
hist(Global_active_power, breaks=12, ylim=(c(0,1200)), xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power", col="red")
dev.off()