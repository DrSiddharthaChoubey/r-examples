# Remove elements from vector
 
# Remove specific value from vector
x[ !x == 'A']

# Remove multiple values by list
x[! x %in% c('A', 'D', 'E')]

# Using setdiff
setdiff(x, c('A','D','E'))

# Remove elements by index
x[-c(1,2,5)]

# Using which
x[-which(x %in% c('D','E') )]

# Remove elements by name
x <- c(C1='A',C2='B',C3='C',C4='E',C5='G')
x[! names(x) %in% c('C1','C2')]





 
 