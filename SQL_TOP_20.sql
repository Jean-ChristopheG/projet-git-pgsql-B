CREATE EXTENSION IF NOT EXISTS pg_stat_statements;

SELECT
    queryid,
    calls,
    ROUND(total_exec_time::numeric, 2) AS total_ms,
    ROUND(mean_exec_time::numeric, 2) AS avg_ms,
    ROUND(max_exec_time::numeric, 2) AS max_ms,
    rows,
    shared_blks_hit,
    shared_blks_read,
    temp_blks_written,
    LEFT(query, 150) AS sql_statement
FROM pg_stat_statements
ORDER BY total_exec_time DESC
LIMIT 20;