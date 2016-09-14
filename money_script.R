money <- read.csv("/home/pine/money_010715.csv", header=TRUE, sep=",", quote="\"",encoding="UTF-8", fileEncoding = 'latin1', stringsAsFactors = FALSE

as.Date(money$Date, "%d %m %Y")
format(money$Date, format="%d %m %Y")

money$Date <- format(money$Date, format="%d %m %Y")

as.numeric(sub("\\£","", money$Balance))

money$Balance <- as.numeric(sub("\\£","", money$Balance))

money$Paid.out <- as.numeric(sub("\\£","", money$Paid.out))

money$Paid.in <- as.numeric(sub("\\£","", money$Paid.in))


> money$Date <- as.Date(money$Date, "%d %B %Y")

> months = cut(money$Date, breaks="month")

