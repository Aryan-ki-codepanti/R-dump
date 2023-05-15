# a
rainfall <- read.csv("rainfall.csv", nrows = 10)
rainfall1 <- read.csv("rainfall1.csv", nrows = 10)
rainfall1

rainfall1 <- read.csv("rainfall1.csv")
# b
head(subset(rainfall1, Rainfall.mm. > 20))

# c

x <- subset(rainfall1, Rainfall.mm. >= 4, Rainfall.mm.)
mean(x$Rainfall.mm.)

# d
# subset(rainfall1, Rainfall.mm. %in% c(0, 0.6))
subset(rainfall1, Rainfall.mm. == 0 | Rainfall.mm. == 0.6)

# e
barplot(Rainfall.mm. ~ Date, rainfall1[1:20,], horiz = TRUE)