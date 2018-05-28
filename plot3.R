## Plotting the data
plot(final_data$Sub_metering_1~final_data$final, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")

lines(final_data$Sub_metering_2~final_data$final, col = "RED")
lines(final_data$Sub_metering_3~final_data$final, col = "BLUE")


## Keeping the legend
legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Saving to file
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()
