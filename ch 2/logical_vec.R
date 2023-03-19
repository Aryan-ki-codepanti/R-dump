# and, or, not - &, |, !


x <- 1:10 <= 5

x
!x

y <- 1:10 %% 2 == 0
y

print("x | y")
x | y

print("x & y")
x & y


x <- c(TRUE, FALSE, NA)
xy <- expand.grid(x=x,y=x) # TruthTable book

within(xy, {
    not_x <- !x
    not_y <- !y
    or <- x | y
    and <- x & y
})


none_true  <- c(FALSE,FALSE,FALSE)
some_true  <- c(FALSE,TRUE,FALSE)
all_true  <- c(TRUE,TRUE,TRUE)

any(none_true)
any(some_true)
any(all_true)

all(none_true)
all(some_true)
all(all_true)