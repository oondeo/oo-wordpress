#!/bin/bash

#wp core install --path=${CONTEXT_DIR} --url=${APPLICATION_DOMAIN} --title=${APPLICATION_DOMAIN} --admin_user=${WORDPRESS_ADMIN_USER} --admin_password=${WORDPRESS_ADMIN_PASSWORD} --admin_email=${WORDPRESS_ADMIN_EMAIL}  --skip-email

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