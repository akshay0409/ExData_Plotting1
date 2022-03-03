datafile <- "household_power_consumption.txt"
data <- read.table(datafile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetData <- data[data$Date %in% c("1/2/2007","2/2/2007)"),]

#str(subSetData)
globalActivePower <- as.numeric(subsetData$Global_active_power)
png("plot2.png",width=480,height=480)
plot(globalActivePower,type = "l",col = "black",ylab = "Global Active Power (kilowatts)")
dev.off()