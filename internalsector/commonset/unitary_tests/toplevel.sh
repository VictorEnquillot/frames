#!/bin/bash

ledit -x -h ./.toplevel-history ocaml \
-I $BAS \
-I $DAT \
-I $FIL \
-I $COMS \
unix.cma str.cma \
$BAS/basics.cma \
$DAT/datastructures.cma \
$FIL/files.cma \
$COMS/commonset.cma \
 