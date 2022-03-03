datafile <- "household_power_consumption.txt"
data <- read.table(datafile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetData <- data[data$Date %in% c("1/2/2007","2/2/2007)"),]

#str(subSetData)
sub1 <- as.numeric(subsetData$Sub_metering_1)
sub2 <- as.numeric(subsetData$Sub_metering_2)
sub3 <- as.numeric(subsetData$Sub_metering_3)
png("plot3.png",width=480,height=480)
plot(sub1,type = "l",col = "black",ylab = "Energy sub metering")
lines(sub2, type = "l", col = "red")
lines(sub3, type = "l", col = "blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1:1)
dev.off()