data(obama_vs_mccain, package = "learningr")

obama <- obama_vs_mccain$Obama
mean(obama)
median(obama)

# find how mucj vals in bins
table(cut(obama, seq.int(0, 100, 10)))

# variance, standard_dev, mean_abs_dev
var(obama)
sd(obama)
mad(obama)

# min max for extremes ,pmin pmax for || min max of cols, range: min,max

min(obama)
with(obama_vs_mccain, pmin(Obama, McCain))

range(obama)

# cum funcs get cum ops of vector
cumsum(obama)
cumprod(obama)
cummax(obama)
cummin(obama)

# quantile gives quantiles (lower 25 and upper quartile 75)
quantile(obama)
quantile(obama, type = 5)
quantile(obama, c(.24, 0.9, .95, .99))

# IQR interquartile range : 75th - 25th
IQR(obama)

# fivenum gives quartiles faster
fivenum(obama)

# shortcut for many stats 
summary(obama_vs_mccain)

# correlation cor, canonical cor cancor, covariance cov

with(obama_vs_mccain, cor(Obama, McCain))
with(obama_vs_mccain, cancor(Obama, McCain))
with(obama_vs_mccain, cov(Obama, McCain))