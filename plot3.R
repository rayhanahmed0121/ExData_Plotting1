dateAndTime <- with(household_power_consumption,as.POSIXct(paste(Date,Time), format = "%d/%m/%Y %H:%M:%S"))
household_power_consumption$dateAndTime <- dateAndTime
filtered <- subset(household_power_consumption, dateAndTime >= "2007-02-01 00:00:00" & dateAndTime < "2007-02-03 00:00:00")
plot(filtered$dateAndTime,filtered$Sub_metering_1,type = "l", col="black", ylab = "Energy sub metering", xlab = "")
points(filtered$dateAndTime, filtered$Sub_metering_2, type="l", col="red")
points(filtered$dateAndTime, filtered$Sub_metering_3, type="l", col="blue")
legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
