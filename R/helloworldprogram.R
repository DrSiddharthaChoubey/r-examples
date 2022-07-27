#Create dataframe with 5 rows and 3 columns
# Create dataframe
my_dataframe=data.frame(
  name=c('sravan',NA,'chrisa','shivgami',NA),
  gender=c(NA,'m',NA,'f',NA))

#Example 1 - Replace na values with blank using is.na()
my_dataframe[is.na(my_dataframe)] <- ""
print(my_dataframe)

#Example 2 - By using replace() & is.na()
my_dataframe <- replace(my_dataframe, is.na(my_dataframe), "")
print(my_dataframe)

#Example 3 - Another way using %>%
my_dataframe <- my_dataframe %>% replace(is.na(.), "")
print(my_dataframe)