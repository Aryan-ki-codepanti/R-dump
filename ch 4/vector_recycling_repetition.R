1:5 + 2

2 + 1:4

# When adding two vectors together, R will recycle elements in the shorter vector to match  the longer one:
1:5 + 1:15

# If the length of the longer vector isn’t a multiple of the length of the shorter one, a warning will be given
1:5 + 1:7

# rep func
rep(1:5, 3)
#or 
rep.int(1:5, 3)


# times
rep(1:5, times = 1:5)

# each
rep(1:5, each = 2)

# output len controlled
rep(1:5, length.out = 12)
# or
rep_len(1:5, 14)