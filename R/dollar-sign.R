#Create list
rList <- list(emp_id=c(1,2,3,4,5,6),
           name=c("Smith","Rose","Williams"),
           dept_id=c(10,20,10,10,40,50))
rList

# Access named element from list
rList$emp_id
rList$name


# Add new element to the list
rList$dept_name <- c("Finance","Marketing","Sales","IT")
rList

# Delete element from list
rList$name <- NULL
rList

# Create emp Data Frame
emp_df=data.frame(
  emp_id=c(1,2,3,4,5,6),
  name=c("Smith","Rose","Williams","Jones","Brown","Brown"),
  dept_id=c(10,20,10,10,40,50)
)
emp_df

# Add column
emp_df$dept_branch_id <- c(101,102,101,101,104,105)
emp_df

# Access column
emp_df$dept_branch_id

# Delete column
emp_df$dept_branch_id <- NULL
emp_df