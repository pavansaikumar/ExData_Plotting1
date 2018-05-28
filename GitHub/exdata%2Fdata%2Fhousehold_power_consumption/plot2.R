## Creating the Plot2
plot(final_data$Global_active_power~final_data$final, type="l", ylab="Global Active Power (kilowatts)", xlab="")

## Saving the file 
dev.copy(png, "plot2.png", width = 480, height = 480)

## closing the connection
dev.off()