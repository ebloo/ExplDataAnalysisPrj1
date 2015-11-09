## setwd("//Msad/root/NA/NY/users/desevan/My Documents/admin/datasciencecoursera/exploratoryanalysis/prj1")

# read in the data
data <- read.table("household_power_consumption.txt",sep=";",header=TRUE)
summary(data)

# take a subset
data <- subset(data, Date %in% c("1/2/2007","2/2/2007"))

# extract date/time
dt <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

# plot
plot(dt, s$Sub_metering_1, col="black", type="l", xlab="", ylab="Energy sub metering")
lines(dt, s$Sub_metering_2, col="red", type="l")
lines(dt, s$Sub_metering_3, col="blue", type="l")

# add legend
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1,1), lwd=c(1,1,1), col=c("black", "red", "blue"), cex=0.6)

# copy plot to a PNG file
dev.copy(png, file = "plot3.png", width=480, height=480) 
dev.off()
