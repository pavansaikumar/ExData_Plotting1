## Changing t(he plot characteristics
par(mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))

## Sub plot-1
plot(final_data$Global_active_power~final_data$final, type="l", 
     ylab="Global Active Power (kilowatts)", xlab="")

## Sub plot-2
plot(final_data$Voltage~final_data$final, type="l", 
     ylab="Voltage (volt)", xlab="")

## Sub plot-3
plot(final_data$Sub_metering_1~final_data$final, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")

lines(final_data$Sub_metering_2~final_data$final, col = "RED")
lines(final_data$Sub_metering_3~final_data$final, col = "BLUE")


## Keeping the legend
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
       legend=c("Sub_met_1", "Sub_met_2", "Sub_met_3"))

## Sub plot-4
plot(final_data$Global_reactive_power~final_data$final, type="l", 
     ylab="Global Rective Power (kilowatts)",xlab="")


## Saving to file
dev.copy(png, file="plot4.png", height=600, width=600)
dev.off()

