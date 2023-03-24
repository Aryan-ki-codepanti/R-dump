a_mat <- matrix(
    1:12,
    nrow = 3,
    dimnames = list(
        c("r1", "r2", "r3"),
        c("c1", "c2", "c3", "c4")
    )
)

b_mat <- matrix(
    1:12,
    nrow = 3,
    dimnames = list(
        c("r4", "r5", "r6"),
        c("c5", "c6", "c7", "c8")
    ), byrow = TRUE
)

# a_mat
# b_mat

# arithmetic op + - * / work element wise on matrix arrays like vecs

a_mat + b_mat
a_mat * b_mat

# conformable matrices can be performed operators i.e same dimensions

# transpose - t()
t(a_mat)

# u and v are column vectors with the same size, then uT v is the inner product of u and v; if u and v are column vectors of any size, then uvT is the outer product of u and v.
# https://math.stackexchange.com/questions/2869605/distinguishing-between-inner-product-and-outer-product-in-matrix-notation

# inner multiplication   (normal) 
a_mat %*% t(a_mat)

# outer multiplication   
1:3 %o% 4:6
outer(1:3, 4:6)

# power op works element wise 
a_mat^2
a_mat^-1 

# but inv cant be obtained by ^-1 use solve for it

sq_mat <- matrix(c(1, 0, 1, 5, -3, 1, 2, 4, 7), nrow = 3)
sq_mat
sq_mat^-1
inv_mat <- solve(sq_mat)

sq_mat %*% inv_mat
