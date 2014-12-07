library(data.table)
hhpc<-fread("grep ^[12]/2/2007 household_power_consumption.txt")
png(file="plot1.png", width=480, height= 480)

hist(hhpc$V3, xlab= "Global Active Power(kilowatts)", col="red", main="Global Active Power")
dev.off()