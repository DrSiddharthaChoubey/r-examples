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

# Select Rows by column value
df[df$gender == 'M',]

# Select Rows by list of column Values
df[df$state %in% c('CA','AZ','PH'),]

# Select Rows by Checking values on Multiple Columns
df[df$gender == 'M' & df$id > 15,]

# Using is.element()
df[is.element(df$state, c('CA','AZ','PH')),]

# Using subset
subset(df, state %in% c("CA", "AZ", "PH"))

# Using dplyr::filter
dplyr::filter(df, state %in% c("CA", "AZ", "PH"))

# Using data.table
library(data.table)
setDT(df, key = 'state')[J(c("CA", "AZ", "PH"))]