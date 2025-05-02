SELECT 
    REGEXP_REPLACE(history_zsh_unnest.unnest, '^.*: ', '') AS history_zsh,
    t.filename AS file_name,
    CURRENT_LOCALTIMESTAMP() AS load_timestamp
FROM read_blob('~/.zsh_history') AS t(filename, content),
UNNEST(STRING_SPLIT(CAST(content AS VARCHAR), '\x0A')) AS history_zsh_unnest,;
