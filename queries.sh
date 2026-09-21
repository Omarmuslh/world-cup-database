#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=worldcup --no-align --tuples-only -c"

# Do not change code above this line. Use the PSQL variable above to query your database.

echo -e "\nYear and team name of all the champions:"
echo $($PSQL "SELECT year, name FROM games JOIN teams ON games.winner_id = teams.team_id WHERE round='Final' ORDER BY year")

echo -e "\nList of unique winning team names in the whole data set:"
echo $($PSQL "SELECT DISTINCT(name) FROM teams JOIN games ON teams.team_id = games.winner_id ORDER BY name")

echo -e "\nYear and team name of all the champions:"
echo $($PSQL "SELECT year, name FROM games JOIN teams ON games.winner_id = teams.team_id WHERE round='Final' ORDER BY year")

echo -e "\nList of teams that start with 'Co':"
echo $($PSQL "SELECT name FROM teams WHERE name LIKE 'Co%'")

