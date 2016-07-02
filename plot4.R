setwd("/home/bianca/R/exploratory-data-analysis/ExData_Plotting1")
source("readfile.R")
source("convert_columns.R")
png("plot4.png", width=600, height=600)

par(mfrow=c(2,2))

#Plot 1
hist(subset$Global_active_power, col="red", main="Global Active Power", xlab = "Global Active Power (kilowatts)")

#Plot 2
plot(datetime, subset$Voltage, type="l", ylab="Voltage")

#Plot 3
plot(datetime, subset$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(datetime, subset$Sub_metering_2, type="l", col="red")
lines(datetime, subset$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

#Plot 4
plot(datetime, subset$Global_reactive_power, type="l", ylab="Global_reactive_power")

dev.off()