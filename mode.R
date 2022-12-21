
# Create mode() function to calculate mode
mode <- function(x, na.rm = FALSE) {
  
  if(na.rm){ #if na.rm is TRUE, remove NA values from input x
    x = x[!is.na(x)]
  }
  
  val <- unique(x)
  return(val[which.max(tabulate(match(x, val)))])
}

# Create Data Frame
df=data.frame(id=c(11,22,33,44,55),
              name=c("spark","python","R","jsp","R"),
              price=c(144,NA,144,567,567))
df

# Usage of mode() Function
mode(df$id)
mode(df$name)
mode(df$price)

v1 <- c(1,22,3,5,3,1)
mode(v1)

v2 <- c("AA","BB","CC","AA","CC","CC")
mode(v2)

v3 <- c(144,NA,144,567,567)
mode(v3)