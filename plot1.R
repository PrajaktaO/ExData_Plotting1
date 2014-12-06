##reading data from text file
data <- read.table("C:/Users/HP/Desktop/coursera_project/exploratory analysis/household_power_consumption.txt", sep=';',header=TRUE,na.strings="?")
##subsetting the data for dates 1/2/2007 and 2/2/2007
sub_date <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
##creating png file
png(file="C:/Users/HP/ExData_Plotting1/plot1.png")
##required plot
hist(sub_date$Global_active_power , col = "red",main = "Global Active Power",xlab="Global Active Power (kilowatts)",ylab = "Frequency")
dev.off()