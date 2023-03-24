three_d_arr <- array(
    1:12,
    dim = c(3, 2, 2),
    dimnames = list(
        c("r1", "r2", "r3"),
        c("c1", "c2"),
        c("m1", "m2")
    )
)

a_mat <- matrix(
    1:12,
    nrow = 4,
    dimnames = list(
        c("r1", "r2", "r3", "r4"),
        c("c1", "c2", "c3")
   )
)

# matrices -> rownames , colnames
#  arrays -> dimnames  
rownames(a_mat)
colnames(a_mat)

dimnames(three_d_arr)

# indexing - separate dims by separate ways by ','
a_mat[1, 2]
a_mat[, c("c2")]
a_mat[2,]
a_mat[, c("c2", "c3")]

# combining matrices
b_mat <- matrix(
    seq.int(2, 24, 2),
    nrow = 4,
    dimnames = list(
        c("r5", "r6", "r7", "r8"),
        c("c4", "c5", "c6")
   )
)
a_mat
b_mat

# c func combines them after turning them to vecs and then combine

c(a_mat, b_mat)

# use cbind, rbind to combine them by cols or rows
cbind(a_mat, b_mat)

rbind(a_mat, b_mat)