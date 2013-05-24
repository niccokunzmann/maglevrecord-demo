
export MAGLEV_OPTS=-W0

tempfile="`dirname $0`/../tmp/migrate_auto?"

while :
do
  bundle exec rake migrate:auto? 1> $tempfile 2> $tempfile
  if ($? != 0)
  then
    break
  fi
  clear
  cat $tempfile
done

