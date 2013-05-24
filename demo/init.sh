
newstone () {
  ( cd $MAGLEV_HOME ;
	  use ruby &&
	  rake maglev:stop ;
	  rake stone:destroy[maglev] ;
	  rake stone:create[maglev] &&
    rake maglev:start
  )
}

alias be='bundle exec'
alias changes='`dirname $0`/changes.sh'
alias files_view='`dirname $0`/files_view.sh'



