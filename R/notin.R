
# Check value noin a Vector
!(67 %in% c(2,5,8,23,67,34))
!(45 %in% c(2,5,8,23,67,34))

# Create & use %notin$
`%notin%` <- Negate(`%in%`)
67 %notin% c(2,5,8,23,67,34)
45 %notin% c(2,5,8,23,67,34)

# Check values from one vector not present in another vector
# Select elements excluding elements from aoother vector
vec1 <- c(2,5,8,23,67,34)
vec2 <- c(1,2,8,34) 
!(vec2 %in% vec1)
vec1[!(vec2 %in% vec1)]  

# Using notin
vec2 %notin% vec1
vec1[vec2 %notin% vec1]  

# Create emp Data Frame
df=data.frame(
  emp_id=c(1,2,3),
  name=c("Smith","Rose","Williams"),
  dept_id=c(10,20,10)
)
df

# Filter DataFrame
df2 <- df[! df$name %in% c('Rose'), ]
df2

# Using !%in% with if_else
# Create new column
library(dplyr)
df$dept_state <- if_else(! (df$dept_id %in% c(10,50),'NY','CA'))
df

# Select columns except specified ones
df[ ,(!(names(df) %in% "emp_id"))]
df[ ,(!(names(df) %in% c("emp_id", 'name')))]