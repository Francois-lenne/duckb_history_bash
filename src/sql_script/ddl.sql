-- create the bronze table

CREATE TABLE bronze_bash (
    history_zsh TEXT,
    file_name TEXT,
    load_timestamp TIMESTAMP
);


-- create the silver table

CREATE TABLE silver_bash (
    id TEXT,
    bash_command TEXT,
    date_integration TIMESTAMP
);

