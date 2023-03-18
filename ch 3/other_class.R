
class(c("aryan", 'na'))

# Factor
# Levels assigned alphabetically
# 1 -> level, male -> label
gender <- factor(c("male", "female", "male", "female", "female", "trans"))
print(gender)
as.integer(gender) # view as ints


# comp string vector and int
gender_char <- sample(c("male", "female"), 3, replace = TRUE)
gender_fac <- as.factor(gender_char)
# as.integer(gender_fac)
object.size(gender_char)
object.size(gender_fac)

as.character(gender)