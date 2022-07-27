
address_str <- "127 Anton Blvd, Apt #7 - Wilmington, DE"

# Remove Single Character
new_str <- gsub(',','',address_str)
print(new_str)

# Remove Multiple Characters
new_str <- gsub('[AntonApt]','',address_str)
print(new_str)

# Remove Special Characters
new_str <- gsub('[^[:alnum:] ]','',address_str)
print(new_str)

new_str <- gsub('[\t\n]','',address_str)
print(new_str)