#!/bin/bash

set -eu

default_root='/var/www/default'
default_conf='/opt/nginx/conf/default.conf'

exit_if_blank() {
  if [ -z "$1" ] ; then
      juju-log "$2 not set yet."
      exit 0
  fi
}