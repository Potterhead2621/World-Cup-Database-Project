# Project: World Cup Database
#Project goal:
Create a Bash script that inserts World Cup game information. After loading a csv file into PostgreSQL, you can search the database for helpful statistics.

Project made as part of the FreeCodeCamp Relational Databases Beta Certificate course

#Creating the database
Dataset: games.csv

'worldcup' database and the required tables ('teams' and 'games') were created on PostgreSQL to show the data from matches.csv.

To connect the tables, additional suitable constraints (primary keys and foreign keys) are added.

#Automating data insertion and querying with SQL
A Bash script was written to read the games. Data is automatically inserted into the previously made tables using csv data and SQL query commands.

The Bash script was written with limits in mind, inserting each winning and opposing team into 'teams' before moving them into 'games' based on the generated team_id.

View: insert_data.sh

The process was completed by creating a Bash script that uses SQL to query the database and produce meaningful values.

View: queries.sh

Database dump (after inserting data): worldcup.sql

