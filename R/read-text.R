# Read text file
df = read.table('/Users/admin/file.txt',sep='\t')
print(df)

# Read text file with header
df = read.table('/Users/admin/file.txt',sep='\t', header=TRUE)
print(df)


# Read text file with custom columns
col_names= c('id_col','name_col','dob_col','gender_col')
df = read.table('/Users/admin/file.txt',sep='\t', header=TRUE,col.names = col_names)
print(df)

# Skip first 2 rows
df = read.table('/Users/admin/file.txt',sep='\t', skip = 2)
df