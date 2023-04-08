# func name gives its body
rt

# func
hypotenuse <- function(x, y) {
    sqrt(x ^ 2 + y ^ 2)
}
a = hypotenuse(5, 7)
a

# one liner body so can omit {}
other_f <- function(x, y) sqrt(x ^ 2 + y ^ 2)

# positional args
hypotenuse(4, 5)
# named args
hypotenuse(y = 4, x = 5)

# default args
hypotenuse <- function(x = 6, y = 9)
    sqrt(x ^ 2 + y ^ 2)

hypotenuse()

# formals -> args of fun but args() does more readable, formalArgs() char names of args
formals(hypotenuse)
args(hypotenuse)
formalArgs(hypotenuse)

# body() for body func
bd <- body(hypotenuse)
bd
deparse(bd)

# default args not only consts but code also

normalize <- function(x, m = mean(x), s = sd(x))
    (x - m) / s

normalized <- normalize(c(2, 5, 2, 3, 6, 7))
mean(normalized)
sd(normalized)

# gives all NA
normalize(c(1, 3, 5, NA))

# so use na.rm param

normalize <- function(x, m = mean(x, na.rm = na.rm), s = sd(x, na.rm = na.rm), na.rm = FALSE)
    (x - m) / s


normalize(c(1, 3, 5, NA))
normalize(c(1, 3, 5, NA), na.rm = TRUE)



# or saving us
normalize <- function(x, m = mean(x, ...), s = sd(x, ...), ...)
    (x - m) / s

normalize(c(1, 3, 5, NA))
normalize(c(1, 3, 5, NA), na.rm = TRUE)