

# retrieve the data form the history

history | sed -E 's/([0-9]+)[[:space:]]+(.+)/\1;\2/' > data.csv 


# install duckdb 

pip install duckdb


# create a database

duckdb data.db


