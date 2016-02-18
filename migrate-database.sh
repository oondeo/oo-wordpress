#!/bin/bash
wp core config --dbname='getenv("DATABASE_NAME")' --dbuser='getenv("DATABASE_USER")' --dbpass='getenv("DATABASE_PASSWORD")' --dbhost='getenv(strtoupper(getenv("DATABASE_SERVICE_NAME"))."_SERVICE_HOST")' --skip-check
sed -i "s/.getenv\(.*\)..\;/getenv\1);/g" ${HOME}/wp-config.php
# wp core install --url=${APPLICATION_DOMAIN} --title=${APPLICATION_DOMAIN} --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_EMAIL}  --skip-email

# first='0'
# for i in $(echo $WORDPRESS_THEMES | tr "," "\n")
# do
#     if [ $first == '0' ]; then 
#         wp theme install $i --activate
#         first='1'
#     else
#         wp theme install $i
#     fi 
# done

# for i in $(echo $WORDPRESS_PLUGINS | tr "," "\n")
# do
#     wp plugin install $i
# done 