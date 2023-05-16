

# x = c("Y", "N" , "Y")
# x <- x == "Y"
# x

# data(alpe_d_huez)
# head(alpe_d_huez)

yn_to_logical <- function(x) {
    y <- rep.int(NA, length(x))
    y[x == 'Y'] <- TRUE;
    y[x == 'N'] <- FALSE;
    y
}
yn_to_logical(c("Y", "N"))

# alpe_d_huez$DrugUse <- yn_to_logical(alpe_d_huez$DrugUse) 

# but not good when strs have many choices

data(english_monarchs, package = 'learningr')
head(english_monarchs)

library(stringr)

multiple_kingdoms <- str_detect(english_monarchs$domain, fixed(","))

# all cols [rows, cols]
english_monarchs[multiple_kingdoms, c("name", "domain")]


#  ',|and' marches 'comma' or 'and'
multiple_rulers <- str_detect(english_monarchs$name, ',|and')
english_monarchs$name[multiple_rulers & !is.na(multiple_rulers)]

# multiple names

individual_rulers <- str_split(english_monarchs$name, ', | and ')
head(individual_rulers[sapply(individual_rulers, length) > 1], 10)

th <- c("th", "ð", "þ")
sapply(th, function(x) sum(str_count(english_monarchs$name[!is.na(english_monarchs$name)], x)))

# english_monarchs$name[!is.na(english_monarchs$name)]

english_monarchs$new_name <- str_replace_all(english_monarchs$name, '[ðþ]', 'th')
# english_monarchs$new_name <- str_replace_all(english_monarchs$name, 'ð|þ' , 'th')

# english_monarchs$new_name[10:100]
# english_monarchs$name[10:100]

gender <- c(
    "MALE", "Male", "male", "M", "FEMALE",
    "Female", "female", "f", NA
)

# (clean_gender <- str_replace(
#     gender,
#     ignore.case('^m(ale)?$'),
#     "Male"
#     ))
# (clean_gender <- str_replace(
#     gender,
#     ignore.case('^f(emale)?$'),
#     "Female"
#     ))