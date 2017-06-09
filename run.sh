#!/bin/bash

tar -xzf /finecms.tgz -C /var/www/html/ && chown -R apache. /var/www/html/
/etc/init.d/mysql start

/usr/bin/mysqladmin -uroot password 'test@1234'

mysql -uroot -p'test@1234' < /tmp/mysql.fine.sql

/usr/sbin/httpd -DFOREGROUND &
