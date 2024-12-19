# Use the official PostgreSQL image
FROM postgres:17

# Set environment variables for PostgreSQL
ENV POSTGRES_USER=user
ENV POSTGRES_PASSWORD=pass
ENV POSTGRES_DB=petclinic

# Copy initialization scripts and data files
#COPY init-db.sh /docker-entrypoint-initdb.d/init-db.sh
COPY aschema.sql /docker-entrypoint-initdb.d/schema.sql
COPY zdata.sql /docker-entrypoint-initdb.d/data.sql
#COPY petclinic_db_setup_postgres.txt /docker-entrypoint-initdb.d/petclinic_db_setup_postgres.txt
#COPY messages /docker-entrypoint-initdb.d/messages

# Ensure scripts are executable
#RUN chmod +x /docker-entrypoint-initdb.d/init-db.sh

