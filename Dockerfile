FROM postgres:15.3

COPY ./db/pg_hba.conf /var/lib/postgresql/data/pg_hba.conf
COPY ./db/postgresql.conf /var/lib/postgresql/data/postgresql.conf