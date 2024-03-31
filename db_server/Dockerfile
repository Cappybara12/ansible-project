# Use a base image with MariaDB installed
FROM mariadb:latest

# Expose MariaDB port
EXPOSE 3306

# Set environment variables (if needed)
ENV MYSQL_ROOT_PASSWORD=my_password
ENV MYSQL_DATABASE=my_database

# Optionally, you can copy SQL initialization scripts
# COPY init.sql /docker-entrypoint-initdb.d/init.sql
COPY sql_scripts/init.sql /docker-entrypoint-initdb.d/init.sql
# Start MariaDB service
CMD ["mysqld"]

