data<-read.delim("household_power_consumption.txt",sep=";")
subdata<-data[data$Date%in%c("1/2/2007","2/2/2007"),]
GlobalActivePower<-as.numeric(subdata$Global_active_power)
png("plot1.png",width=480,height=480)
hist(GlobalActivePower,xlab="Global Active Power(Killowatts)",main = "Global Active Power",col = "red")
dev.off()