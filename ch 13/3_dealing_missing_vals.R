# complete.cases func tells which rows are free of missin vals
data("deer_endocranial_volume", package = "learningr")
has_all_measurements <- complete.cases(deer_endocranial_volume)
deer_endocranial_volume[has_all_measurements,]

# na.omit removes any rows that have missin vals
na.omit(deer_endocranial_volume)

# na.fail gives error if df has any missin vals
na.fail(deer_endocranial_volume)

# they can also accept vecs  as well

