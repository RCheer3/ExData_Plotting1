quiz1 = read.table("exdata_data_household_power_consumption/household_power_consumption.txt",header = TRUE,sep = ';')


quiz2 = subset(quiz1,Date == '2/1/2007'|Date=='2/2/2007')
GlobalActivePower = as.numeric(as.character(quiz2$Global_active_power))
timestamp= strptime(paste(quiz2$Date,quiz2$Time),"%m/%d/%Y %H:%M:%S")

plot(timestamp,GlobalActivePower, xlab = '',ylab = 'Global Active Power (kilowatts)',type = 'l')
dev.copy(png,file = "plot2.png", width = 480,height = 480)
dev.off()
