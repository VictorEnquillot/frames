if [ "$1" = "" ]
then dir="./"
else dir="$1"
fi

for f in `do_for_all_entity_constructor_set`
do  
    echo "running symbol type $f" 
    echo "symbol type $f" | $GNR/test/generator > ${dir}${f}_symbol_t.ml
    echo "done ${dir}${f}_symbol_t.ml"
done
exit

	