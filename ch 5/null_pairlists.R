# NULL = empty variable
marks <- list(
    math = 2,
    sci = 5,
    sst = NULL
)

marks

# NULL VS NA
length(NULL)
length(NA)

# NA - special missing value i.e not null
is.null(NULL)
is.null(NA)

# warning
is.na(NULL)

# removin elements using null
marks$math <- NULL
marks$sst <- NULL
marks

# setting element to NULL w/0 removal
marks['sci'] <- list(NULL)
marks

# Pairlists
# formals - return/set formal args of func

args_of_sd <- formals(sd)
args_of_sd
class(args_of_sd)

# len 0 list is list, but pairlist is null
list()
pairlist()