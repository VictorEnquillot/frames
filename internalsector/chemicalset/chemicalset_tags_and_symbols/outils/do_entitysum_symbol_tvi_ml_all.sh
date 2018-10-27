if [ "$1" = "" ]
then dir="./"
else dir="$1"
fi

for f in `do_for_all_entity_constructor_set`
do  
    ./do_entitysum_symbol_t_ml.sh ${f} > ${dir}${f}_symbol_t.ml
    ./do_entitysum_symbol_v_ml.sh ${f} > ${dir}${f}_symbol_v.ml
    ./do_entitysum_symbol_v_mli.sh ${f} > ${dir}${f}_symbol_v.mli
    echo "symbol_tvi_ml done for >$f< in directory >$dir<"
done
exit

	