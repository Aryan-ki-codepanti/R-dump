
# sort() func sorts the vec (using shellsort)
x <- c(2, 32, 4, 16, 8)
sort(x)
sort(x, decreasing = TRUE)

# lol
sort(x, method = "quick")

# strings
sort(c("I", "shot", "the", "city", "sheriff"))

# order func returns indices from x that it will have after sorting (ith order stat)
# x[order(x)] returns same result as sort(x)

order(x)
x[order(x)]
identical(x[order(x)], sort(x))

# order is usefull for sorting dfs where sort cant be done directly

data("english_monarchs", package = "learningr")
english_monarchs$length.of.reign <- with(english_monarchs, end.of.reign - start.of.reign)
reign_order <- order(english_monarchs$length.of.reign, decreasing = TRUE)
head(english_monarchs[reign_order, c("name")])



# one line alternative arrange of plyr
library(plyr)
head(arrange(english_monarchs, start.of.reign), 10)

# rank gives rank of each element
(x <- sample(3, 7, replace = TRUE))

rank(x)
rank(x, ties.method = "first")