
prime_factors <- list(
    two = 2,
    three = 3,
    four = c(2, 2),
    five = 5,
    six = c(2, 3),
    seven = 7,
    eight = c(2, 2, 2)
)

head(prime_factors)

# using loops to find unique
unique_primes <- vector("list", length(prime_factors))
for (i in seq_along(prime_factors))
    unique_primes[[i]] = unique(prime_factors[[i]])
names(unique_primes) <- names(prime_factors)
# unique_primes


# lapply - list apply : takes list , function and applies to every element of list returns new list
message("Lapply")
lapply(prime_factors, unique)

# vapply when output is of same size for each : list apply that returns vector of outputs
# takes third arg as template for output
# vapply(prime_factors, unique, numeric(1)) : error
vapply(prime_factors, length, numeric(1))

# sapply : simplyfying list apply
# doesnt need template
# res is array/vec

sapply(prime_factors, unique) # list
sapply(prime_factors, length) #vec
sapply(prime_factors, summary) #array


# sapply returns empty list for 0 len input regardless of type of input
sapply(list(), length)
sapply(list(), unique)

# safer vapply
vapply(list(), length, numeric(1))

# can take vec inputs too

# source() runs r file dir() lists content of given dir default to cwd
# r_files <- dir("\\.R$")
# r_files <- dir()
# lapply(r_files, source)


# 1vec arg and 1 scalar named args

complemented <- c(2, 3, 6, 18)
lapply(complemented, rep.int, times = 4)
vapply(complemented, rep.int, times = 4, numeric(4))
sapply(complemented, rep.int, times = 4)

rep4x <- function(x) rep.int(4, times = x)
lapply(complemented, rep4x)

# anonymous func
lapply(complemented, function(x) rep.int(4, times = x))

# looping every variable in env w/ eapply or lapply
env <- new.env()
env$molien <- c(1, 0, 1, 0, 1, 1, 2, 1, 3)
env$larry <- c("Really", "lerry", "rarely", "Larry")

eapply(env, length)
lapply(env, length)

# rapply : recursive lapply for nested list

li <- list(
    a = list(b = 2, c = 3),
    d = 4
)
rapply(li, message)