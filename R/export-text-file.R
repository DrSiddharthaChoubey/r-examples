
# Create DataFrame
df <- data.frame(
  id = c(10,11,12,13),
  name = c('sai','ram','deepika','sahithi'),
  gender = c('M','M',NA,'F'),
  dob = as.Date(c('1990-10-02','1981-3-24','1987-6-14','1985-8-16')),
  state = c('CA','NY',NA,NA)
)
df

# Write tab delimiter text file
write.table(df,"/Users/admin/fileOut.txt")

# Write comma delimiter text file
write.table(df,"/Users/admin/fileOut.txt", sep=",")

# Ignore row names/numbers
write.table(df,"/Users/admin/fileOut.txt", row.names=FALSE)

# All NA replaced with specified string
write.table(df,"/Users/admin/fileOut.txt", na='')

# Write with UTF-8 encoding
write.table(df,"/Users/admin/fileOut.txt", fileEncoding='UTF-8')

