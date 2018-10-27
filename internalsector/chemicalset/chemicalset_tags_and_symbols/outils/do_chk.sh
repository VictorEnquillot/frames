#!/bin/bash

check_is_entity_code_buildable () {
    f="do_${1}_constructor_set"
    if [ ! -f $f ]
    then
	echo "file >$f< is needed"
	exit
    fi
}

check_is_entity_code_buildable $1

exit


