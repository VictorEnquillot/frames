#!/bin/bash

ledit -x -h ./.toplevel-history ocaml \
-I $BAS \
-I $DAT \
-I $FIL \
-I $COMS \
-I $UNI \
-I $MEA \
-I $REA \
-I $OCOO \
unix.cma str.cma \
$BAS/basics.cma \
$FIL/files.cma \
$DAT/datastructures.cma \
$COMS/commonset.cma \
$UNI/units.cma \
$MEA/measure.cma \
$REA/readee.cma \
$OCOO/coordinateset_operations.cma \
 
