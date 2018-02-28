#!/bin/sh

composer prestashop-setup-core
composer prestashop-db-core --name='Prestashop on Heroku' --domain=example.herokuapp.com --db_server= --db_name=prestashop --db_user=\"$PRESTASHOP_ADMIN_USER\" --db_password=\"$PRESTASHOP_ADMIN_PASSWORD\" --email=\"$PRESTASHOP_ADMIN_EMAIL\"
composer prestashop-setup-clean
composer prestashop-setup-welcome 