
## Loading the data 
final_data <- read.table("household_power_consumption.txt", header = TRUE,sep = ";", na.strings = "?")

## Changing the class of the data in to character
final_data$Date <- as.character(final_data$Date)
final_data$Time <- as.character(final_data$Time)


## Formating the data
final_data$Date <- as.Date(final_data$Date, "%d/%m/%Y")

## Subsetting the data
date_one <- subset(final_data, Date =="2007-02-01")
date_two <- subset(final_data, Date =="2007-02-02")

## Combining the data
final_data <- rbind(date_one, date_two)

## removing the NA observations 
final_data <- final_data[complete.cases(final_data), ]

## Getting the time in to a required on 
final <- paste(final_data$Date, final_data$Time)

final<- as.POSIXct(final)
final_data <- cbind(final_data,final)





