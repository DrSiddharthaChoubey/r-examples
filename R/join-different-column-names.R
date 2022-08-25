# Create emp Data Frame
emp_df=data.frame(
  emp_id=c(1,2,3,4,5,6),
  name=c("Smith","Rose","Williams","Jones","Brown","Brown"),
  emp_dept_id=c(10,20,10,10,40,50),
  emp_dept_branch_id= c(101,102,101,101,104,105)
)

# Create dept Data Frame
dept_df=data.frame(
  dept_id=c(10,20,30,40),
  dept_name=c("Finance","Marketing","Sales","IT"),
  dept_branch_id= c(101,102,103,104)
)

emp_df
dept_df

# Using merge
df2 <- merge(x=emp_df,y=dept_df, by.x=c("emp_dept_id","emp_dept_branch_id"), 
             by.y=c("dept_id","dept_branch_id"))
df2

# Using dplyr
library(dplyr)
df2 <- emp_df %>% inner_join( dept_df, 
        by=c('emp_dept_id'='dept_id', 'emp_dept_branch_id'='dept_branch_id'))
df2


