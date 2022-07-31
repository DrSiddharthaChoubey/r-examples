#Convert List of elements to string Examples

# Convert List to string
li <- list('A','B','C','D','E','F')
paste(li,collapse = ' ')


# Using toString()
toString(li)

# using do.call()
do.call(paste, c(li, collapse = " "))

# Load stringi
library('stringi')
stri_paste(unlist(li), collapse='')