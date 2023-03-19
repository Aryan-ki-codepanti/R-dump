seq.int(3, 13) # like 3 : 13
seq.int(3, 13, 2) # steps
seq.int(0.1,0, -0.01)

# seq_len creates a sequence from 1 up to its input
seq_len(4)
seq_len(0)

# seq_along creates a sequence from 1 up to the length of its input
seq_along(c(1,3,5,5))

# instead of above funcs seq could be used