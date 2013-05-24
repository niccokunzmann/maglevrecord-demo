#!/usr/bin/bash

cd $MAGLEV_HOME
source ~/.bashrc; > /dev/null
use ruby;
rake maglev:stop &&
rake stone:destroy[maglev] &&
rake stone:create[maglev] &&
rake maglev:start
