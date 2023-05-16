# Creating new env
an_env <- new.env()

# assigning vars to env
an_env[["x"]] <- 3
an_env$root <- polyroot(c(6, -5, 1))

# assign func
assign(
    "moonday",
    weekdays(as.Date("1969/07/20")),
    an_env
)

# getting val
an_env[["moonday"]]
an_env$root
get("moonday", an_env)
get("root", an_env)

# listing content - envir not really needed
ls(envir = an_env)
ls.str(an_env)

# check if var in env
exists("root", an_env)
exists("a", an_env)

# env <-> list with as.list and as.env
a_list <- as.list(an_env)
a_list
new_env <- as.environment(a_list)
ls(new_env)

# nested envs all envs have parent env except 'empty env: topmost env' exists, get check parents but use inherits = FALSE to avoid this 

nested_env = new.env(parent = an_env)
exists("root", nested_env)
exists("root", nested_env, inherits = FALSE)

# global and base
non_stormers <<- c(3, 7, 8, 13, 17, 18, 21)
get("non_stormers", envir = globalenv())