FROM postgres:14.1-alpine

RUN mkdir -p /var/lib/postgresql-static/data

ENV PGDATA /var/lib/postgresql-static/data