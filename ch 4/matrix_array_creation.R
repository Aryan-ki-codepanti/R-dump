
# Array pass elements vector, dimensions and its names (optional)
three_d_arr <- array(
    1:24,
    dim = c(4, 3, 2),
    dimnames = list(
        c("one", "two", "three", "four"),
        c("a", "b", "c"),
        c("hi", "hello")
    )
)

class(three_d_arr)

# three_d_arr


# Matrix - 2D array, col wise

mat <- matrix(
    1:12,
    nrow = 3,
    dimnames = list(
        c("ho", "la", "ro"),
        c("one", "two", "three", "four")
    )
)

class(mat)

b_mat <- array(
    1:12,
    dim = c(3, 4),
    dimnames = list(
        c("ho", "la", "ro"),
        c("one", "two", "three", "four")
    )
)
mat
b_mat
class(b_mat)
# They are identical if dimnames and dims are same
identical(b_mat, mat)


# fill by col is default , specify byrow = TRUE for by row
c_mat <- matrix(
    1:12,
    nrow = 3,
    dimnames = list(
        c("ho", "la", "ro"),
        c("one", "two", "three", "four")
    ), byrow = TRUE
)
c_mat