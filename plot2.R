#load clean data
load("hpc_clean.RData")

#open PNG device 
png(filename="plot2.png", width=480, height=480)

#draw the plot
plot(hpc_clean$Global_active_power, 
     main="", xlab="", xaxt="n", type="l",
     ylab="Global Active Power (Kilowatts)")

#label the x axis
axis(1, at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))

#close the device
dev.off()

