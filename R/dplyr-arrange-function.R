# Create Data Frame
df=data.frame(id=c(11,22,33,44,55),
              name=c("spark","python","R","jsp","java"),
              price=c(144,NA,321,567,567),
              publish_date= as.Date(
                c("2007-06-22", "2004-02-13", "2006-05-18",
                  "2010-09-02","2007-07-20"))
)
df

# Load dplyr library
library(dplyr)

# Using arrange in ascending order
df2 <- df %>% arrange(price)
df2


# Using arrange in descending order
df2 <- df %>% arrange(desc(price))
df2

# Using arrange by multiple columns
df2 <- df %>% arrange(price,desc(id))
df2