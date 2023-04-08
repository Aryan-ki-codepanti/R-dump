# subfuncs have access to vars of funcs 

f <- function(x) {
    y <- 1
    g <- function(x) {
        (x + y) / 2 # y is not formal arg of g still works
    }
    g(x)
}

f(sqrt(5))


# if g outside then error
f <- function(x) {
    y <- 1
    g(x)
}
g <- function(x) {
    (x + y) / 2 # y not found
}
# f(sqrt(5))

# get and exists for env -> var scope works in similar way 

h <- function(x) {
    x * y
}

# gives error
# h(0) 
y <- 16
h(2)

# half the times local y
h2 <- function(x) {
    if (runif(1) > 0.5) y <- 12
    x * y
}
# replicate to repeat same code multiple time
replicate(10, h2(9))