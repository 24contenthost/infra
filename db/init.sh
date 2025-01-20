#!/bin/bash


echo "MYSQL_ROOT_PASSWORD: $MYSQL_ROOT_PASSWORD"
echo "MYSQL_USER: $MYSQL_USER"
echo "MYSQL_PASSWORD: $MYSQL_PASSWORD"
echo "MYSQL_COMPOSE_NAME: $MYSQL_COMPOSE_NAME"
echo "MYSQL_CONTAINER_NAME: $MYSQL_CONTAINER_NAME"
echo "MYSQL_DATABASE_GALLERY: $MYSQL_DATABASE_GALLERY"


#
## Запуск контейнера MySQL
#docker-compose up -d
#
## Ожидание, пока контейнер MySQL станет доступен
#echo "Waiting for MySQL to start..."
#until docker exec $MYSQL_CONTAINER_NAME mysqladmin ping --silent; do
#  sleep 1
#done
#echo "MySQL is ready!"
#
## Создание базы данных для галереи
#echo "Creating database for gallery..."
#docker exec $MYSQL_CONTAINER_NAME mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE DATABASE IF NOT EXISTS \`${MYSQL_DATABASE_GALLERY}\`;"
#
## Создание пользователя и предоставление прав
#echo "Creating user and granting privileges..."
#docker exec $MYSQL_CONTAINER_NAME mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
#docker exec $MYSQL_CONTAINER_NAME mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON \`${MYSQL_DATABASE_GALLERY}\`.* TO '${MYSQL_USER}'@'%';"
#docker exec $MYSQL_CONTAINER_NAME mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "FLUSH PRIVILEGES;"
#
#echo "Database and user initialization completed."
