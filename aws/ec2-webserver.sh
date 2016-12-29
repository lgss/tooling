#!/bin/bash
yum install httpd24 mod24_ssl php56 php56-mysqlnd -y
yum update -y
aws s3 cp s3://BUCKETNAMEHERE/index.html /var/www/html/
service httpd start
chkconfig httpd on