
# mostly apply func on row / col
# install.packages("matlab")
library(matlab)


magic4 <- magic(4)
magic4

# row totals with rowSums()
rowSums(magic4)

# apply func for row/col wise equivalent 
# takes matrix ,dim no., func
# dim no. : 1(rowwise) , 2 (colwise) , ... higher dims (higher arrays)

apply(magic4, 1, mean)
apply(magic4, 1, toString)


# used on dfs also
(baldwins <- data.frame(
    name = c("Alec", "Daniel", "Billy", "Stephen"),
    date_of_birth = c("1958-Apr-03", "1960-Oct-05", "1963-Feb-21", "1966-May-12"),
    n_spouses = c(2, 3, 1, 1),
    n_children = c(1, 5, 3, 2),
    stringsAsFactors = FALSE
))

apply(baldwins, 1, toString)
x <- apply(baldwins, 2, toString)
class(x)
names(x)
x

# df on col like sapply to df

sapply(baldwins, toString)
sapply(baldwins, range)