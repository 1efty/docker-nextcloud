#!/bin/bash

function gen_pw() {
	echo $(env LC_CTYPE=C tr -dc "a-zA-Z0-9-_" </dev/urandom | head -c "${1:-16}")
}

## create secret files

mkdir -p ./secrets

if [ ! -f secrets/postgres_db.txt ]; then
	echo "nextcloud" >./secrets/postgres_db.txt
fi

if [ ! -f secrets/postgres_password.txt ]; then
	echo $(gen_pw) >./secrets/postgres_password.txt
fi

if [ ! -f secrets/postgres_user.txt ]; then
	echo "nextcloud" >./secrets/postgres_user.txt
fi

if [ ! -f secrets/nextcloud_admin_password.txt ]; then
	echo $(gen_pw) >./secrets/nextcloud_admin_password.txt
fi

if [ ! -f secrets/nextcloud_admin_user.txt ]; then
	echo "nextcloud" >./secrets/nextcloud_admin_user.txt
fi
