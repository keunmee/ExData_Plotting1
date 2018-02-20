#Load consumption data
consumptionData <- read.table("./Data/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#subset for 2 days
subData <- subset(consumptionData, Date == "1/2/2007" | Date =="2/2/2007")

#change data format
datetime <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subData$Global_active_power)

## Saving to file
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", bg = "transparent",  xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
