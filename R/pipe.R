# add function
add <- function(x,y) {
  return (x + y)
}
# multiply function
mul <- function(x,y) {
  return (x * y)
}
# div function
div <- function(x,y) {
  return (x / y)
}

# calling functions sequentially
res1 <- add(2,4)
res2 <- mul(res1,8)
res3 <- div(res2,2)
print(res3)

# using nesting
res <- div(mul(add(2,4),8),2)
print(res)  

# using pipe
res <- add(2,4) %>% mul(8) %>% div(2)
print(res)

# create DataFrame
df <- data.frame(
  id = c(10,11,12,13),
  name = c('sai','ram','deepika','sahithi'),
  gender = c('M','M','F','F'),
  dob = as.Date(c('1990-10-02','1981-3-24','1987-6-14','1985-8-16')),
  state = c('CA','NY',NA,NA),
  row.names=c('r1','r2','r3','r4')
)
df

# Load dplyr library
library('dplyr')

# filter() by row name & select id and name columns
df2 <- df %>% filter(rownames(df) == 'r3') %>% select(c('id','name'))
print(df2)