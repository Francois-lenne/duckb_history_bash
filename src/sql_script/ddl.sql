-- create the bronze table

CREATE TABLE bronze_bash (
    id TEXT,
    bash_command TEXT,
    date_integration TIMESTAMP
);


-- create the silver table

CREATE TABLE silver_bash (
    id TEXT,
    bash_command TEXT,
    date_integration TIMESTAMP
);

