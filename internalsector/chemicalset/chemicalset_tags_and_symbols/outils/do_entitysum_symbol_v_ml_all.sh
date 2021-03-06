if [ "$1" = "" ]
then dir="./"
else dir="$1"
fi

if [ "$2" = "" ]
then force="n"
else force="y"
fi

for f in `do_for_all_entity_constructor_set`
do  
    if [ $force = "y" ]
    then 
	./do_entitysum_symbol_v_ml.sh ${f} > ${dir}${f}_symbol_v.ml
	echo "symbol_v_ml done for >$f< in directory >$dir<"
    else
	if [ -f ${dir}${f}_symbol_v.ml ]
	then
	    echo ">$f< already in directory >$dir<"
	else
	    ./do_entitysum_symbol_v_ml.sh ${f} > ${dir}${f}_symbol_v.ml
	    echo "symbol_v_ml done for >$f< in directory >$dir<"
	fi
    fi
done
exit
