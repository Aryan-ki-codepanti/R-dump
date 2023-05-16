
# Creating factors
# df with text data R assumes it to be a categorical data
# IMPPPPPPPPPPPPPPPPPP : stringsAsFactors = TRUE for this thing
heights <- data.frame(
    height_cm = c(153, 181, 150, 172, 165, 149, 174, 169, 198, 163),
    gender = c(
        "female", "male", "female", "male", "male", "female", "female", "male", "male", "female"
    )
# ,stringsAsFactors = TRUE
)

heights
# doesn't seem to work lol
class(heights$gender)

# works fine but shouldnt
# heights$gender[1] <- "Female"
heights

# levels of factor
levels(heights$gender)
nlevels(heights$gender)


# creating with factor function
gender_char <- c(
    "female", "male", "female", "male", "male"
)
gender_fac <- factor(gender_char)
gender_fac
# Levels: female male

# changing levels order 
# 1.while creation
f2 <- factor(gender_char, levels = c("male", "female"))
f2
# error since only male female allowed
# f2[1] <- "F"


# 2.after creation
factor(gender_fac, levels = c("male", "female"))

# using levels not good
levels(gender_fac) <- c("male", "female")
gender_fac

# relevel to specify 1st level
x <- relevel(gender_fac, "female")
x


# Dropping factors
work <- data.frame(
    mode = c("bike", "car", "bus", "car", "walk", "bike", "car", "bike", "car", "car"),
    time_mins = c(25, 13, NA, 22, 65, 28, 15, 24, NA, 14),
    stringsAsFactors = TRUE
)
work
class(work$mode)
levels(work$mode)
nlevels(work$mode)

# removing rows where time_mins is NA
work <- subset(work, !is.na(time_mins))
work
unique(work$mode) # still gives 4 levels

# to drop unused levels droplevels(fac/df) : for df applies to all facs

work$mode <- droplevels(work$mode)
work <- droplevels(work)
levels(work$mode)