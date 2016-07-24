file <- "household_power_consumption.txt"
df <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
df1 <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]

dt <- strptime(paste(df1$Date, df1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
gap <- as.numeric(df1$Global_active_power)
subMetering1 <- as.numeric(df1$Sub_metering_1)
subMetering2 <- as.numeric(df1$Sub_metering_2)
subMetering3 <- as.numeric(df1$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(dt, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(dt, subMetering2, type="l", col="red")
lines(dt, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()