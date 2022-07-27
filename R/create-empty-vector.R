# Create empty vector using c()
v <- c()
print(v)
length(v)
typeof(v)
print(is.null(v))

# Create Empty vector using vector()
v <- vector()
print(v)
typeof(v)
print(is.null(v))

# Create empty vector of type character
v <- character()
print(v)
typeof(v)
print(is.null(v))

# Create empty vector of type double
v <- numeric()
print(v)
typeof(v)
print(is.null(v))

# Using rep()
v <- rep(NULL, 0)
print(v)
length(v)
print(is.null(v))

# By Assigning NULL
v <- c('A','B')
v <- NULL
print(v)
length(v)
typeof(v)
print(is.null(v))
