SELECT
    pid,
    usename,
    datname,
    application_name,
    state,
    wait_event_type,
    wait_event,
    NOW() - query_start AS execution_time,
    LEFT(query, 150) AS sql_statement
FROM pg_stat_activity
WHERE state <> 'idle'
  AND pid <> pg_backend_pid()
ORDER BY execution_time DESC;