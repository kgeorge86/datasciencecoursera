library(data.table)

hhpc<-fread("grep ^[12]/2/2007 household_power_consumption.txt")
datetime<-strptime(paste(hhpc$V1,hhpc$V2),"%d/%m/%Y %H:%M:%S")
png(file="plot2.png", width=480, height= 480)
plot(datetime, hhpc$V3, type='l', ylab="Global Active Power(kilowatts)")
dev.off()