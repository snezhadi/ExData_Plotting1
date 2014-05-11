#create directory
dirData = "./UCI"
if(!file.exists(dirData)) {dir.create(dirData)}

#download the data zip file and unzip it
zipFileUrl = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
destFile = paste(dirData, "data.zip", sep="/")
download.file(zipFileUrl, destfile=destFile, method="curl")
unzip(destFile, exdir=dirData)

#read the data
file = paste(dirData, "household_power_consumption.txt", sep="/")
hpc <- read.delim(file, sep=";", na.strings="?")

#remove the data that is not required 
hpc_clean <- hpc[hpc$Date %in% c("1/2/2007", "2/2/2007"),]

#convert date and time columns
hpc_clean$Date <- as.Date(hpc_clean$Date, format="%d/%m/%Y")
hpc_clean$Time <- strptime(hpc_clean$Time, format="%H:%M:%S")

#save hpc_clean to be used for ploting
save(hpc_clean, file="hpc_clean.RData")

