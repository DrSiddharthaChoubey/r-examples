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

# R base - select column by index position
df[,2]
# R base - Select columns by index position
df[,c(2,3)]

# R base - Select columns by range
df[,2:5]

# Load dplyr 
library('dplyr')

# Select column by index position
df %>% select(2,3,5)

# dplyr - Select columns by list of index or position
df %>% select(c(2,3))

# Select columns by index range
df %>% select(2:4)