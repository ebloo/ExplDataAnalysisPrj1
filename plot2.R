## setwd("//Msad/root/NA/NY/users/desevan/My Documents/admin/datasciencecoursera/exploratoryanalysis/prj1")

# read in the data
data <- read.table("household_power_consumption.txt",sep=";",header=TRUE)
summary(data)

# take a subset
data <- subset(data, Date %in% c("1/2/2007","2/2/2007"))

# extract date/time
dt <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

# plot
plot(dt, data$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")

# copy plot to a PNG file
dev.copy(png, file = "plot2.png", width=480, height=480) 
dev.off()
