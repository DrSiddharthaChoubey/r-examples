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

# subset by row name
subset(df, subset=rownames(df) == 'r1') 

# subset row by vector of row names
subset(df, rownames(df) %in% c('r1','r2','r3'))

# subset by condition
subset(df, gender == 'M')

# subset by condition with %in%
subset(df, state %in% c('CA','DC'))

# subset by multiple conditions using |
subset(df, gender == 'M' | state == 'PH')

# subset by multiple conditions using &
subset(df, gender == 'M' & state %in% c('CA','NY'))

# subset Rows by Index
df[3,]

# subset Rows by List of Index Values
df[c(3,4,6),]

# subset Rows by Index Range
df[3:6,]

# subset Rows by column value
df[df$gender == 'M',]

# subset Rows by vector of Values
df[df$state %in% c('CA','AZ','PH'),]

# subset Rows by Checking multiple conditions
df[df$gender == 'M' & df$id > 15,]

# Using dplyr::filter
dplyr::filter(df, state %in% c("CA", "AZ", "PH"))

# Subset columns by Name
subset(df,gender=='M',select=c('id','name','gender'))

# subset columns by Index
subset(df,gender=='M',select=c(1,2,3))

# subset columns with indices 2 & 3
df[,c(2,3)]

# subset columns name and gender
df[,c('name','gender')]