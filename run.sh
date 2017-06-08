#!/bin/bash

/usr/sbin/httpd -DFOREGROUND &

/etc/init.d/mysql start

/usr/bin/mysqladmin -uroot password 'test@1234'

