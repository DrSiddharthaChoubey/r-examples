# R Example of Add Row to DataFrame

# Create dataframe
df=data.frame(id=c(11,22),
              pages=c(32,45),
              name=c("spark","python"))
df

# Add Row to the DataFrame
# This converts all types to string
df[nrow(df) + 1,] <- c(33, 50, "java")
df
str(df)
# Add Row to the DataFrame 
# with out changing data types
df[nrow(df) + 1,] <- list(33, 50, "java")
df

# Add Row using rbind()
new_row = list(id = 33, pages=50, name = "java")
df3 = rbind(df,new_row)
df3
str(df3)
# Add data.frame with another
df2 = data.frame(id = 33, pages=50, name = "java")
df3 = rbind(df,df2)
df3

# using tibble/tidyverse
library(tidyverse)
df2 <- df %>% 
   add_row(id = 33, pages=50, name = "java")
df2

# Using dplyr
library(dplyr)
df2 = data.frame(id = 33, pages=50, name = "java")
df3 <- df %>% 
  rows_insert(df2)
df3
