
# Read CSV into DataFrame
read_csv = read.csv('/Users/admin/file.csv')

# Read with custom delimiter
read_csv = read.csv('/Users/admin/file.csv',sep=',')

# Read without header
read_csv = read.csv('/Users/admin/file_noheader.csv',header=FALSE)

# Set Column Names
colnames(read_csv) = c('id','name','dob','gender')
str(read_csv)

# Replaces all -1 and empty string as <NA>
read_csv = read.csv('/Users/admin/file.csv',na.strings=c(-1,''))

# Keep String as Character.
read_csv = read.csv('/Users/admin/file_noheader.csv', stringsAsFactors='FALSE')

# Use UTF-8 encoding
read_csv = read.csv('/Users/admin/file_noheader.csv', encoding='utf-8')

# Using read.table()
read_csv = read.table('/Users/admin/file.csv')
print(read_csv)
