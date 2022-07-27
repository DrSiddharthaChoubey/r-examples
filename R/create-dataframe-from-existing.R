# Create DataFrame
df <- data.frame(
  id = c(10,11,12,13),
  name = c('sai','ram','deepika','sahithi'),
  gender = c('M','M','F','F'),
  dob = as.Date(c('1990-10-02','1981-3-24','1987-6-14','1985-8-16')),
  state = c('CA','NY','DE','FL')
)

# Print DataFrame
df

# Select columns id, gender and dob
df2 = data.frame(df$id,df$gender,df$dob)
df2

# Create DataFrame with 1,3 and 4 columns 
df2 <- df[,c(1,3,4)]
df2

# Create DataFrame with selecting range of columns 
df2 <- df[,c(1:3,5)]
df2

# Create DataFrame with id,gender and name columns 
df2 <- df[,c('id','gender','dob')]
df2

# Create DataFrame with 1,3 and 4 rows 
df2 <- df[c(1,3,4),]
df2

# Create DataFrame with 1,3,4 rows and columns 2 and 4 
df2 <- df[c(1,3,4),c(2,4)]
df2

# By using subset with column names
df2 <- subset(df, select=c("id", "gender", "dob"))
df2

# By using subset with indices
df2 <- subset(df, select=c(2:3, 5))
df2
