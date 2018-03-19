
## Plot 2
datetime <- strptime(paste(power$Date, power$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot(datetime, GAP, type="l", xlab="", ylab="Global Active Power (kilowatts)")
