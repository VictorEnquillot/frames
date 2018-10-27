#!/bin/bash

ledit -x -h ./.toplevel-history ocaml \
-I $BAS \
-I $DAT \
-I $FIL \
-I $COMS \
-I $CONS \
-I $SDB1 \
-I $TDB1 \
-I $LEXDB1 \
-I $PARDB1 \
unix.cma str.cma \
$BAS/basics.cma \
$DAT/datastructures.cma \
$FIL/files.cma \
$COMS/commonset.cma \
$CONS/contextset.cma \
$SDB1/db1pointsdataset_symbols.cma \
$TDB1/db1pointsdataset_tags.cma \
$LEXDB1/db1pointsdataset_lexer.cma \
$PARDB1/db1pointsdataset_parser.cma \
 
  