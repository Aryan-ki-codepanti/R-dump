
# simplest if()
if (TRUE)
    print("TREU GEllo")
if (FALSE)
    print("FALSE GEllo")

# not allowed missing vals in if
# if (NA)
#     print("NA GEllo")

if (is.na(NA))
    print("Values missing")

if (runif(1) > 0.5)
    print("More than five")

# multiple statements {}
x <- 3
if (x > 2) {
    y <- 2 * x
    z <- 3 * y
}

# else statement 
# important thing to remember is that the else statement must occur on the same  line as the closing curly brace from the if clause. else error
if (runif(1) > 0.5) {
    print("IF More than five")
} else
    print("Less More than five")

# multiple if else if else

r <- round(rnorm(2), 1)
x <- r[1] / r[2]

if (is.nan(x) || is.na(x)) {
    message("x is missing")
} else if (is.infinite(x)) {
    message("x is inf")
} else if (x > 0) {
    message("x is +ve")
} else if (x < 0) {
    message("x is -ve")
} else {
    message("x is 0")
}

# conditional ass
x <- sqrt(-1 + 0i)
reality <- if (Re(x) == 0) "real" else "imaginary"
reality