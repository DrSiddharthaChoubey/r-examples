# Using R base append()
li = list('java','python')
li2 <- append(li,'r')
print(li2)

# Add element to list at specified position
li = list('java','python')
li2 <- append(li,'r',after=1)
print(li2)

# Add multiple elements to list
library('rlist')
li2 <- list.append(li,'r','50')
print(li2)

# Named List
library('rlist')
li = list(id=11,name='python')
li2 <- list.append(li,pages=34)
print(li2)

# Append list with another list
li = list('java','python')
li2 = list('r','php')
li3 <- append(li,li2)
print(li3)

li3 = c(li,li2)
print(li3)

i <- 1
while(...) {
  l[[i]] <- new_element
  i <- i + 1
}