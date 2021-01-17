# load and subset data
data <- read.delim("C:\\Users\\Haldun\\Desktop\\Exploratory Data Analysis\\Project 1\\household_power_consumption.txt", header=T, sep=";")
data$Date <- as.Date(data$Date, format= "%m/%d/%Y")
subsetted_data <- subset(data, Date >= "2006-02-01" & Date <= "2007-02-02")
clean_data <- subsetted_data[which(subsetted_data$Voltage != "?"),] #missing value removal

# Add weekdays column
clean_data$Weekdays <- weekdays(clean_data$Date)

png(file="C:\\Users\\Haldun\\Desktop\\Exploratory Data Analysis\\Project 1\\plot4.png", width=480, height=480)

#Plotting
par(mfrow=c(2,2))
plot(as.character(clean_data$Global_active_power), type="l", ylab="Global Active Power", xaxt="n", xlab="")

plot(as.character(clean_data$Voltage), type="l", ylab="Voltage", xaxt="n", xlab="")

plot(as.character(clean_data$Sub_metering_1), type="n", ylab="Energy Sub Metering", xaxt="n", xlab="")
points(as.character(clean_data$Sub_metering_1), type="l", col="black")
points(as.character(clean_data$Sub_metering_2), type="l", col="red")
points(as.character(clean_data$Sub_metering_3), type="l", col="blue")

plot(as.character(clean_data$Global_reactive_power), type="l", ylab="Global_reactive_power", xaxt="n", xlab="")

#Close
dev.off()
