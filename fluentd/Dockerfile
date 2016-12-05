FROM fluent/fluentd:ubuntu-base

USER root

RUN apt-get update -y && apt-get install -y \
              libmysqlclient-dev \
        && rm -rf /var/lib/apt/lists/*

USER ubuntu

RUN ["gem", "install", "fluent-plugin-rds-log", "--no-rdoc", "--no-ri"]
