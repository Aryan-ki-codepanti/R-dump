
# like other prog langs
action <- sample(c(1, 2, 3, 4), 1)

while (action != 4) {
    action <- sample(c(1, 2, 3, 4), 1)
    message("Hello action = ", action)
}