
setwd("/home/bianca/R/exploratory-data-analysis/ExData_Plotting1/data")
zip_file_name <- "exdata_data_household_power_consumption.zip"
if (!file.exists(zip_file_name)) { 
  file_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(file_url, destfile = zip_file_name, method='curl')
  unzip (zip_file_name)
}
txt_file_name = "household_power_consumption.txt"
hpc <- read.csv(txt_file_name,sep = ";", stringsAsFactors=FALSE, dec=".")
setwd("/home/bianca/R/exploratory-data-analysis/ExData_Plotting1")

#Convert columns types
hpc[, "Date"] <- as.Date(hpc[,"Date"], "%d/%m/%Y")
from = as.Date("2007-02-01")
to = as.Date("2007-02-02")
subset <- hpc[hpc$Date %in% from:to, ]