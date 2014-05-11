#load clean data
load("hpc_clean.RData")

#open PNG device 
png(filename="plot1.png", width=480, height=480)

#plot the hsitogram
hist(hpc_clean$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (Kilowatts)", col="red")

#close the device
dev.off()

