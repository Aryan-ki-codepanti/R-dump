# all datasets from loaded packages
# data()
# all datasets from all packages
# data(package = .packages(TRUE))

# Load a dataset and use it by name
# data("kidney", package = "survival")

data("airquality")
head(airquality)

head(airquality$Ozone)