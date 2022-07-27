# Create dataframe
df <- data.frame(id=c(1,2,3,NA),
                 address=c('Orange St','Anton Blvd','Jefferson Pkwy',''),
                 work_address=c('Main St',NA,'Apple Blvd','Portola Pkwy'))

df

# Replace String with Another Stirng on a single column
df$address[df$address == 'Orange St'] <- 'Portola Pkwy'
df

# Replace String with Another String on All Columns
df[df=="Portola Pkwy"] <- "Orange St"
df

# Replace String with another String
library(stringr)
df$address <- str_replace(df$address, "St", "Street")
print(df)

# Create new column from existing column
df['id'] <- df['id'] * 5
df

library(dplyr)    
df <- df %>% 
  mutate(address = ifelse(address == '',work_address,address))
df

# Replace column value with another based on condition
df$address[df$address == 'Orange Street'] <- df$work_address
df
library('tidyr')
df <- df %>% 
  mutate_if(is.numeric, ~replace_na(., 0))
df