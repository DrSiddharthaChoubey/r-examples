# add empty column to dataframe

# Create dataframe
df=data.frame(id=c(11,22),
              pages=c(32,45),
              name=c("spark","python"))
df

# Using $ notation
df$empty_column = NA
df

# By using bracket notation
df['empty_column'] <- NA
df

# Add empty column
df2 <- cbind(df, empty_column=NA)
df2

# Add multiple empty column
df2 <- cbind(df, empty_column1=NA,empty_column2=NA)
df2

library('tidyverse')
# using add_column()
df2 <- df %>%
  add_column(empty_column = NA)
df2

# Add multiple empty columns  
df2 <- df %>%
  add_column(col1_name = NA,
             col2_name = NA)
df2
