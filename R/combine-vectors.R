# R Example of Combine Vectors into single Vector

# Combine vectors
v1 <- c('A','B','C')
v2 <- c('X','Y','Z')
v3 <- c(v1,v2)
print(v3)

# Combine different type vectors
v1 <- c('A','B','C')
v2 <- c(1,2,3)
v3 <- c(v1,v2)
print(v3)

# append()
v4 <- append(v1,v2)
print(v4)
