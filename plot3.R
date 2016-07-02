setwd("/home/bianca/R/exploratory-data-analysis/ExData_Plotting1")

#source("readfile.R")

png("plot3.png", width=600, height=600)
plot(datetime, subset$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subset$Sub_metering_2, type="l", col="red")
lines(datetime, subset$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()