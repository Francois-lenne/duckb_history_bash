-- create the bronze table

CREATE TABLE bronze_bash (
    history_zsh TEXT,
    file_name TEXT,
    load_timestamp TIMESTAMP
);


-- create the silver table

CREATE TABLE silver_bash (
    extracted_user TEXT,
    bash_command TEXT,
    execution_order INT,
    timestamp_command TIMESTAMP,
    load_timestamp TIMESTAMP
);
