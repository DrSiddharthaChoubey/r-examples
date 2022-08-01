#R Example of Combine Vectors into String

# Using paste() function
v <- c('A','B','C','D')
print(v)
print(paste(v,collapse=' '))
print(paste(v))

# With 2 vectors
v <- c('A','B','C','D')
v2 <- c('X','Y','Z')
print(paste(v,v2,collapse='-'))
print(paste(v,v2,sep='|'))
print(paste(v,v2,sep='|',collapse='-'))
print(paste(v,v2))

# cbin()
v <- c('A','B','C')
v2 <- c('X','Y','Z')
print(cbind(v,v2))

# rbind()
v <- c('A','B','C')
v2 <- c('X','Y','Z')
print(rbind(v,v2))

# do.call()
do.call(paste, c(as.list(v), sep = " "))
