##reading data from text file
data <- read.table("C:/Users/HP/Desktop/coursera_project/exploratory analysis/household_power_consumption.txt", sep=';',header=TRUE,na.strings="?")
##subsetting the data for dates 1/2/2007 and 2/2/2007
sub_date <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
## converting the Date and Time variables to Date/Time classes
time <- paste(sub_date$Date, sub_date$Time)
sub_date$Time <- strptime(time, "%d/%m/%Y %H:%M:%S")
##creating png file
png(file="C:/Users/HP/ExData_Plotting1/plot3.png")
##required plot
plot(sub_date$Time, sub_date$Sub_metering_1,type ="l",xlab="",ylab="Energy sub metering")
lines(sub_date$Time, sub_date$Sub_metering_2,type ="l",xlab="",col="red")
lines(sub_date$Time, sub_date$Sub_metering_3,type ="l",xlab="",col="blue")
legend("topright",legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),col=c('black', 'red', 'blue'),lty=1)

dev.off()