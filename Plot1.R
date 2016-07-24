file <- "household_power_consumption.txt"
df <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
df1 <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]

gap <- as.numeric(df1$Global_active_power)
png("plot1.png", width=480, height=480)
hist(gap, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()