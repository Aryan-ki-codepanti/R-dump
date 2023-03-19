c(Inf - 1, Inf + 1, Inf - Inf)
c(1 / Inf, Inf * Inf)

c(log(Inf), sin(Inf))

c(NA + 1, NA + Inf)
c(NaN + 1, NA + NaN)

# NA NaN - neither finite nor infinite

x <- c(0, Inf, - Inf, NaN, NA)
is.finite(x)
is.infinite(x)
is.nan(x)
is.na(x)

# TRUE FALSE
T;
F