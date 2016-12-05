#!/bin/bash
# Stop mysql container while fluentd is connecting to it
for i in `seq 1 30`; do
  if mysql -u root -h 127.0.0.1 --password=root -e "show processlist" 2> /dev/null | grep sleep > /dev/null 2>&1; then
    docker-compose stop mysql
    break
  fi
done
