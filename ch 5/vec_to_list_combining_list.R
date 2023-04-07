# vec to list with as.list() (vec element -> list element)
vec <- c(1, 4, 6, 3)
list_vec <- as.list(vec)
list_vec
list_vec[[1]]

# list with scalars to vecs
as.numeric(list(1, 3, 5))

prime_factors <- list(
    two = 2,
    three = 3,
    four = c(2, 2)
)
prime_factors

unlist(prime_factors)

# Combining lists
x <- c(list(a = 1, b = 2), list(3))

# list + vec
y <- c(list(a = 1, b = 2), 1:3)
y[[4]]


# silly cbind rbind
matrix_list_hyb <- cbind(
    list(a = 1, b = 2),
    list(c = 3, list(d = 4))
)

matrix_list_hyb