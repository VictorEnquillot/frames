if [ "${entitysum}" = "" ]
then
	echo "Usage :"
	for f in `do_for_all_entity_constructor_set`
	do  

	if  [ "${f}" = "${domainset}" ]
	then  	    
	    echo " ./do_domainset_path_v_ml.sh $f > ${f}_${category}_${module_extension}"	
	else	
	    echo " $0 $f > ${f}_${category}_${module_extension}"
	fi	    		
	done
	exit
fi

