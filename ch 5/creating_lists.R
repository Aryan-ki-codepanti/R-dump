# List function
a_list <- list(
    c(1, 2, 4),
    2,
    asin,
    matrix(c(3, 4, 6, 7), nrow = 2)
);
a_list

#list naming - later or while create
names(a_list) <- c("vec", "int", "func", "mat")
a_list

same_list <- list(
    vec = c(1,2,4),
    int = 2,
    func = sin,
    mat = matrix(c(2,5,3,1), nrow = 1)
)
same_list

# List in a list
main_list <- list(
    middle_list = list(
        elem_middle = diag(3),
        inner = list(
            elem_inner = pi^1:4,
            another_inner_elem = "a"
        )
    ),
    elem_in_main = log10(1:10)
);
main_list