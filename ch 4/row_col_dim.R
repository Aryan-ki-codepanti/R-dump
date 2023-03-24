three_d_arr <- array(
    1:12,
    dim = c(3, 2, 2),
    dimnames = list(
        c("r1", "r2", "r3"),
        c("c1", "c2"),
        c("m1", "m2")
    )
)
three_d_arr

a_mat <- matrix(
    1:12,
    nrow = 4
)
a_mat
# get Dimensions as vec of ints 
dim(three_d_arr)
dimnames(three_d_arr)
dim(a_mat)


# rows and cols for matrix
nrow(a_mat)
ncol(a_mat)

# for arrays it returns 1st two dims
nrow(three_d_arr)
ncol(three_d_arr)

# length -> prod of dims
length(three_d_arr)
length(a_mat)

# Reshaping but losin names
dim(a_mat) <- c(2, 6)
a_mat
dim(three_d_arr) <- c(2, 3, 2)
three_d_arr

# nrow, ncol, dim on vec return NULL
a_vec <- 1:12
nrow(a_vec)
ncol(a_vec)
dim(a_vec)

# NROW, NCOL work that take vec as single col matrices
a_vec <- 1:12
NROW(a_vec)
NCOL(a_vec)

