library(DBI)
library(RMySQL)
library(RSQLite)

driver <- dbDriver("SQLite")

# db name crabtag.sqlite
db_file <- system.file(
    "extdata",
    "crabtag.sqlite",
    package = "learningr"
)
conn <- dbConnect(driver, db_file)

# MySQL
# driver <- dbDriver("MySQL")
# db_file <- "db"
# conn <- dbConnect(driver, db_file)

# query execution
# query <- "CREATE TABLE STUDENT(ROLL INTEGER, NAME VARCHAR(20))"

# dbGetQuery(conn,
#     "INSERT INTO STUDENT VALUES
#         (1, 'Aryan'),
#         (2, 'Alex'),
#         (3, 'George')
#     "
# )

query <- "SELECT * FROM STUDENT"
result <- dbGetQuery(conn, query)
# result
# class(result)
# str(result)

# clean up disconnect
# dbDisconnect(conn)
# dbUnloadDriver(driver)


# Safer to write query executer that cleans up on exit

query_crab_tag_db <- function(q) {
    driver <- dbDriver("SQLite")
    db_file <- system.file(
        "extdata",
        "crabtag.sqlite",
        package = "learningr"
    )
    conn <- dbConnect(driver, db_file)

    on.exit({
        dbDisconnect(conn)
        dbUnloadDriver(driver)
    }
    )

    dbGetQuery(conn, q)
}

# (query_crab_tag_db("SELECT * FROM STUDENT WHERE ROLL < 3"))

# DBI funcs 
dbListTables(conn)
dbReadTable(conn, "IDBLOCK")
dbDisconnect(conn)
dbUnloadDriver(driver)
