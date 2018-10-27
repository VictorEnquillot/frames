#!/bin/bash
if [ "$1" = "" ]
then 
    echo "Usage :"
    for f in `do_for_all_entity_constructor_set`
    do  
        echo "$0 $f  ../"
    done
    exit
fi
    
if [ "$2" = "" ]
then dir="./"
else dir="$2"
fi

./do_entitysum_symbol_t_ml.sh $1 > ${dir}$1_symbol_t.ml
./do_entitysum_symbol_v_ml.sh $1 > ${dir}$1_symbol_v.ml
./do_entitysum_symbol_v_mli.sh $1 > ${dir}$1_symbol_v.mli

echo "$1 done in directory >$dir<"