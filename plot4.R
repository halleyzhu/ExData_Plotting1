## plot 4
## plot 3
plot(datetime, SM1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, SM2, type="l", col="red")
lines(datetime, SM3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))


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

png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 
# plot 4-1
plot(datetime, GAP, type="l", xlab="", ylab="Global Active Power", cex=0.2)
# plot 4-2
plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")
# plot 4-3
plot(datetime, SM1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, SM2, type="l", col="red")
lines(datetime, SM3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
# plot 4-4
plot(datetime, GRP, type="l", xlab="datetime", ylab="Global_reactive_power", cex=0.2)
dev.off()
