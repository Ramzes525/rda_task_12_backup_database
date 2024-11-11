#! /bin/bash

USER=$DB_USER
PASSWORD=$DB_PASSWORD


mysqldump -u "$USER" -p"$PASSWORD" --database ShopDB --result-file=backup-db.sql
mysql -u "$USER" -p"$PASSWORD" ShopDBReserve < backup-db.sql


mysqldump -u "$USER" -p"$PASSWORD" --database ShopDB --no-create-db --no-create-info --result-file=backup-no-create.sql
mysql -u "$USER" -p"$PASSWORD" ShopDBDevelopment < backup-no-create.sql
