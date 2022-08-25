# Create emp Data Frame
emp_df=data.frame(
  emp_id=c(1,2,3,4,5,6),
  name=c("Smith","Rose","Williams","Jones","Brown","Brown"),
  superior_emp_id=c(-1,1,1,2,2,2),
  dept_id=c(10,20,10,10,40,50),
  dept_branch_id= c(101,102,101,101,104,105)
)

# Create dept Data Frame
dept_df=data.frame(
  dept_id=c(10,20,30,40),
  dept_name=c("Finance","Marketing","Sales","IT"),
  dept_branch_id= c(101,102,103,104)
)

emp_df
dept_df

# full join
df2 <- merge(x=emp_df,y=dept_df, 
             by="dept_id", all=TRUE)
df2


# Using merge with same column names
df2 <- merge(x=emp_df,y=dept_df, 
             by=c("dept_id","dept_branch_id"), all=TRUE)

df2

# R join multiple columns
df2 <- merge(x=emp_df,y=dept_df, by.x=c("dept_id","dept_branch_id"), 
             by.y=c("dept_id","dept_branch_id"),
             all=TRUE)
df2

# Load dplyr package
library(dplyr)

# Using dplyr - full join multiple columns
df2 <- emp_df %>% full_join( dept_df, 
            by=c('dept_id','dept_branch_id'))
df2

# Load tidyverse package
library(tidyverse)

# full Join  data.frames
list_df = list(emp_df,dept_df)
df2 <- list_df %>% reduce(full_join, by='dept_id')
df2