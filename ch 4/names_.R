
x <- c(apple = 1, banana = 2, "kiwi fruit" = 4, 50)
names(x)

# giving names later
names(x) <- c("a1", "a2")
x
names(x)

# No names give null
names(1:4)