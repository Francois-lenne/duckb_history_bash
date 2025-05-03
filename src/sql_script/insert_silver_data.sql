
WITH fresh_data AS (
    SELECT history_zsh, file_name, load_timestamp
    FROM bronze_bash
    WHERE history_zsh IS NOT NULL
    /*
    WHERE load_timestamp > (
        SELECT MAX(load_timestamp)
        FROM silver_bash
    )
    */
    QUALIFY RANK() OVER (ORDER BY load_timestamp DESC) = 1
),
extract_data AS (
    SELECT
        REGEXP_EXTRACT(file_name, '/Users/([^/]+)/', 1) AS extracted_user,
        CASE
            WHEN TRIM(REGEXP_EXTRACT(history_zsh, '(\d+):', 1)) = '' THEN NULL
            ELSE TO_TIMESTAMP(CAST(TRIM(REGEXP_EXTRACT(history_zsh, '(\d+):', 1)) AS BIGINT))
        END AS timestamp_command,
        REGEXP_EXTRACT(history_zsh, ':(\d+);', 1) AS execution_order,
        TRIM(REGEXP_EXTRACT(history_zsh, ';(.*)', 1)) AS bash_command
    FROM fresh_data
)
SELECT *
FROM extract_data;


