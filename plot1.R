library(data.table)
Sys.setlocale("LC_TIME", "English")
dt <- read.table("household_power_consumption.txt", na.strings = "?", header = T, sep = ";")
dt <- dt[dt$Date=="1/2/2007" | dt$Date=="2/2/2007",]
png("plot1.png")
hist(dt$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()