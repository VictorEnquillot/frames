#!/bin/bash 

script=`basename $0`
this=$1

if [ `egrep -c '^let nam_ibo = ' $this` != 0 ]
then
    if [ `egrep -c '^let nam_iba = ' $this` == 0 ]
    then
	sed '/^let nam_ibo = /a let nam_iba = \"local\";;' $this > f
	cp f $this
	diff $this f > $this.dif
	echo "$script : cat $this.dif"
    fi
else
    echo "$script : $this skipped"
fi