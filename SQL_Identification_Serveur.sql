SELECT
    version() AS version_postgresql,
    current_database() AS database_name,
    inet_server_addr() AS server_ip,
    inet_server_port() AS server_port,
    pg_postmaster_start_time() AS startup_time,
    pg_is_in_recovery() AS is_standby,
    current_setting('max_connections') AS max_connections,
    current_setting('shared_buffers') AS shared_buffers,
    current_setting('work_mem') AS work_mem,
    current_setting('maintenance_work_mem') AS maintenance_work_mem,
    current_setting('effective_cache_size') AS effective_cache_size;