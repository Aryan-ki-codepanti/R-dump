
data("deer_endocranial_volume", package = "learningr")

# wide form  -> ignore cols
deer_wide <- deer_endocranial_volume[, 1:5]
deer_wide

# long form - reshape2 package (for wide/long)
# melt : wide -> long
# single col for measurement type (factor) , one col for type, 4 rows for a deer

library(reshape2)
deer_long <- melt(deer_wide, id.vars = "SkullID")
head(deer_long)

# for many ID, few measurment cols (factors) use measure.vars = c()
melt(deer_wide, measure.vars = c("VolCT", "VolBead"), id.vars = "SkullID")

# dcast converts back long to wide returns df as result
# (acast for vec arr mat)

# ~ formula y ~ x , y = f(x)
deer_wide_again <- dcast(deer_long, SkullID ~ variable)
deer_wide_again #ordered alpha by skullid
