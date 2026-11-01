SELECT
    current_setting('max_connections')::int AS max_conn,
    COUNT(*) AS current_conn,
    ROUND(
        100.0 * COUNT(*) /
        current_setting('max_connections')::int, 2
    ) AS pct_usage
FROM pg_stat_activity;