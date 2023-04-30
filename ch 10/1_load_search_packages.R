# load with library()

library(lattice)
dotplot(
    variety ~ yield | site,
    data = barley
)

# load with char name
pkgs <- c("lattice", "utils", "rpart")
for (i in pkgs)
    library(i, character.only = TRUE)

# error
# library(aryan)

# better use , warns if not found else loads
if(!require(aryan))
    message("Aryan not exist")


# see all loaded packages and envs
search()

# view installed packages
# View(installed.packages())

# lib
R.home("library")


.libPaths()

# update package
# update.packages(ask = FALSE)
# remove package
# remove.packages("zoo")