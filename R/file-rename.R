# R Example of File Rename
# File name to rename
filename <- 'file_name.csv'

# Check if file exists.
if(file.exists(filename)){
  # Rename file name
  file.rename(filename,'filename.csv')
}else{
  print('File Not found :')
}
