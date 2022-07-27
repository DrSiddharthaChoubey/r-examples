# Using R base append()
vec = c('java','python')
vec2 <- append(vec,'r')
print(vec2)

# Add element to vector at specified position
vec = c('java','python')
vec2 <- append(vec,'r',after=1)
print(vec2)

# Add Multiple elements to Vector
vec2 <- c(vec,'r','php')
print(vec2)

# Append vector with another vector
vec = c('java','python')
vec2 = c('r','php')
vec3 <- append(vec,vec2)
print(vec3)

# Append value to empty Vector
empVec <- character()
vec2 = c(empVec,'R')
print(vec2)