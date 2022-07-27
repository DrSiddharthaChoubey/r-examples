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

# Select Rows by Index
df[3,]

#Select Rows by List of Index Values
df[c(3,4,6),]

#Select Rows by Index Range
df[3:6,]


# Select first N rows
head(df,3)

# Select last N rows
tail(df,3)