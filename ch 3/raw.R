# Convert ints to raw
as.raw(1:10)
as.raw(250:260)

# Convert out of range, fractional to raw
as.raw(c(pi, 1+1i, -1, 265))

raw_aryan <- charToRaw("aryan")
class(raw_aryan)
raw_aryan