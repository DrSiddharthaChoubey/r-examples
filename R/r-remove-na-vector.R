ids <- c(10,5,NA,15,10)

# Using is.na()
x<-ids[!is.na(ids)]
print(x)

# Using na.rm=TRUE
x <- sum(ids, na.rm=TRUE)
print(x)

x <- mean(ids, na.rm=TRUE)
print(x)

states = c('NY','DC',NA,'CA','NV',NA)
x <- na.omit(states)
print(x)

x <- na.exclude(states)
print(x)