l <- list(
    first = 1,
    second = 2,
    third = list(
        alpha = 3.1,
        beta = 3.2
    )
)

#indexing like before

# [] Returns list
l[1:2]
l[-3]
l[c("first", "second")]
l[c(TRUE, TRUE, FALSE)]

# [[]] actually returns list elements but for single +ve idx/single name
print("other")
l[[3]]
l[["third"]]

# check
is.list(l[1])
is.list(l[[1]])

# named access = $ (pattern matching too)
l$first
l$f

# nested element access
l[["third"]]["beta"]
l[["third"]][["beta"]]
l[[c("third", "alpha")]]

# bad indexing
print("bad indexing")
l[c(3, 2, 4)]
l[c("fourth", "second", "fifth")]

l[["fourth"]]
l["fourth"]
l$fourth

# error with numerical indices
l[4]
l[[4]]