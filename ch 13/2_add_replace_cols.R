data(english_monarchs, package = "learningr")
# head(english_monarchs)

# addin a col by assignment
english_monarchs$length.of.reign <- english_monarchs$end.of.reign - english_monarchs$start.of.reign

# good but df name variable typed so many times lmao
# with  allows directly col names, takes df/env and exp to evaluate (1 col)
english_monarchs$length.of.reign <- with(english_monarchs, end.of.reign - start.of.reign)

# within is similar but returns whole df , useful for more than 1 col manipulation/  creation
english_monarchs <- within(
    english_monarchs, {
    length.of.reign <- end.of.reign - start.of.reign
    reign.more.than.30 <- length.of.reign > 30
}
)

english_monarchs[1:10, c("length.of.reign", "reign.more.than.30")]

# mutate takes new and rev col pairs
library(plyr)
english_monarchs <- mutate(
    english_monarchs,
    length.of.reign = end.of.reign - start.of.reign,
    reign.more.than.30 = length.of.reign > 30
)

english_monarchs[, c("length.of.reign", "reign.more.than.30")]