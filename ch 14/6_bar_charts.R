data(obama_vs_mccain, package = "learningr")


# bar graph for numerical variable vs categorial variable
ovm <- within(
 obama_vs_mccain,
 Region <- reorder(Region, Obama, median)
)
# filterning these out
ovm <- ovm[!(ovm$State %in% c("Alaska", "Hawaii")),]


# 1st arg is bar length

# named vec : name of bar labels
# else names.arg

# horiz = TRUE for horizontal bars

# no data arg
# label axis style and margins
par(las = 1, mar = c(3, 9, 1, 1))
with(ovm,
    barplot(Catholic, names.arg = State, horiz = TRUE)
)

# stacked bar

religions <- with(ovm, rbind(Catholic, Protestant, Non.religious, Other))
colnames(religions) <- ovm$State
par(las = 1, mar = c(3, 9, 1, 1))
barplot(religions, horiz = TRUE, beside = FALSE)