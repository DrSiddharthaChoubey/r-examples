# Create dataframe
df=data.frame(id=c(11,22,33,44,55),
              pages=c(32,45,33,22,56),
              name=c("spark","python","R","java","jsp"),
              chapters=c(76,86,11,15,7),
              price=c(144,553,321,567,890))

# Display the dataframe
print(df)

# Remove Columns by Index
df2 <- df[,-2]
df2

# Remove Columns by Range
df2 <- df[,-2:-4]
df2

# Remove Multiple columns
df2 <- df[,-c(2,3)]
df2

# Remove  Columns in List
df2 <- df[,!names(df) %in% c("id", "name", "chapters")]
df2

# Remove using subset
df2 <- subset(df, select = -c(id, name, chapters))
df2

# Load the dplyr package
library("dplyr")
# Remove columns using select()
df2 <-df %>% select(-c(id, name, chapters))
df2

# Remove columns by Range
df2 <-df %>% select(-(id:chapters))
df2

# Remove columns contains character
df2 <-df %>% select(-contains('apt'))
df2

# Remove columns starts with
df2 <-df %>% select(-starts_with('c'))
df2

# Remove columns ends with
df2 <-df %>% select(-ends_with('e'))
df2

# Remove columns using  within()
df2 <- within(df, rm(id, name, chapters))