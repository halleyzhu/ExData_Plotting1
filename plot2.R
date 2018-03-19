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

## Plot 2
datetime <- strptime(paste(power$Date, power$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot(datetime, GAP, type="l", xlab="", ylab="Global Active Power (kilowatts)")
