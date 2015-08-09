#1
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


png(filename = "plot1.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
hist(Global_active_power, breaks=12, ylim=(c(0,1200)), xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power", col="red")
dev.off()