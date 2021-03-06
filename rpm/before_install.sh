#!/bin/bash

USER="fuller"

id $USER > /dev/null 2>&1
if [ $? != 0 ]; then
  useradd --no-create-home --system --user-group $USER
fi

mkdir -p /var/log/fullerite
chown fuller:fuller /var/log/fullerite
