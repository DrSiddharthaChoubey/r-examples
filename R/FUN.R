# Using FUN with lapply()
vec <- c('JAVA','R','PYTHON','PHP')
print(vec)
res <- lapply(vec, FUN=tolower)
res

# function to split and get the first part
getLang <- function(str) { 
  return (unlist(strsplit(str,'_'))[1])
}

# create vector
vec <- c('JAVA_LANG','R_LANG','PYTHON_LANG','PHP_LANG')
vec

# apply function
res <- lapply(vec, FUN=getLang)
res

# function to split and get the first part
getLang <- function(str="", delimiter=',') { 
  return (unlist(strsplit(str,delimiter))[1])
}

# create vector
vec <- c('JAVA_LANG','R_LANG','PYTHON_LANG','PHP_LANG')
vec

# apply function
res <- lapply(vec, FUN=getLang,delimiter='_')
res