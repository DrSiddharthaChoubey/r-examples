# Sort Vector Example

# Sort Character Vector
v <- c('D','R','G','A','X')
sort(v)
sort(v, decreasing=TRUE)

# Sort Numeric Vector
v <- c(3,4,1,5,2)
sort(v)

# Sort Date Vector
dates<-c("2022-01-06","2022-01-02",
        "2022-01-04","2022-01-07")
dates <- as.Date(dates)
sort(dates)
sort(dates,decreasing=TRUE)

# Sort Named Vector
v <- c(c1=2,c5=6,c3=3,c2=1)
v[sort(names(v))]

