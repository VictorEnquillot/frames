#!/bin/bash
set -x

constructor_level () {
# get all level of constructors for an entity $1

if [ -f do_${1}_constructor_set ]
then res="1"
else 
    cn=`echo $1 | cut -d"_" -f1 | tr A-Z a-z`
    case ${cn} in
	bool ) res="b";;
	capped )
	    cc=`echo $1 | cut -d"_" -f2 | tr A-Z a-z`
	    case ${cc} in
		list ) res="cl";;
		tree ) res="ct";;
		*) echo "Error: unknown capped sub constructor $cc"; 
                    exit
                    ;;
	    esac
	    ;;
	doublet ) res="d";;
	float ) res="f";;
	int ) res="i";;
	index ) res="x";;
	ordinal ) res="o";;
	string ) res="s";;
	triplet ) res="t";;
	tree ) res="tr";;
	*) res="0";;
    esac
fi
echo $res
}

cl=`constructor_level $1`
echo "constructor_level for >$1< is >$cl<"

exit


