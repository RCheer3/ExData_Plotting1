quiz1 = read.table("exdata_data_household_power_consumption/household_power_consumption.txt",header = TRUE,sep = ';')
getwd()

quiz2 = subset(quiz1,Date == '1/2/2007'|Date=='2/2/2007')

GlobalActivePower = as.numeric(as.character(quiz2$Global_active_power))
hist(GlobalActivePower, col = 'red', xlab = "Global Active Power (kilowatts)",main = "Global Active Power")

dev.copy(png,file = "plot1.png", width = 480,height = 480)
dev.off()





