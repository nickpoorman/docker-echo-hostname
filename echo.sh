#!/bin/bash

set -e

if [ -n "$USE_HOST_AS_HOSTNAME" ]; then
  export HOSTNAME=${HOST}
  old=$(hostname)
  new=${HOST}

  for file in \
     /etc/exim4/update-exim4.conf.conf \
     /etc/printcap \
     /etc/hostname \
     /etc/hosts \
     /etc/ssh/ssh_host_rsa_key.pub \
     /etc/ssh/ssh_host_dsa_key.pub \
     /etc/motd \
     /etc/ssmtp/ssmtp.conf
  do
     [ -f $file ] && sed -i.old -e "s:$old:$new:g" $file
  done

#   hostname $new
#   /etc/init.d/hostname.sh start
fi

while :
do

  echo "HOST = ${HOST}"
  echo "HOSTNAME = ${HOSTNAME}"
  echo "hostname = $(hostname)"
  echo "hostname -i = $(hostname -i)"

  sleep 5
done
