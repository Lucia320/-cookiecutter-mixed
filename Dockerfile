FROM postgres:14.1-alpine

RUN mkdir -p /var/lib/postgresql-static/data

ENV PGDATA /var/lib/postgresql-static/data

ENV POSTGRES_PASSWORD password

ENV POSTGRES_HOST_AUTH_METHOD trust