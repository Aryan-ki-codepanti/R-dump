# install.packages(c("httr", "jsonlite", "tidyverse"))

# SETUP
# library(tidyverse)
library(httr)
library(jsonlite)

# Request - get and post GET()
# is used to request information from the
#  API and POST() is used to send informatio
# (such as credentials) to the API.


username <- "tclavelle"
# endpoint
url_git <- "https://api.github.com/"

# Construct api req
res <- GET(
    url =
        paste0(url_git, "users/", username, "/repos")
)
# class(res) = "response"
names(res)
status_code(res)


# content field lol parse with httr : content()
# list(18) of list(69)
res_data <- content(res)


# getting name and html resp 
repo_df <- lapply(res_data, function(x) {
    df <- data.frame(
        repo = x$name,
        address = x$html_url,
        commit = x$git_commits_url
    )
})
# bind_rows(repo_df)
# install.packages("dplyr")
# install.packages("magrittr")


# jsonlite use rather than making get req and parsing 
# data we use jsonlite :: fromJSON()

df <- fromJSON(paste0(url_git, "users/", username, "/repos"))
str(df)

# query params
# df <- fromJSON(paste0(url_git, "users/", username, "/repos", "?author=Aryan"))
