# load and subset data
data <- read.delim("C:\\Users\\Haldun\\Desktop\\Exploratory Data Analysis\\Project 1\\household_power_consumption.txt", header=T, sep=";")
data$Date <- as.Date(data$Date, format= "%d/%m/%Y")
subsetted_data <- subset(data, Date >= "2007-02-01" & Date <= "2007-02-02")
clean_data <- subsetted_data[which(subsetted_data$Voltage != "?"),] #missing value removal
                                                                            
#Plotting
png(file="C:\\Users\\Haldun\\Desktop\\Exploratory Data Analysis\\Project 1\\plot1.png", width=480, height=480)
hist(as.numeric(as.character(clean_data$Global_active_power)), xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power")
dev.off()
