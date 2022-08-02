# Remove duplicates from vector in R

# Create vector
v <- c('A','B','D','C','A','F','G','C','d','E','E')

#Identify Duplicates
duplicated(v)

# Remove duplicate values
!duplicated(v)
v[!duplicated(v)]

# Using unique()
unique(v)

# To remove contiguous duplicated elements only 
library(dplyr)
v <- c('A','A','D','C','C','F','F','C','d','E','E')
v[v != lag(v)]
v[v != lag(v, default = v[1])]

# Using union
v <- c('A','B','D','C','A','F','G','C','d','E','E')
union(v,v)