data(crab_tag, package = "learningr")

# line plot with plot and type = "l"
# crab_tag$daylog

with(
    crab_tag$daylog,
    plot(Date, - Max.Depth, type = "l", ylim = c(-max(Max.Depth), 0), main = "CrabTagDS")
)

# additional lines on existing plot by lines() , for scatterplot is points
with(
    crab_tag$daylog,
    lines(Date, - Min.Depth, col = "red")
)