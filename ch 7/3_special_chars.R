
# special chars like \t not with print
print("heyaa\t\neo")
# fill = true for next line like \n
cat("heyaa\teo", fill = TRUE)
cat("heyaa\neo", fill = TRUE)

# error \0 -> end of string
# cat("heyaa\0eo", fill = TRUE)

# escaping with \
cat("heyaa\\eo", fill = TRUE)

# escaping " and'
cat("foo\"bar", fill = TRUE)
cat('foo\'bar', fill = TRUE)

# no escape needed
cat('foo"bar', fill = TRUE)
cat("foo'bar", fill = TRUE)

# alarm
# cat("\a")
# alarm()