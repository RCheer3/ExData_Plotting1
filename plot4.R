quiz1 = read.table("exdata_data_household_power_consumption/household_power_consumption.txt",header = TRUE,sep = ';')


quiz2 = subset(quiz1,Date == '2/1/2007'|Date=='2/2/2007')
timestamp= strptime(paste(quiz2$Date,quiz2$Time),"%m/%d/%Y %H:%M:%S")
GlobalActivePower = as.numeric(as.character(quiz2$Global_active_power))

par(mfrow = c(2,2))
plot(timestamp,GlobalActivePower,xlab = '', ylab = 'Global Active Power',type = 'l')
plot(timestamp,quiz2$Voltage,xlab = 'datetime', ylab = 'Voltage',type = 'l')

plot(timestamp,quiz2$Sub_metering_3, xlab = '',ylab = 'Energy sub metering',type = 'l',col = 'blue')
points(timestamp,quiz2$Sub_metering_2,col = 'red',type = 'l')
points(timestamp,quiz2$Sub_metering_1,col = 'black',type = 'l')
legend("topright",pch ="-", col = c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = c(1,2))

plot(timestamp,quiz2$Global_reactive_power,xlab = 'datetime', ylab = 'Global_reactive_power',type = 'l')

dev.copy(png,file = "plot4.png", width = 480,height = 480)
dev.off()