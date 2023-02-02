#!/bin/sh
# Author : Chinmay Pohankar
# Date : Jan 29, 2023

echo "starting database backup"
db_backup="mydb.gz"
sudo mysqldump -uroot -p mysql | gzip -c > ./${db_backup}
if [ "$?" -eq 0 ]; then
	echo "db backup complete"
else
	echo "db backup failed"
fi

# 0 23 * * 0 sudo ./2d.sh > /dev/null 2>&1
