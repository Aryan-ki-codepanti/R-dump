
# read.table reads delimited files and stores data in df in simplest form it takes file path

x <- read.table("students.csv", header = TRUE, sep = ",")
x

# fill = TRUE for NA at missing and header = true for header present

# sys file
# install.packages("learningr")
library(learningr)
deer_file <- system.file(
    "extdata",
    "RedDeerEndocranialVolume.dlm",
    package = "learningr"
)
deer_data <- read.table(deer_file, header = TRUE, fill = TRUE)
str(deer_data, vec.len = 1)
head(deer_data)

# args : sep as delimiter, skip for skipping lines , nrow to read n rows
# wrapper funcs
# read.csv (default ',' sep and header true)and read.csv2 (european , in floats and ; as sep)
# Tab delimited : read.delim and read.delim2 (european , in floats )

# (read.csv("students.csv"))

crab_file <- system.file(
    "extdata",
    "crabtag.csv",
    package = "learningr"
)

(
    crab_id_blk <- read.csv(
        crab_file,
        header = FALSE,
        skip = 3,
        nrow = 2
    )
)
(
    crab_tag_nb <- read.csv(
        crab_file,
        header = FALSE,
        skip = 8,
        nrow = 5
    )
)

(
    crab_lifetime_nb <- read.csv(
        crab_file,
        header = FALSE,
        skip = 15,
        nrow = 3
    )
)

# scan(crab_file)

# Writing to files with write.table and write.csv
# takes df and file path

write.csv(
    crab_lifetime_nb,
    "crab_lifetime_data.csv",
    row.names = FALSE,
    fileEncoding = "utf8"
)

library(ggplot2)
ggplot(rainfall_data, aes(x = DAY, y = Rainfall)) + 
    geom_point() +
        facet_wrap(~ MONTH) +
            ggtitle("Rainfall by Day and Month")

ggplot(rainfall_data, aes(x = DAY, y = Rainfall)) + 
    stat_summary(fun.y - sum, geom- "bar") +
            ggtitle("Total Rainfall by Month")

