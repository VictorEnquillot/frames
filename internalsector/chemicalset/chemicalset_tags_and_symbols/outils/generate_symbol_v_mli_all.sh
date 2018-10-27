if [ "$1" = "" ]
then dir="./"
else dir="$1"
fi

for f in `do_for_all_entity_constructor_set`
do  
    echo "running symbol interface $f" 
    echo "symbol interface $f" | $GNR/test/generator > ${dir}${f}_symbol_v.mli
    echo "done ${dir}${f}_symbol_v.mli"
done
exit

	