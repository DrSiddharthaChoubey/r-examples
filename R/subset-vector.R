# Create a vector
v <- c('A','B','C','D','E','F')

# Subset by Index
v[1]
v[-2]

# Subset by range
v[2:4]

# Subset by Index Position 
v[c(1,3)]
v[c(2.3,4.5)]

# Subset vector by Negative Values
v[-c(5,2)]
v[c(-1,2)]

# Subset by Logical vector
v[c(TRUE,FALSE,TRUE,FALSE,TRUE,TRUE)]
v[c(TRUE,FALSE,TRUE)]

#By Nothing
v[]

#By Zero
v[0]

# Named Vector
v <- c(c1='A',
      c2='B',
      c3='C',
      c4='D')

# subset by name
v[c('c2','c3')]

# subset by condition
v[v == 'B']
v[v %in% c('B','C')]

# Using subset
subset(v,subset=c(TRUE,FALSE))