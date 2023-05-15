data(iris)

# a
summary(iris)

# b
# c
setosa <- subset(iris, Species == "setosa")
with(
    setosa,
    plot(Sepal.Length, Sepal.Width,
    col = "red",
    xlab = "Sepal Width(cm)",
    ylab = "Sepal Length(cm)",
    main = "Sepal Length vs Sepal Width for setosa")
)

# d
with(
    iris,
    hist(
        Petal.Length,
        main = "Petal length",
        xlab = "Petal Length (cm)",
        col = "blue"
    )
)

# e
versicolor = subset(iris, Species = "versicolor")
with(
    versicolor,
    boxplot(
        Petal.Width,
        ylab = "Petal Width (cm)",
        main = "Petal Width",
        col = "orange"
    )
)
