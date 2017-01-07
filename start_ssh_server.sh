#!/bin/bash

OIFS=$IFS
IFS=';'
for user in $USERS
do
  echo "INFO: Creating user $user";
	useradd -s /bin/bash $user;
done

IFS=$OIFS

exec /usr/sbin/sshd -D -e
