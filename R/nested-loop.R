# while example
n=5
i=1
while (i <= n) {
  print(i)
  i = i + 1
}

# nested while
i=1
while (i <= 4) {
  j = 1
  while(j < 2) {
    print(i + j)
    j = j + 1
  }
  i = i + 1
}

# outer for loop
for (i in sequence) {
  # statements
  
  # inner for loop
  for(j in sequence) {
    # statements
  }
  ..
}

# outer loop
for (i in c('A','B','C')){
  # inner loop
  for (j in c('X','Y')){
    # print i & j
    if( i == 'B' && j == 'X')
      next
    print(c(i,j))
  }
}


# outer loop
i=1
while (i <= 3){
  # inner loop
  j <- 1
  while (j <= i){
    # print multiplication
    print(c(i,j))
    j <- j + 1
  }
  i <- i + 1
}


# Using list with for loop
states <- list('NY','CA',"NJ","PA","DE")
for 
for(st in states) {
  if(st == "CA")
    next
  if(st == "PA")
    break
  print(st)
}
