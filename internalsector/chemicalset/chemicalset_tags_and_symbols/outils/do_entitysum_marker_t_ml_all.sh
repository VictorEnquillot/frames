if [ "$1" = "" ]
then dir="./"
else dir="$1"
fi

for f in `do_for_all_entity_constructor_set`
do  
    ./do_entitysum_marker_t_ml.sh ${f} > ${dir}${f}_marker_t.ml
    echo "marker_t_ml done for >$f< in directory >$dir<"
done
exit

	