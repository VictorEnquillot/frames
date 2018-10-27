#!/bin/bash
set -x

entity_list () {
    set_file="do_${1}_constructor_set"
    if [ -f $set_file ]
    then
# take the max of these el and add 1
	echo -n " [ " >> list       
	
	for f in `do_$1_constructor_set`
	do
	    entity_list $f  # $el
	    echo -n " $f" >> list
	done # for f
	echo -n " ] " >> file
    else
	echo -n " ] " >> file
    fi
}
rm list
entity_list $1
echo "" >> list

echo "entity $1 entity_list is :"
echo "     $el"

exit


