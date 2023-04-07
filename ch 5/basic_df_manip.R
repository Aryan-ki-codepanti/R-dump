df <- data.frame(
    x = letters[1:5],
    y = rnorm(5),
    z = runif(5) > 0.5
)
df
# Transpose with t, becomes matrix 
t(df)

df2 <- data.frame(
    z = rlnorm(5),
    y = sample(5),
    x = letters[3:7]
)
df2

rbind(df, df2)
cbind(df, df2)

# merging/ joining on some common attr id
merge(df, df2, by = "x")
merge(df, df2, by = "x", all = TRUE)

# calc sums and means of cols with colSums and colMeans
colSums(df[, 2:3])
colMeans(df[, 2:3])

rowMeans(df[, 2:3])
rowSums(df[, 2:3])