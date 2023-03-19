# indexing with []

x <- (1:5) ^ 2
x

x[c(1, 3, 5)]
x[c(-2, -4)]
x[c(TRUE, FALSE, TRUE, FALSE, TRUE)]

names(x) <- c(
    "first",
    "second",
    "third",
    "fourth",
    "fifth"
)

x[c("first", "third", "fifth")]


# Error
# x[c(1, -1)]

# missing indices -> missin values
x[c(1, NA, 5)]
x[c(TRUE, NA, TRUE, FALSE, FALSE)]
# x[c(-1, NA)] # error

# out of bounds 
x[9]

# floor
x[1.99]
# ceil
x[-1.4]

# No indices -> whole vec
x[]

# which -> returns locations
which(x > 10)
x[which(x > 10)]


which.min(x)
which.max(x)