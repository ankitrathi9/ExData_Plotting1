data<-read.delim("household_power_consumption.txt",sep=";")
subdata<-data[data$Date%in%c("1/2/2007","2/2/2007"),]
GlobalActivePower<-as.numeric(subdata$Global_active_power)
datetime<-strptime(paste(subdata$Date,subdata$Time),"%d/%m/%Y %H:%M:%S")
png("plot2.png",width=480,height=480)
plot(datetime,GlobalActivePower,xlab=" ",ylab="Global Active Power(Killowatts)",type = "l")
dev.off()