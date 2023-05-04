data(obama_vs_mccain, package = "learningr")

# hist for histogram like plot
with(obama_vs_mccain, hist(Obama))

# bins specify  3 ways
# 1. number of bins
with(obama_vs_mccain, hist(Obama, 10, main = "An Exact number of bins"))

# 2. vec of bin edges
with(obama_vs_mccain,
    hist(Obama, seq.int(0, 100, 5),
    main = "A vector of bins edges")
)

# 3. change algo to calc bins def "sturges" , ("scott" , "fd" others)
with(obama_vs_mccain,
    hist(Obama, "FD",
    main = "Method : FD")
)
with(obama_vs_mccain,
    hist(Obama, "scott",
    main = "Method : scott", col = "red")
)
