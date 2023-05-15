
# a
toy_data <- read.csv("toy_dataset.csv")

# b
attach(toy_data)

# c
nrow(subset(toy_data, City == "New York City"))

# d
library(plyr)
arrange(toy_data, desc(Income))[1:5,]

# e
nrow(subset(toy_data, Income > mean(Income)))

# f
max(subset(toy_data, Gender == "Female", Income))

# g
toy_data[sample(nrow(toy_data), 10),]

#
detach(toy_data)
