setwd("./data")
file <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")
parse.date <- function(str.date) {
  strptime(str.date, format="%d/%m/%Y %H:%M:%S")
}
file$date.time <- parse.date(paste(file$Date, file$Time, sep=" "))
start.date = parse.date("1/2/2007 00:00:00")
end.date = parse.date("2/2/2007 23:59:59")
focused.dates = file[file$date.time >= start.date & file$date.time <= end.date, ]

rm("end.date", "file", "start.date")
setwd("..")
