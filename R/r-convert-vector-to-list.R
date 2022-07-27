
# Convert vector to list
x <- c("1","2")
li <- list(x)
print(li)
typeof(li)

# Convert vector to list
x <- c("1","2")
li <- as.list(x)
print(li)
typeof(li)

#Convert multiple vectors into list
x <- c("1","2")
x1 <- c(4:6)
li <- list(c(x,x1))
print(li)
typeof(li)

#Convert multiple vectors into list
x <- c("1","2")
x1 <- c(4:6)
li <- list(x,x1)
print(li)
typeof(li)

# Another example
x<-list("1","2")
x1<-as.list(1:3)
li<-c(x,x1)
print(li) 



