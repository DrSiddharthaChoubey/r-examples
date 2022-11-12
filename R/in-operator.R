# Examples of IN operator

vec1 <- c(2,5,8,23,67,34)
vec2 <- c(1,2,8,34) 

# Check value in a Vector
67 %in% vec1
45 %in% vec1

# Check values from one vector present in another vector
# Compare two vector
vec2 %in% vec1
vec1[vec2 %in% vec1]  

  
# Using sequence
x <- 10:20
y <- 15:20
y %in% x

# Sequence of characters
x <- LETTERS[5:10]
y <- LETTERS[2:7]
y %in% x

# If you have a big vector (say vector with 1000 values), you can use any, all, or which functions with %in% operator

x <- 1:1000
y <- 900:2000

## check if there is any common values between a and b vectors
any(x %in% y)

# check if there are all values common between a and b vectors
all(x %in% y)

# get indexes of common values
a <- 1:10
b <- 6:200
which(a %in% b)


# Create emp Data Frame
df=data.frame(
  emp_id=c(1,2,3,4,5,6),
  name=c("Smith","Rose","Williams","Jones","Brown","Brown"),
  dept_id=c(10,20,10,10,40,50)
)
df

# Filter DataFrame
df2 <- df[df$name %in% c('Brown'), ]
df2

# Filter DataFrame
df2 <- df[df$name %in% c('Brown','Rose'), ]
df2

# Using %in% with if_else
# Create new column
library(dplyr)
df$dept_state <- if_else(df$dept_id %in% c(10,50),'NY','CA')
df

# check if 'Smith' is present in name
'Smith' %in% df$name

# to check if any value in column name is Smith or Jones
df$name %in% c('Smith','Jones')

# Select columns using %in% operator
df[ ,(names(df) %in% "emp_id")]
df[ ,(names(df) %in% c("emp_id", 'name'))]
df %>% select_if(names(.) %in% c('emp_id', 'name'))


# Drop column using %in% operator
df[, !(colnames(df) %in% c("emp_id"))]