# manipulate dfs with SQL
# install.packages("sqldf")
data("deer_endocranial_volume", package = "learningr")

library(sqldf)

# using native R

subset(
    deer_endocranial_volume,
    VolCT > 400 | VolCT2 > 400,
    c(VolCT, VolCT2)
)

# using query
q <- "
    SELECT
        VolCT, VolCT2
    FROM deer_endocranial_volume
    WHERE
        VolCT > 400
        OR VolCT2 > 400
"

sqldf(q)