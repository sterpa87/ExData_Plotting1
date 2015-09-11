library(data.table)
Sys.setlocale("LC_TIME", "English")
dt <- read.table("household_power_consumption.txt", na.strings = "?", header = T, sep = ";")
dt <- dt[dt$Date=="1/2/2007" | dt$Date=="2/2/2007",]
dt$datetime <- as.POSIXct(paste(dt$Date, dt$Time), format = "%d/%m/%Y %H:%M:%S")
png("plot2.png")
plot(dt$datetime, dt$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()