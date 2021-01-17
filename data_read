# load and subset data
data <- read.delim("C:\\Users\\Haldun\\Desktop\\Exploratory Data Analysis\\Project 1\\household_power_consumption.txt", header=T, sep=";")
data$Date <- as.Date(data$Date, format= "%m/%d/%Y")
subsetted_data <- subset(data, Date >= "2007-02-01" & Date <= "2007-02-02")[which
clean_data <- subsetted_data[which(subsetted_data$Voltage != "?"),] #missing value removal

