
## plot 4
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