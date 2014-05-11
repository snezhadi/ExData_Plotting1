#load clean data
load("hpc_clean.RData")

#open PNG device 
png(filename="plot4.png", width=480, height=480)

#set th edevice for 4 plots in two rows and two columns
par(mfrow=c(2,2))

#plot the first one
plot(hpc_clean$Global_active_power, 
     main="", xlab="", xaxt="n", type="l",
     ylab="Global Active Power")
axis(1, at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))

#plot the second one
plot(hpc_clean$Voltage, 
     main="", xlab="datetime", xaxt="n", type="l",
     ylab="Voltage")
axis(1, at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))

#plot the third one
plot(hpc_clean$Sub_metering_1, 
     main="", xlab="", xaxt="n", type="l",
     ylab="Energy sub metering")
lines(hpc_clean$Sub_metering_2, col="red")
lines(hpc_clean$Sub_metering_3, col="blue")
axis(1, at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))
legend("topright", lty=c(1,1,1), bty="n",
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black","red","blue"))

#plot the forth one
plot(hpc_clean$Global_reactive_power, 
     main="", xlab="datetime", xaxt="n", type="l",
     ylab="Global_reactive_power")
axis(1, at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))

#close the device
dev.off()
