# Create DataFrame
df <- data.frame(
  id = c(10,11,12,13),
  name = c('sai','ram','deepika','sahithi'),
  gender = c('M','M',NA,'F'),
  dob = as.Date(c('1990-10-02','1981-3-24','1987-6-14','1985-8-16')),
  state = c('CA','NY',NA,NA)
)

df

# Export to CSV without row names
write.csv(df,file='/Users/admin/new_file.csv', row.names=FALSE)

# Export to CSV with blank for NA
write.csv(df,file='/Users/admin/new_file.csv',na='')

# Export to CSV without quotes
write.csv(df,file='/Users/admin/new_file.csv',quote=FALSE)

# Export to CSV without header
write.table(df,file='/Users/admin/new_file.csv',col.names=FALSE)

# Write with UTF-8 Encoding
write.csv(df,file='/Users/admin/new_file.csv',fileEncoding = "UTF-8")

# Load readr package
library(readr)
# Write to CSV file
write_csv(df, "/Users/admin/new_file.csv")

# Load data.table package
library(data.table)
# Write to CSV file
fwrite(df, "/Users/admin/new_file.csv")


