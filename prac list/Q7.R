drinks <- read.delim("tab_deline.txt")

# a
years <- unique(drinks$Year)
for (year in years) {
    year_data <- drinks[drinks$Year == year,]
    max_beer <- year_data[which.max(year_data$Beer),]
    min_wine <- year_data[which.min(year_data$Wine),]

    message("Year ", year)
    message("Max beer : ", max_beer$Country)
    message("Min wine : ", min_wine$Country)
}

# b
australia = subset(drinks, Country == "Australia")
new_zealand = subset(drinks, Country == "New Zealand")

message("Avg alcohol consumption")
message("Australia : ", mean(australia$Spirit))
message("New Zealand : ", mean(new_zealand$Spirit))

# c
message("Beer consumption in New Zealand")
subset(new_zealand, Spirit > mean(Spirit), Beer)

# d
for (year in years) {
    year_data <- subset(drinks, Year == year, c(Beer, Wine, Spirit))
    message("Year : ", year)
    print(colMeans(year_data))
}

# e
message("\nAustralia")
(aus_stats <- colMeans(australia[, 1:3]))
message("\nNew Zealand")
(nz_stats <- colMeans(new_zealand[, 1:3]))

plot(aus_stats, col = "blue", main = "Stats for australia and new zealand", ylim = c(1, 6))
points(nz_stats, col = "green")