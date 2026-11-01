SELECT
    schemaname,
    relname AS table_name,
    heap_blks_read,
    heap_blks_hit,
    idx_blks_read,
    idx_blks_hit,
    ROUND(
        100.0 * heap_blks_hit /
        NULLIF(heap_blks_hit + heap_blks_read, 0), 2
    ) AS table_hit_ratio
FROM pg_statio_user_tables
ORDER BY heap_blks_read DESC
LIMIT 20;