USE mysql;
DELIMITER //
CREATE PROCEDURE rds_rotate_slow_log()
BEGIN
  SET @slow_query_log_backup = @@GLOBAL.slow_query_log;
  SET @@GLOBAL.slow_query_log = 'OFF';
  DROP TABLE IF EXISTS slow_log_backup;
  RENAME TABLE slow_log TO slow_log_backup;
  CREATE TABLE slow_log like slow_log_backup;
  SELECT sleep(5) INTO @x;
  SET @@GLOBAL.slow_query_log = @slow_query_log_backup;
END //
