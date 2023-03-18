# checking class w/ is or class-specific variant
# if (is(x, "character")) {
#     print("x is character")
# } 
#else{} not works 
x <- 12
if (is(x, "character")) {
    print("x is character")
} else {
    print("x is idk")
}

# specific
is.character(c("aryan is grot", "2"))
is.character(c(1, 2, 4))

# numbers
is.integer(c(1L, 2L))
is.numeric(c(1, 2))

is.double(1L)
is.double(1)
is.double(1.3)

x <- "12.4444"
as.numeric(x)

# with class
class(x) <- "numeric"
x