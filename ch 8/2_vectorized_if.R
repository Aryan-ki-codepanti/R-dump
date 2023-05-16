
# if logical vec > 1 passed to if it takes 1st val only with warning

# if(c(TRUE, FALSE))
#     print("YO")

# vectorized flow control ifelse()
# if(0)
#     print("gi")

ifelse(rbinom(10, 1, 0.5), "Head", "Tail")

yn <- rep.int(c(TRUE, FALSE), 6)
ifelse(yn, 1:3, -1:-12)

# missing vals -> missing res
yn[c(3, 6, 9, 12)] <- NA
ifelse(yn, 1:3, -1:-12)