# a
str(airquality)

# b or dim
nrow(airquality)
ncol(airquality)

# c
nrow(na.omit(airquality))

# d
subset(airquality, Temp >= 70 & Temp <= 80)

# e
nrow(subset(airquality, Month == 5))

# f
head(airquality, 10)

# g
summary(airquality$Wind)

# h
library(plyr)
arrange(airquality, desc(Temp))

# e
new_entry <- list(
    Ozone = 200,
    Solar.R = 190,
    Wind = 4.2,
    Temp = 70,
    Month = 7,
    Day = 12
)
rbind(airquality, new_entry)