# Like do while
# executes till told to stop
# inf loop
# repeat{
#     print("message hey")
# }

# break in between using break
repeat {
    message("Happy Groundhog day")
    action <- sample(
        c("Learn 1", "Rob", "Sleep"), 1
    )
    message("action = ", action)
    if (action == "Sleep") break
}

# skip to next iteration using next (like continue)
repeat {
    message("Happy Groundhog day")
    action <- sample(
        c("Learn 1", "Rob", "Sleep"), 1
    )
    if (action == "Rob") {
        message("Skiipinggggg")
        next
    }
    message("action = ", action)
    if (action == "Sleep") break
}