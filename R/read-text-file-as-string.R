
# Read text file into string
file_str <- paste(readLines("/users/admin/file.txt"), collapse="\n")
file_str

# Using readr package
library(readr)
file_str <- read_file("/users/admin/file.txt")

# Read Text File as String
text_file <- '/users/admin/file.txt'
file_str = readChar(text_file, file.info(text_file)$size)

