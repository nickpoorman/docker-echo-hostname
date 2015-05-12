#!/bin/bash

set -e

while :
do

  echo "HOSTNAME = ${HOSTNAME}"
  echo "hostname = $(hostname)"
  echo "hostname -i = $(hostname -i)"

  sleep 5
done
