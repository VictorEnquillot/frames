#!/bin/bash

ledit -x -h ./.toplevel-history ocaml \
-I $BAS \
-I $DAT \
-I $FIL \
-I $COMS \
-I $CONS \
-I $LEXLOI \
-I $LANLOI \
-I $SLOI \
-I $TLOI \
-I $PARLOI \
-I $BLOI \
-I $VARLOI \
-I $SPRO \
-I $TPRO \
-I $BPRO \
unix.cma str.cma \
$BAS/basics.cma \
$FIL/files.cma \
$DAT/datastructures.cma \
$COMS/commonset.cma \
 