## Creating the histogram
hist(final_data$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")

## Saving the file 
dev.copy(png, "plot1.png", width = 480, height = 480)

## closing the connection
dev.off()

