
names <- c("aryan", "com", "in", "ca")

for (i in names) {
    i # doesnt print automatically in loop
    print(i)
}

nums <- 1:10
summary(nums)
# unif -> generates rand nums between 0 and 1
x <- runif(10)
summary(x)

char_ <- factor(sample(letters[1:5], 30, replace = TRUE))
summary(char_)

bool <- c(TRUE, TRUE, FALSE, NA)
summary(bool)

dfr <- data.frame(names, bool)

summary(dfr)
# View(dfr)
attributes(dfr)
str(dfr)

# view variables
ls()
ls(pattern = "a")

# Removal of variables
rm(char_)
rm(list = ls()) # all variables removed

