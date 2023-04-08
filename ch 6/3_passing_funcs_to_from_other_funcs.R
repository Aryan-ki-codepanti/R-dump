
# do.call takes func, args_list lmaoo

hypotenuse <- function(x = 4, y = 5)
    sqrt(x ^ 2 + y ^ 2)

do.call(hypotenuse, list())
do.call(hypotenuse, list(x = 2, y = 1))

# w/ rbind
df1 <- data.frame(x = 1:5, y = rt(5, 1))
df2 <- data.frame(x = 6:10, y = rf(5, 1, 1))
df3 <- data.frame(x = 11:15, y = rbeta(5, 1, 1))

do.call(rbind, list(df1, df2, df3))

# directly use func in args
x <- c(3, 5, 6, 2, 12)
mean(x)
mean(c(3, 5, 6, 2, 12))

# anonymous funcs
add <- function(x, y) x + y
do.call(add, list(2, 4))
# same as 
do.call(function(x, y) x + y, list(2, 4))

# returning funcs rare but ecdf -> empirical cum distri. func of vec
emp_cum_dist_fn <- ecdf(rnorm(50))
is.function(emp_cum_dist_fn)
plot(emp_cum_dist_fn)