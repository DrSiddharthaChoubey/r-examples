# Create DataFrame
df <- data.frame(
  id = c(10,11,12,13),
  name = c('sai','ram','deepika','sahithi'),
  gender = c('M','M',NA,'F'),
  dob = as.Date(c('1990-10-02','1981-3-24','1987-6-14','1985-8-16')),
  state = c('CA','NY',NA,NA)
)
df

# Using openxslx package
library(openxlsx)
write.xlsx(df, '/Users/admin/new_file.xslx')

#using xslx package
install.packages("xlsx")
write.xlsx(df, '/Users/admin/new_file.xslx')
