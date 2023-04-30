
# rep vs replicate
rep(runif(1), 3)
replicate(3, runif(1))

time_for_commute <- function() {
    mode_of_transport <- sample(
        c("car", "bus", "train", "bike"),
        size = 1,
        prob = c(0.1, 0.2, 0.3, 0.4)
    )

    time <- switch(
        mode_of_transport,
        car = rlnorm(1, log(30), 0.5),
        bus = rlnorm(1, log(40), 0.5),
        train = rnorm(1, 30, 10),
        bike = rnorm(1, 60, 5)
    )
    names(time) <- mode_of_transport
    time
}

# vectorization
replicate(5, time_for_commute())
# rep(time_for_commute(), 5)
