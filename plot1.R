#Load consumption data
consumptionData <- read.table("./Data/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#subset for 2 days
subData <- subset(consumptionData, Date == "1/2/2007" | Date =="2/2/2007")

#change the character data to numeric
globalActivePower <- as.numeric(subData$Global_active_power)

## Saving to file
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", bg="transparent", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
