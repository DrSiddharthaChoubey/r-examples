# Create Data Frame
df=data.frame(id=c(11,22,33,44,55),
          name=c("spark","python","R","jsp","java"),
          price=c(144,NA,321,567,567),
          publish_date= as.Date(
            c("2007-06-22", "2004-02-13", "2006-05-18",
              "2010-09-02","2007-07-20"))
          )
df
# Sort Data Frame
df2 <- df[order(df$price),]
df2

# Sort by multiple columns
df2 <- df[order(df$price,df$name ),]
df2

# Sort descending order
df2 <- df[order(df$price,decreasing=TRUE),]
df2

# Sort by putting NA at first
df2 <- df[order(df$price,decreasing=TRUE, na.last=FALSE),]
df2

# Load dplyr library
library(dplyr)
df2 <- df %>% arrange(price)
df2

# Load data.table library
library("data.table")
df2 <- setorder(df,price)
df2