# Create DataFrame
df <- data.frame(
  id = c(10,11,12,13,14,15,16,17),
  name = c('sai','ram','deepika','sahithi','kumar','scott','Don','Lin'),
  gender = c('M','M','F','F','M','M','M','F'),
  dob = as.Date(c('1990-10-02','1981-3-24','1987-6-14','1985-8-16',
                  '1995-03-02','1991-6-21','1986-3-24','1990-8-26')),
  state = c('CA','NY',NA,NA,'DC','DW','AZ','PH'),
  row.names=c('r1','r2','r3','r4','r5','r6','r7','r8')
)
df

# Load dplyr library
library('dplyr')

# Select rows 2 and 3
df2 <- df %>% slice(2,3)
df2

# Select rows from list
df2 <- df %>% slice(c(2,3,5,6))
df2

# select rows by range
df2 <- df %>% slice(2:6)
df2

# Drop rows using slice()
df2 <- df %>% slice(-2,-3,-4,-5,-6)
df2

# Drop by range
df2 <- df %>% slice(-2:-6)
df2