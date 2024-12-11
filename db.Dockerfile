FROM postgres:17-bookworm

RUN apt -y update
RUN apt -y install postgresql-17-cron
RUN echo "shared_preload_libraries='pg_cron'" >> /usr/share/postgresql/postgresql.conf.sample
RUN echo "cron.database_name = 'openote'" >> /usr/share/postgresql/postgresql.conf.sample
