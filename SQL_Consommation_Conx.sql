SELECT
    datname,
    usename,
    state,
    COUNT(*) AS nb_sessions
FROM pg_stat_activity
GROUP BY datname, usename, state
ORDER BY nb_sessions DESC;