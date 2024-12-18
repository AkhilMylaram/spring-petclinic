# Use the official MySQL image
FROM mysql:5.7

# Set environment variables for MySQL root password and database name
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=petclinic
ENV MYSQL_USER=petclinic
ENV MYSQL_PASSWORD=petclinic

# Copy the SQL files into the container
COPY 00-schema.sql /docker-entrypoint-initdb.d/
COPY 01-data.sql /docker-entrypoint-initdb.d/
COPY 02-user.sql /docker-entrypoint-initdb.d/
#COPY petclinic_db_setup_mysql.txt /docker-entrypoint-initdb.d/

# Expose MySQL port
EXPOSE 3306

