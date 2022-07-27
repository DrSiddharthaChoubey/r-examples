# Use data.table package
library(data.table)
df <- 
  list.files(path = "/Users/admin/apps/csv-courses/", pattern = "*.csv") %>% 
  map_df(~fread(.))
df

# Using tidyverse
library(tidyverse)
df <-
  list.files(path = "/Users/admin/apps/csv-courses/", pattern = "*.csv") %>% 
  map_df(~read_csv(.))
df

# Using readr package
library(readr)
list_csv_files <- list.files(path = "/Users/admin/apps/csv-courses/")
df2 <- readr::read_csv(list_csv_files, id = "file_name")
df2

# Using read.csv()
list_csv_files <- list.files(path = "/Users/admin/apps/csv-courses/")
df2 = do.call(rbind, lapply(list_csv_files, function(x) read.csv(x, stringsAsFactors = FALSE)))
df2



