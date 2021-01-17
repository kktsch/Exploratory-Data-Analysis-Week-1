# load and subset data
data <- read.delim("C:\\Users\\Haldun\\Desktop\\Exploratory Data Analysis\\Project 1\\household_power_consumption.txt", header=T, sep=";")
data$Date <- as.Date(data$Date, format= "%m/%d/%Y")
subsetted_data <- subset(data, Date >= "2006-02-01" & Date <= "2007-02-02")
clean_data <- subsetted_data[which(subsetted_data$Voltage != "?"),] #missing value removal

# Add weekdays column
clean_data$Weekdays <- weekdays(clean_data$Date)

#Plotting
plot((as.character(clean_data$Global_active_power)), type="l", ylab="Global Active Power (kilowatts)")

#Save
png(file="C:\\Users\\Haldun\\Desktop\\Exploratory Data Analysis\\Project 1\\plot2.png", width=480, height=480)
dev.off()
