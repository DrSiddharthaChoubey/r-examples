#create dataframe with 5 rows and 3 columns
df=data.frame(id=c(1,2,3,4,5),
              name=c('sravan','srinu','chrisa','shivgami','jim'),
              gender=c('m','m','f','f','m'))

#display dataframe
df

#delete 4th row
df2 <- df[-4,]
df2

#delete 4th,5th and 1st rows
df2 <- df[-c(4,5,1),]
df2

# delete rows by range
df2 <- df[-(1:3),]
df2

# delete rows by name
df2 <- df[!(row.names(df) %in% c("1","2")),]
df2

#Remove rows with column id less than equal 2
df2 <- subset(df,id > 2 )
df2

#Remove rows where gender not equal to 'm'
df2 <- subset(df,gender=='m' )
df2