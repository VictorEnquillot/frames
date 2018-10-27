constructor_of_highest_entity_level () {
# get all constructors 
    
    set_file="do_${1}_constructor_set"
    if [ -f $set_file ]
    then
	lev="-1"
	for f in `do_$1_constructor_set`
	do
	    entity_level $f  # $el
	    if [[ $el -ge $lev ]] 
	    then 
		lev=$el
		chel=$f
	    else
		lev=$lev
		chel=$chel
	    fi
	done
    else
	chel="end"
    fi
	echo "$chel"
}
