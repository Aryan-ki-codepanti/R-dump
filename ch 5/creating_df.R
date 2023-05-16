
df <- data.frame(
    x = letters[1:5],
    y = rnorm(5),
    z = runif(5) > 0.5
)
# rows numbered 1 to 5 but would have takend 1st named input vector names
df

y <- rnorm(5)
names(y) <- month.name[1:5]
data.frame(
    x = letters[1:5],
    y = y,
    z = runif(5) > 0.5
)

# overriden by row.names = NULL, names given by row.names = name vec
data.frame(
    x = letters[1:5],
    y = y,
    z = runif(5) > 0.5,
    row.names = NULL
)

data.frame(
    x = letters[1:5],
    y = y,
    z = runif(5) > 0.5,
    row.names = c("Jack", "Bean", "Jermaine", "Marlon", "Mike")
)

# rownames() , dimnames() , colnames() like matrices , even nrow, ncol , dim too

rownames(df)
colnames(df)
dimnames(df)

nrow(df)
ncol(df)
dim(df)

# length  = ncols() and names = colnames()
length(df)
names(df)

# diff size col vecs work, recycled but only compatible ones
data.frame(
    x = 1,
    y = 2:3,
    z = 4:7
)
# or erorr
# data.frame(
#     x = 1,
#     y = 2:4,
#     z = 4:7
# )

# allowing any names with check.names = FALSE
data.frame(
    "a col" = letters[1:5],
    "@@!" = rnorm(5)
)