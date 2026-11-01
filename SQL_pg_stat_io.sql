SELECT
    backend_type,
    object,
    context,
    reads,
    read_time,
    writes,
    write_time,
    writebacks,
    writeback_time,
    fsyncs,
    fsync_time,
    evictions
FROM pg_stat_io
ORDER BY read_time DESC NULLS LAST;