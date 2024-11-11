#! /bin/bash

USER="$DB_USER"
PASSWORD="$DB_PASSWORD"


mysqldump -u "${USER}" -p"${PASSWORD}" --database ShopDB --no-create-db --result-file=backup-db.sql
mysql -u "${USER}" -p"${PASSWORD}" ShopDBReserve < backup-db.sql


mysqldump -u "${USER}" -p"${PASSWORD}" -- database ShopDB --no-create-info --result-file=bakup-no-create-info.sql
mysql -u "${USER}" -p"${PASSWORD}" ShopDBDevelopment < bakup-no-create-info.sql
