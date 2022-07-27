# Create DataFrame
df <- data.frame(
  id = c(10,11,12,13,14,15,16,17),
  name = c('sai','ram','deepika','sahithi','kumar','scott','Don','Lin'),
  gender = c('M','M',NA,'F','M','M','M','F'),
  dob = as.Date(c('1990-10-02','1981-3-24','1987-6-14','1985-8-16',
                  '1995-03-02','1991-6-21','1986-3-24','1990-8-26')),
  state = c('CA','NY',NA,NA,'DC','DW','AZ','PH'),
  row.names=c('r1','r2','r3','r4','r5','r6','r7','r8')
)
df

# subset of rows
subset(df, rownames(df) == 'r1')

# subset of rows
subset(df, rownames(df) %in% c('r1','r2','r3'))

# subset by condition
subset(df, gender=='M')

# subset by condition
subset(df, state %in% c('CA','DC'))

# subset by multiple conditions
subset(df, gender=='M' | state == 'PH')

# subset by multiple conditions
subset(df, gender=='M' & state %in% c('CA','NY'))

#subset columns
subset(df,gender=='M',select='id')

#subset columns
subset(df,gender=='M',select=c('id','name','gender'))

#subset columns
subset(df,gender=='M',select=c(1,2,3))