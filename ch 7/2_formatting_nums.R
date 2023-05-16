
# formatC - c style

pow <- 1:3
pow_of_e <- exp(pow)
pow_of_e
#  #digits
formatC(pow_of_e, digits = 3)
# ,width
formatC(pow_of_e, digits = 3, width = 5)
# , scientific,
formatC(pow_of_e, digits = 3, format = "e")
# +ves
formatC(pow_of_e, digits = 3, flag = "+")

# sprintf like C's printf
sprintf("%s %d = %f\n", "Euler's const to power", pow, pow_of_e)
# 2  decimal pts
sprintf("%s %d = %.2f\n", "Euler's const to power", pow, pow_of_e)
# sci
sprintf("%s e^%d = %e", "Euler's const to power", pow, pow_of_e)


# format like formatC
format(pow_of_e)
format(pow_of_e, digits = 4)
format(pow_of_e, digits = 4, trim = TRUE)
format(pow_of_e, digits = 3, scientific = TRUE)

prettyNum(
    c(1e10, 1e-20),
    big.mark = ",",
    small.mark = " ",
    preserve.width = "individual",
    scientific = FALSE
)