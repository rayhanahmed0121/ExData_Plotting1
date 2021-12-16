dates <- as.Date(household_power_consumption$Date, format = "%d/%m/%Y")
household_power_consumption$Date = dates
filtered2 <- subset(household_power_consumption, Date >= "2007-02-01" & Date <= "2007-02-02")
filtered2$Global_active_power = as.numeric(filtered2$Global_active_power)
hist(filtered2$Global_active_power, xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "red")