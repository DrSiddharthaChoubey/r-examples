# Create DataFrame
df <- data.frame(
  id = c(10,11,12,13,14,15,16,17),
  name = c('sai','ram','deepika','sahithi','kumar','scott','Don','Lin'),
  gender = c('M','M','F','F','M','M','M','F'),
  dob = as.Date(c('1990-10-02','1981-3-24','1987-6-14','1985-8-16',
                  '1995-03-02','1991-6-21','1986-3-24','1990-8-26')),
  state = c('CA','NY',NA,NA,'DC','DW','AZ','PH')
)
df

# Select Rows by equal condition
df[df$gender == 'M',]

# Select Rows by not equal condition
df[df$gender != 'M',]

# Select Rows by Multiple Conditions
df[df$gender == 'M' & df$id > 15,]

# Select rows based on list
df[df$id %in% c(13,14,15),]