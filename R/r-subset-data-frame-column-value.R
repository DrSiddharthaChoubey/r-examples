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

# Subset Rows by column value
df[df$gender == 'M',]
subset(df, gender == 'M')

# Subset Rows by list of column Values
df[df$state %in% c('CA','AZ','PH'),]
subset(df, state %in% c('CA','AZ','PH'))

# Subset Rows by Checking values on Multiple Columns
df[df$gender == 'M' & df$id > 15,]
subset(df, gender == 'M' & id >15)

# Subset DataFrame by column name id and name.
df[df$gender == 'M', c('id','name')]
subset(df,gender=='M',select=c('id','name'))