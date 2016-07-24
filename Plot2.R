file <- "household_power_consumption.txt"
df <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
df1 <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]

dt <- strptime(paste(df1$Date, df1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
gap <- as.numeric(df1$Global_active_power)
png("plot2.png", width=480, height=480)
plot(dt, gap, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()