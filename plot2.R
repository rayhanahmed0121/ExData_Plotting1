dateAndTime <- with(household_power_consumption,as.POSIXct(paste(Date,Time), format = "%d/%m/%Y %H:%M:%S"))
household_power_consumption$dateAndTime <- dateAndTime
filtered <- subset(household_power_consumption, dateAndTime >= "2007-02-01 00:00:00" & dateAndTime < "2007-02-03 00:00:00")
plot(filtered$dateAndTime, filtered$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")