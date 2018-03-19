## read data in working directory
data <- read.table("household_power_consumption.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

## subset data to the two days
power<- data[data$Date %in% c("1/2/2007","2/2/2007"),]

## Convert data type
GAP <- as.numeric(power$Global_active_power)
GRP <- as.numeric(power$Global_reactive_power)
voltage <- as.numeric(power$Voltage)
SM1 <- as.numeric(power$Sub_metering_1)
SM2 <- as.numeric(power$Sub_metering_2)
SM3 <- as.numeric(power$Sub_metering_3)

## Plot 1: Global Active Power
png("plot1.png", width=480, height=480)
hist(GAP, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
