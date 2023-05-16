df <- data.frame(
    x = letters[1:5],
    y = rnorm(5),
    z = runif(5) > 0.5
)
df
# Selecting [row, col]
df[2:3, -3]
df[c(FALSE, TRUE, TRUE, FALSE, FALSE), c("x", "y")]

# single col becomes vector
x <- df[, "x"]
x
class(x)

class(df[2:3, -3])
class(df[2:3, 1])

# other commands [[]] + +veint or $ + name
df$x[2:3]
class(df$x[2:3])

df[[1]][2:3]
df[["x"]][2:3]

# or
df[df$y > 0 | df$z, "x"]
subset(df, y > 0 | z, "x")