library(DBI)
# library(RMySQL)
library(RSQLite)

# driver <- dbDriver("MySQL")
# db <- "path/to/db"

driver <- dbDriver("SQLite")
db <- system.file(
    "extdata",
    "aryan.sqlite",
    package = "learningr"
)
conn <- dbConnect(driver, db)

# a
q1 <- "CREATE TABLE STUDENT(
    ROLL INTEGER PRIMARY KEY,
    NAME VARCHAR(20)
)"

# b
q2 <- "
    INSERT INTO STUDENT VALUES
        (1, 'Aryan'),
        (2, 'Alex'),
        (3, 'George'),
        (4, 'Tommy'),
        (5, 'Shelby')
"
# 3
q3 <- "SELECT * FROM STUDENT"

# 4
q4 <- "DELETE FROM STUDENT"

# 5
q5 <- "DROP TABLE STUDENT"

result <- dbGetQuery(conn, q1)
result <- dbGetQuery(conn, q2)
result <- dbGetQuery(conn, q3)
result
result <- dbGetQuery(conn, q4)
result
result <- dbGetQuery(conn, q5)
result



dbDisconnect(conn)
dbUnloadDriver(driver)