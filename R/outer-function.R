# Outer Function Example

# Outer product of single Vector
x <- 1:6
y <- 2
res <- outer(x,y)
print(res)

# Outer product of two vectors
x <- 2:5
y <- 3:6
print(x)
print(y)
res <- outer(x,y, "+")
print(res)

# Outer with custom function
fun1 <- function(x,y){
  return ((x + y) * 2)
}
res2 <- outer(x,y, fun1)
print(res2)

# Outer product of character vectors
x <- c('AB','CD')
y <- c('X','Y')
fun1 <- function(x,y){
  return (paste(x, y, sep="_"))
}
res2 <- outer(x,y, fun1)
print(res2)
