#load clean data
load("hpc_clean.RData")

#open PNG device 
png(filename="plot3.png", width=480, height=480)

#Draw three line graphs on the same plot  & label x axis
plot(hpc_clean$Sub_metering_1, 
     main="", xlab="", xaxt="n", type="l",
     ylab="Energy sub metering")
lines(hpc_clean$Sub_metering_2, col="red")
lines(hpc_clean$Sub_metering_3, col="blue")
axis(1, at=c(1,1440,2880), labels=c("Thu","Fri","Sat"))

#draw and locate teh legend
legend("topright", lty=c(1,1,1),
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black","red","blue"))

#close the device
dev.off()

