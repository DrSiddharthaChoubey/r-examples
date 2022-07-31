# R Convert List to Vector

# Create list
li <- list('A','B','C')
print(li)

# unlist() usage
v <- unlist(li)
print(v)

# Convert List of vectors into vector
li <- list(col1 = c(10, 20, 30),                
           col2 = c(1, 40, 3),                    
           col3 = c(30, 20))   
print(li)
v <- unlist(li,use.names=FALSE)
print(v)

# Convert to numeric vector
li <- list('10','20','30')
v <- unlist(li)
v <- as.vector(v,'numeric')
print(v)
typeof(v)

# Create Multiple Lists into Vector
li1 <- list('A','B','C')
li2 <- list('X','Y','Z')
v <- unlist(c(li1,li2))
print(v)
