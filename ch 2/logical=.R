
c(1, 2, 3) == 3


c(1, 2, 3) < 3


# floating pt comp
(sqrt(2) ^ 2) == 2 # False
(sqrt(2) ^ 2) - 2 # not 0

# so use all.equal to get diff or T
all.equal((sqrt(2) ^ 2), 2)

# for boolean 
all.equal((sqrt(2) ^ 2), 3)
isTRUE(all.equal((sqrt(2) ^ 3), 2))

# match strings

c("aryan", "Aryan", "hei") == "aryan"

c("A", "B", "C") < "a"
c("a", "b", "c") < "c"