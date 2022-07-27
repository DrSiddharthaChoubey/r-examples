
# Example 1 - using writeLines()
file_conn = file("/Users/admin/textFile.txt")
writeLines(c("I Love R Programming","I live in USA"), file_conn)
close(fileConn)
file.show("/Users/admin/textFile.txt")

# Example 2 - Using with out file connection
writeLines(c("I Love R Programming","I live in USA"), 
              "/Users/admin/textFile.txt")

# Example 3 - Using string
text ='I Love R Programming \nI live in USA'
writeLines(text, "/Users/admin/textFile.txt")

# Example 4 - using sink()
sink("/Users/admin/textFile.txt")
cat("I Love R Programming")
cat("\n")
cat("I live in USA")
sink()

# Example 5 - Using cat()
cat("I Love R Programming",file="outfile.txt",sep="\n")
cat("I live in USA",file="/Users/admin/textFile.txt",append=TRUE)

# Example 6 - Using tidyverse
library(tidyverse)
c('I Love R Programming', 'I live in USA') %>% 
    write_lines( "/Users/admin/textFile.txt")