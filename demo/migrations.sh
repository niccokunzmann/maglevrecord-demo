#!/usr/bin/bash

export MAGLEV_OPTS=-W0

tempfile="`dirname $0`/../tmp/migrate_up?"

rake_command=bundle exec rake migrate:up?

while maglev-ruby -e "" :
do
  $rake_command 1> $tempfile 2> $tempfile
  clear
  cat $tempfile
  echo ----------------------------
  $rake_command 1> $tempfile 2> $tempfile
  clear
  cat $tempfile
  echo ============================
done
