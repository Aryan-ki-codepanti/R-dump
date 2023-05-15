# a
numeric_vec <- c(1.2, 4.5, 3.4)
char_vec <- c("aryan", "is amazing")
integer_vec <- 1:4
log_vec <- c(TRUE, FALSE, TRUE)

# b
x <- 1:3
y <- 5:10

2 * x + y - 3

# c
odd_seq <- seq.int(101, 500, 2)
odd_seq2 <- 100:500
odd_seq2 <- odd_seq2[odd_seq2 %% 2 == 1]
odd_seq2

# d
mean(odd_seq2)
sd(odd_seq2)

# e
my_list <- list(
    vec = 1:5,
    arr = array(1:12, dim = c(4, 3, 2)),
    lis2 = list(a = 2, b = 1:10)
)

# f
m1 <- matrix(1:4, nrow = 2)
m2 <- matrix(11:14, nrow = 2)
m1
m2
m1 %*% m2

# g
rowMeans(m1)
colMeans(m1)

# h
rbind(m1, m2)
cbind(m1, m2)

# i
mat2 <- matrix(1:12, nrow = 3)
mat2
mat2[1:2,]