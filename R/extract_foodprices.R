###########################################################
# Importing the foodprices table from PostgreSQL
# Goal:
#    - create a simple R program to move the data from the    #      foodprices table into an R data frame
#
# @author: Abdoulaye Bah
# A training from Dave Henry
###########################################################

library(RPostgreSQL)

dbname <- "eha"
host <- "localhost"
port <- "5432"
user <- "postgres"
password <- "abdoulaye"

# Load and unload database drivers
?dbDriver
drv <- dbDriver("PostgreSQL")

# Create a connection to a DBMS
?dbConnect
con <- dbConnect(drv, dbname = dbname, host = host, port = port, user = user, password = password)


# Copy data frames from database tables
?dbReadTable
foodprices_df <- dbReadTable(con, "foodprices")

# Compactly Display the internal structure of an R object 
?str
str(foodprices_df)

View(foodprices_df)

# Clean up
rm(list = ls())




