
greek <- switch(
    "gamma",
    alpha = 1,
    beta = sqrt(-2),
    gamma = {
    a <- sin(pi / 3)
    4 * a ^ 2
})

greek
# no match returns nulllllllll
(greek <- switch(
    "d",
    alpha = 1,
    beta = sqrt(-2),
    gamma = {
    a <- sin(pi / 3)
    4 * a ^ 2
}
))

# unnamed arg for no match
(greek <- switch(
    "d",
    alpha = 1,
    beta = sqrt(-2),
    gamma = {
    a <- sin(pi / 3)
    4 * a ^ 2
},
    "default arg"
))

# switch with int match acc to pos
switch(
    3,
    "first",
    "second",
    "third",
    "d"
)

# big nums use characters lol
switch(
    as.character(123456),
    "123456" = "big num",
    "default"
)