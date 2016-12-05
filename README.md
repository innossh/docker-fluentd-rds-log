# docker-fluentd-rds-log

```
$ make init
...
$ make test_handling_error
# Stop mysql container while fluentd is connecting to it
./test_handling_error.sh
Stopping dockerfluentdrdslog_mysql_1 ... done
docker-compose logs fluentd | tail -20
fluentd_1  |     @type stdout
fluentd_1  |   </match>
fluentd_1  | </ROOT>
fluentd_1  | 2016-12-05 12:01:02 +0000 [error]: fluent-plugin-rds-log: cannot connect RDS [mysql]
fluentd_1  | 2016-12-05 12:01:12 +0000 [error]: fluent-plugin-rds-log: cannot connect RDS [mysql]
fluentd_1  | 2016-12-05 12:01:22 +0000 [error]: fluent-plugin-rds-log: cannot connect RDS [mysql]
fluentd_1  | 2016-12-05 12:01:32 +0000 [error]: fluent-plugin-rds-log: cannot connect RDS [mysql]
fluentd_1  | 2016-12-05 12:02:03 +0000 rds_slow_log.mysql: {"start_time":"2016-12-05 12:01:47","user_host":"root[root] @  [172.21.0.3]","query_time":"00:00:05","lock_time":"00:00:00","rows_sent":"0","rows_examined":"0","db":"mysql","last_insert_id":"0","insert_id":"0","server_id":"0","sql_text":"CALL mysql.rds_rotate_slow_log","thread_id":"1"}
fluentd_1  | 2016-12-05 12:02:18 +0000 rds_slow_log.mysql: {"start_time":"2016-12-05 12:02:03","user_host":"root[root] @  [172.21.0.3]","query_time":"00:00:05","lock_time":"00:00:00","rows_sent":"0","rows_examined":"0","db":"mysql","last_insert_id":"0","insert_id":"0","server_id":"0","sql_text":"CALL mysql.rds_rotate_slow_log","thread_id":"2"}
fluentd_1  | 2016-12-05 12:02:31 +0000 [error]: fluent-plugin-rds-log: ERROR Occurred!
fluentd_1  | 2016-12-05 12:02:31 +0000 [error]: Query execution was interrupted
fluentd_1  | /home/ubuntu/ruby/lib/ruby/gems/2.3.0/gems/mysql2-0.3.21/lib/mysql2/client.rb:80:in `_query'
fluentd_1  | /home/ubuntu/ruby/lib/ruby/gems/2.3.0/gems/mysql2-0.3.21/lib/mysql2/client.rb:80:in `block in query'
fluentd_1  | /home/ubuntu/ruby/lib/ruby/gems/2.3.0/gems/mysql2-0.3.21/lib/mysql2/client.rb:79:in `handle_interrupt'
fluentd_1  | /home/ubuntu/ruby/lib/ruby/gems/2.3.0/gems/mysql2-0.3.21/lib/mysql2/client.rb:79:in `query'
fluentd_1  | /home/ubuntu/ruby/lib/ruby/gems/2.3.0/gems/fluent-plugin-rds-log-0.1.7/lib/fluent/plugin/in_rds_log.rb:85:in `query'
fluentd_1  | /home/ubuntu/ruby/lib/ruby/gems/2.3.0/gems/fluent-plugin-rds-log-0.1.7/lib/fluent/plugin/in_rds_log.rb:74:in `output'
fluentd_1  | /home/ubuntu/ruby/lib/ruby/gems/2.3.0/gems/fluent-plugin-rds-log-0.1.7/lib/fluent/plugin/in_rds_log.rb:65:in `block in watch'
fluentd_1  | /home/ubuntu/ruby/lib/ruby/gems/2.3.0/gems/fluent-plugin-rds-log-0.1.7/lib/fluent/plugin/in_rds_log.rb:64:in `each'
fluentd_1  | /home/ubuntu/ruby/lib/ruby/gems/2.3.0/gems/fluent-plugin-rds-log-0.1.7/lib/fluent/plugin/in_rds_log.rb:64:in `watch'
```
