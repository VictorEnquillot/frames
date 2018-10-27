#!/bin/bash
set -x

test () {
    case ${1} in
	bool ) res="b";;
	doublet ) res="d";;
	float ) res="f";;
	int ) res="i";;
	index ) res="x";;
	ordinal ) res="o";;
	string ) res="s";;
	[A-Z]* )res="k";;
	*) res="0";;
    esac
    echo $res
}

r=`test $1`

echo "test >$1< is >$r<"

exit


