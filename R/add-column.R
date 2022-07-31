
# Add column to dataframe in R
# https://sparkbyexamples.com/r-programming/add-column-to-dataframe-in-r/

# Create dataframe
df=data.frame(id=c(11,22),
              pages=c(32,45),
              name=c("spark","python"))
df

# Using $ notation
chapters = c(76,86)
df$chapters = chapters
df

# By using bracket notation
chapters = c(76,86)
df['chapters'] <- chapters
df

# Add new column
chapters = c(76,86)
df2 <- cbind(df, chapters)
df2

# Add multiple columns to dataframe
chapters = c(76,86)
price=c(144,553)
df3 <- cbind(df, chapters, price)
df3

# Add new column from existing column
df$new_pages <- df$pages-2
df

library('tidyverse')
# using add_column()
df2 <- df %>%
  add_column(add_column = "constant_value")
df2

# Add empty column
df <- df %>%
  add_column(new_empty_column = NA) %>%
  
df <- df %>%
  add_column(col1_name = "col1",
             col2_name = "col2")
df
