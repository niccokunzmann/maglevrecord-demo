
export MAGLEV_OPTS=-W0

tempfile="`dirname $0`/../tmp/migrate_auto?"

while maglev-ruby -e "" :
do
  bundle exec rake migrate:auto? 1> $tempfile 2> $tempfile
  clear
  cat $tempfile
done

