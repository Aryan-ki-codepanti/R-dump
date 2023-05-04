
hypotenuse <- function(x, y) sqrt(x ^ 2 + y ^ 2)

pythagorean_triples <- data.frame(
    x = c(3, 5, 8),
    y = c(4, 12, 15),
    z = c(5, 13, 17)
)

package.skeleton(
    "pytha",
    c("hypotenuse", "pythagorean_triples")
)