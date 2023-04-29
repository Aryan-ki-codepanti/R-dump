# get current working directory
getwd()

# sets current working directory
# setwd("E:/college")
# getwd()

p1 <- "E:\\college"
# cat(p1)

# other way
file.path("E:", "college")
R.home()

# relative -> abs paths 
path.expand(".")
path.expand("../ch6")
path.expand("~")

file_name <- "E:/college"
basename(file_name) # file name w/o parent info
dirname(file_name) # parent dir info w/o file name 