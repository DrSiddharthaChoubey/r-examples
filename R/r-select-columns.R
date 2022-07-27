# Create DataFrame
df <- data.frame(
  id = c(10,11),
  name = c('sai','ram'),
  gender = c('M','M'),
  dob = as.Date(c('1990-10-02','1981-3-24')),
  state = c('CA','NY'),
  row.names=c('r1','r2')
)
df
# R base - Select columns by name
df[,"name"]

# R base - Select columns from list
df[,c("name","gender")]

# R base - Select columns by index position
df[,c(2,3)]

# R base - Select columns by index position
df[,2:2]

# Load dplyr 
library('dplyr')

# dplyr - Select columns by list of index or position
df %>% select(c(2,3))
# Select columns by index range
df %>% select(2:3)


# dplyr - Select columns by label name & gender
df %>% select('name','gender')
df %>% select(c('name','gender'))


# dplyr - Select columns except name & gender
df %>% select(-c('name','gender'))

# dplyr - Select columns between name and state
df %>% select('name':'state')

# dplyr - Select columns starts with a string
df %>% select(starts_with('gen'))

# dplyr - Select columns not start with a string
df %>% select(-starts_with('gen'))

# dplyr - Select columns that ends with a string
df %>% select(ends_with('e'))

# dplyr - Select columns that contains
df %>% select(contains('a'))

# dplyr - Select all numeric columns
df %>% select_if(is.numeric)