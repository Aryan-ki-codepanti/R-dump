# length - no. of top lvl elements
a_list = list(
    c(1, 2, 3),
    2,
    list(2, c(1, 3)),
    sin
)
length(a_list)

# no dimensions
dim(a_list)

# nrow, NROW behaviour
nrow(a_list)
ncol(a_list)
NROW(a_list)
NCOL(a_list)


# arithmetic on list elements
l1 <- list(1:5)
l2 <- list(5:9)
l1[[1]] + l2[[1]]

l1[1]
l1[[1]]
