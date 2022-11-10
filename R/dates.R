# Dates examples
# Complete example at https://sparkbyexamples.com/r-programming/dates-and-times-in-r/

# Using as.Date()
x <- as.Date("1970-01-01")
y <- as.Date("1970-01-02")
print(x)
print(y)

# Printe internal values
unclass(x)
unclass(y)

# Type & class of date
typeof(x)
class(x)

# Custom date
z <- as.Date("01/01/1970",format='%m/%d/%Y')
print(z)

# Using POSIXct
timect <- as.POSIXct("2022-11-08 22:14:35 PST")
print(timect)
class(timect)
unclass(timect)

# Using as.POSIXlt
timelt <- as.POSIXlt("2022-11-08 22:14:35 PST")
print(timelt)
class(timelt)
unclass(timelt)

# Date & Time Values
timelt$sec
timelt$wday



# Date Diff
dateDiff <- as.Date("2021-01-01") - as.Date("2020-01-01")
print(dateDiff)

#Time Diff
x <- as.POSIXlt("2022-11-08 03:14:35 PST") 
y <- as.POSIXlt("2023-11-09 26:14:35 PST") 
timeDiff <- y - x
print(timeDiff)

# Sys.time()
x <- Sys.time()
print(x)
class(x)

# strptime()
strDate <- c("11 April, 2022 09:30", "20 November, 2022 10:05")
x <- strptime(strDate, "%d %B, %Y %H:%M")
print(x)
class(x)

# Add Date
newDate <- as.Date("2021-01-01") + 3
print(newDate)

# Differences
datesVec <- as.Date(c("2020-04-21", "2021-06-30", "2021-11-04"))
diff(datesVec)

# Sequence of dates
dateMonth <- seq(as.Date("2020-04-21"), length = 5, by = "month")
dateMonth

#truncate
x <- as.POSIXlt("2022-11-08 03:14:35 PST") 
trunc(x, "mins")
trunc(x, "days")
trunc(x, "year")
