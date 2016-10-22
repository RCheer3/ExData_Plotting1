quiz1 = read.table("exdata_data_household_power_consumption/household_power_consumption.txt",header = TRUE,sep = ';')


quiz2 = subset(quiz1,Date == '1/2/2007'|Date=='2/2/2007')
summary(quiz2)
timestamp= strptime(paste(quiz2$Date,quiz2$Time),"%d/%m/%Y %H:%M:%S")
timestamp,quiz2$Sub_metering_1,col = 'black',type = 'l'
plot(timestamp,quiz2$Sub_metering_1,col = 'black',type = 'l', xlab = '',ylab = 'Energy sub metering')
points(timestamp,quiz2$Sub_metering_2,col = 'red',type = 'l')
points(timestamp,quiz2$Sub_metering_3,col = 'blue',type = 'l')
legend("topright",pch ="-", col = c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
       ,lty = c(1,2),lwd = 2)

dev.copy(png,file = "plot3.png", width = 480,height = 480)
dev.off()