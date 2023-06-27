# # arm64v8/postgres:latest for MAc user with m1 or m2 proccessor
FROM postgres:15.3

COPY ./db/pg_hba.conf /var/lib/postgresql/data/pg_hba.conf
COPY ./db/postgresql.conf /var/lib/postgresql/data/postgresql.conf