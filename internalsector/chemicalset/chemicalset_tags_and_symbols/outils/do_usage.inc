if [ "${entitysum}" = "" ]
then
	echo "Usage :"
	for f in `do_for_all_entity_constructor_set`
	do  
	    echo " $0 $f > ${f}_${category}_${module_extension}"
	done
	exit
fi

