
# Create Vector using c()
id <- c(10,11,12,13)
name <- c('sai','ram','deepika','sahithi')
dob <- as.Date(c('1990-10-02','1981-3-24','1987-6-14','1985-8-16'))

# Create Named Vector
x <- c(C1='A',C2='B',C3='C')
x

# Create Vector using vector()
x <- vector(mode='logical',length=5)
x
is.vector(x)
typeof(x)

# Create Character Vector
x <- character(5)
x
is.vector(x)
typeof(x)

# Create Vector From List
li <- list('A','B','C')
v <- unlist(li)
print(v)
print(typeof(v))
is.vector(v)

# Create Vector of Zeros
v <- integer(6)
print(v)

# Create Vector of Specified length
v <- character(5)
print(v)

# Create Numeric Vector with 0 to 10 Values
v <- seq(1, 10)
v <- 1:10
print(v)

# Create Vector using vector()
x &lt;- vector(mode='logical',length=5)
print(x)
print(is.vector(x))
print(typeof(x))