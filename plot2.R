##reading data from text file
data <- read.table("C:/Users/HP/Desktop/coursera_project/exploratory analysis/household_power_consumption.txt", sep=';',header=TRUE,na.strings="?")
##subsetting the data for dates 1/2/2007 and 2/2/2007
sub_date <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
## converting the Date and Time variables to Date/Time classes
time <- paste(sub_date$Date, sub_date$Time)

sub_date$Time <- strptime(time, "%d/%m/%Y %H:%M:%S")
##creating png file
png(file="C:/Users/HP/ExData_Plotting1/plot2.png")
##required plot
plot(sub_date$Time, sub_date$Global_active_power,type ="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()