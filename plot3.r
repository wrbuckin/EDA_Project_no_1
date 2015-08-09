#3
filename <- "~/Downloads/household_power_consumption.txt"
data <- read.table(filename,header = TRUE,sep = ";",colClasses = c("character", "character", rep("numeric",7)), na = "?")
dim(data) 
attach(data)

subset <- Date == "1/2/2007" | Date == "2/2/2007"
newData <- data[subset, ]
attach(newData)
x <- paste(Date, Time)
newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(newData) <- 1:nrow(newData)
dim(newData) 
attach(newData)

png(filename = "plot3.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
plot(DateTime, Sub_metering_1, type="l", ylab = "Energy Sub Metering", xlab =" ")
lines(DateTime,Sub_metering_2, col="red")
lines(DateTime,Sub_metering_3, col="blue")
legend("topright", col=c("black", "red", "blue"), legend = c("Sub Metering 1", "Sub Metering 2", "Sub Metering 3"), lwd=1)
dev.off()