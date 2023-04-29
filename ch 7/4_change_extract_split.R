# toupper tolower
toupper("Hi This is Aryan")
tolower(c("HU ThiS is Aryan", "IY"))

# [start,end]
substring(c("abcdefgh", "hello world"), 5:6, 7)
substr(c("abcdefgh", "hello world"), 5:6, 7)

# substring has default last
substring("aryann", 5)
# gives error
# substr("aryann", 5) 

# extract several substrings with one line of code. With substr, this is not possible. If we apply substr to several starting or stopping points, the function uses only the first entry
substr("artab", start = 1, stop = 1:5)  
substring("artab", first = 1, last = 1:5)  

# SPLITTING STR
x <- c(
    "Hi this ?. is ai",
    "not the ?. danger"
)
#  fixed = TRUE means no regex, strsplit -> list
strsplit(x, " ", fixed = TRUE)
strsplit(x, "?.", fixed = TRUE)
