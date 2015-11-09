## setwd("//Msad/root/NA/NY/users/desevan/My Documents/admin/datasciencecoursera/exploratoryanalysis/prj1")

# read in the data
data <- read.table("household_power_consumption.txt",sep=";",header=TRUE)
summary(data)

# take a subset
s <- subset(data, Date %in% c("1/2/2007","2/2/2007"))

# plot hist
hist(s$Global_active_power, breaks=25, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

# copy plot to a PNG file
dev.copy(png, file = "plot1.png", width=480, height=480) 
dev.off()
