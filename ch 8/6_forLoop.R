# no. of times to repeat code is known

# takes iterator variable and vector to loop over and give iterator var to each val

for (i in 1:5)
    message("i = ", i)

for (i in 1:5) {
    j <- i ^ 5
    message("j = ", j)
}

# we can pass char vecs , logical vecs , lists etc

for (month in month.name) {
    message("The month of ", month)
}

for (val in c(TRUE, NA, FALSE)) {
    message("Val = ", val)
}

l <- list(
    pi,
    LETTERS[1:5],
    charToRaw("not a s complicated as it looks")
    , list(TRUE)
)

for(i in l)
    print(i)