
export MAGLEV_OPTS=

while :
do
  clear
  bundle exec rake migrate:auto?
  sleep 1
done

