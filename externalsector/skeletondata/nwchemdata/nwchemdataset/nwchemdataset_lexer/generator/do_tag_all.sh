#!/bin/bash
SYMBOLS_DIR=$1

if [ "${SYMBOLS_DIR}" == "" ]
then
    echo "Usage "
    echo "$0 <path_to_symbols_directory>"
    echo "$0 ../"
    exit
fi

for i in ${SYMBOLS_DIR}/*_symbol_t.ml
do 
    file_symbol=`basename $i`
    this=`echo $file_symbol | tr A-Z a-z | sed -e "s/_symbol_t\.ml//"`

    if [ "$this" != "" ]
    then
	do_tag_t.sh $this
	do_tag_v.sh $this
    fi
done

# Clean Figure_tag_v.ml

delete_lines_from_to_eof.pl "{6 Coercing" Figure_tag_v.ml
