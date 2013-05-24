#!/usr/bin/bash

export MAGLEV_OPTS=-W0

tempfile="`dirname $0`/../tmp/migrate_up?"

while maglev-ruby -e "" :
do
  bundle exec rake migrate:up? 1> $tempfile 2> $tempfile
  clear
  cat $tempfile
  echo ----------------------------
  bundle exec rake migrate:up? 1> $tempfile 2> $tempfile
  clear
  cat $tempfile
  echo ============================
done
