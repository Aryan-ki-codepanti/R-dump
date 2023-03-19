a <- 1:6
b <- 5:10
a + b

#1) vectorized nature of +
c(1, 2, 30) + c(-1, -4, -6)

#2) vectorized nature of funcs
mean(a)
median(a)
#3) vectorized nature of args
mean(1, 3, 5)
# median(1,2,3,-1) err

