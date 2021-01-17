# load and subset data
data <- read.delim("C:\\Users\\Haldun\\Desktop\\Exploratory Data Analysis\\Project 1\\household_power_consumption.txt", header=T, sep=";")
data$Date <- as.Date(data$Date, format= "%m/%d/%Y")
subsetted_data <- subset(data, Date >= "2006-02-01" & Date <= "2007-02-02")
clean_data <- subsetted_data[which(subsetted_data$Voltage != "?"),] #missing value removal

# Add weekdays column
clean_data$Weekdays <- weekdays(clean_data$Date)

png(file="C:\\Users\\Haldun\\Desktop\\Exploratory Data Analysis\\Project 1\\plot2.png", width=480, height=480)

#Plotting
plot(as.character(clean_data$Sub_metering_1), type="n", ylab="Energy Sub Metering", xaxt="n", xlab="")
points(as.character(clean_data$Sub_metering_1), type="l", col="black")
points(as.character(clean_data$Sub_metering_2), type="l", col="red")
points(as.character(clean_data$Sub_metering_3), type="l", col="blue")
legend("topright", pch=19, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#Close
dev.off()
