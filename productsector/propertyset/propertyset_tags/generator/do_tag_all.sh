#!/bin/bash

CURRENT_DIR=`pwd | xargs basename`
if [ "${CURRENT_DIR}" != "generator" ]
then
    echo "$0 : Error : Current directory must be generator"
    echo ""
    exit
fi

SYMBOLS_DIR=`pwd | sed -e "s#_tags/generator#_symbols#"`
if [ "${SYMBOLS_DIR}" == "" ]
then
    echo "$0 : Error : Symbols directory must exist"
    echo ""
    exit
fi

for i in ${SYMBOLS_DIR}/*_symbol_t.ml
do 
    file_symbol=`basename $i`
    this=`echo $file_symbol | tr A-Z a-z | sed -e "s/_symbol_t\.ml//"`
    maint=`echo ${this} | cut -d"_" -f1` 
    Maint=`capitalize_first.sh ${maint}`

    if [ "$this" != "" ]
    then
	do_tag_t.sh $this
	do_tag_v.sh $this
    fi
done

# Clean Maint_tag_v.ml

delete_lines_from_to_eof.pl "{6 Coercing" ${Maint}_tag_v.ml
