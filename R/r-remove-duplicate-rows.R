# Create dataframe
df=data.frame(id=c(11,11,33,44,44),
              pages=c(32,32,33,22,22),
              name=c("spark","spark","R","java","jsp"),
              chapters=c(76,76,11,15,15),
              price=c(144,144,321,567,567))
df

# Remove duplicate rows
df2 <- df[!duplicated(df), ]
df2

# Remove duplicates by single column
df2 <- df[!duplicated(df$id), ]
df2

# Remove duplicates on selected columns
df2 <- unique( df[ , c('id','pages','chapters','price') ] )
df2

# Using dplyr
# Remove duplicate rows (all columns)
library(dplyr)
df2 <- df %>% distinct()
df2

#Remove duplicates on selected columns
df2 <- df %>% distinct(id,pages)
df2

#Remove duplicates on selected columns
df2 <- df %>% distinct(id,pages,.keep_all = TRUE)
df2

#Remove duplicates on specific column
df2 <- df %>% distinct(id, .keep_all = TRUE)
df2



# using data.table
library(data.table)
dt <- data.table(df)
#Remove duplicates on specific column
dt2 <- unique(dt, by = "id")
dt2
