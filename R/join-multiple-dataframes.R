# Create Emp Data Frame
emp_df=data.frame(
  emp_id=c(1,2,3,4,5,6),
  name=c("Smith","Rose","Williams","Jones","Brown","Brown"),
  superior_emp_id=c(-1,1,1,2,2,2),
  dept_id=c(10,20,10,10,40,50)
)

# Create dept Data Frame
dept_df=data.frame(
  dept_id=c(10,20,30,40),
  dept_name=c("Finance","Marketing","Sales","IT")
)

# Create address table
add_df=data.frame(
  dept_id=c(10,20,30,40),
  city=c("Newark","Willmington","Los Angeles","Sandiago"),
  state=c("NY","DE","CA","CA")
)

emp_df
dept_df
add_df

# Load tidyverse package
library(tidyverse)

# Join multiple data.frames
list_df = list(emp_df,dept_df,add_df)
df2 <- list_df %>% reduce(inner_join, by='dept_id')
df2

