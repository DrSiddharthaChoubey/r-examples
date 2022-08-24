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

# inner join data.frames
df2 <- merge(x = emp_df, y = dept_df, by = "dept_id")

# left outer join data.frames
df2 <- merge(x = emp_df, y = dept_df, 
             by = "dept_id", all.x=TRUE)

# right outer join data.frames
df2 <- merge(x = emp_df, y = dept_df, 
             by = "dept_id", all.y=TRUE)

# full outer join data.frames
df2 <- merge(x = emp_df, y = dept_df, 
             by = "dept_id", all=TRUE)

# cross outer join data.frames
df2 <- merge(x = emp_df, y = dept_df, 
             by = NULL)

# Import
library(dplyr)
# left semi join data.frames
df2 = emp_df %>% semi_join(dept_df, by = "dept_id")
df2

# Import dplyr package
library(dplyr)
# left anti join data.frames
df2 = emp_df %>% anti_join(dept_df, by = "dept_id")
df2