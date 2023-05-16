
a <- c(
    "hello this is me",
    "oeoeo "
)
a

# paste func combines corresponding strings sep = " "def
paste(c("red", "yellow"), c("hi", "a", "aryan"), "lori")
paste(c("red", "yellow"), c("hi", "a", "aryan"), "lori", sep = ",")

# collapse combines all to 1 string with collapse sep
paste(c("red", "yellow"), c("hi", "a", "aryan"), "lori", collapse = ", ")

# no sep
paste0(c("red", "yellow"), c("hi", "a", "aryan"), "lori")


# toString
x <- (1:15) ^ 2
toString(x)
toString(x, width = 20)

# low lvl printing and file write
cat(c("red", "yellow"), "hi\n")

# suppressing quotes in output w/ noquote(x)
x <- c(
    c("I", "am", "great"),
    c("I", "am", "he")
)
x
noquote(x)