

-- insert the data 


INSERT INTO bronze_bash (id, bash_command, date_integration)
SELECT
    regexp_extract(column0, '^([^;]*?\d+)') AS id,
    SUBSTR(column0, POSITION(';' IN column0) + 1) AS bash_command,
    CURRENT_TIMESTAMP AS date_integration
FROM
    read_csv_auto('data.csv');


