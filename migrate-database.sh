#!/bin/bash

wp core install --path=www --url=${APPLICATION_DOMAIN} --title=${APPLICATION_DOMAIN} --admin_user=${WORDPRESS_ADMIN_USER} --admin_password=${WORDPRESS_ADMIN_PASSWORD} --admin_email=${WORDPRESS_ADMIN_EMAIL}  --skip-email

first='0'
for i in $(echo $WORDPRESS_THEMES | tr "," "\n")
do
    if [ $first == '0' ]; then 
        wp theme install --path=www $i --activate
        first='1'
    else
        wp theme install --path=www $i
    fi 
done

for i in $(echo $WORDPRESS_PLUGINS | tr "," "\n")
do
    wp plugin install --path=www $i
done 

