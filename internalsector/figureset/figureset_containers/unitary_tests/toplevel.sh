#!/bin/bash

ledit -x -h ./.toplevel-history ocaml \
-I $BAS \
-I $DAT \
-I $FIL \
-I $COMS \
-I $QUA \
-I $CONS \
-I $LEXDB1 \
-I $SDB1 \
-I $PARDB1 \
-I $TDB1 \
-I $BDB1 \
-I $SFIG \
-I $TFIG \
-I $BFIG \
-I $FFIG \
unix.cma str.cma \
$BAS/basics.cma \
$FIL/files.cma \
$DAT/datastructures.cma \
$COMS/commonset.cma \
$QUA/quantum.cma \
$CONS/contextset.cma \
$LEXDB1/db1pointsdataset_lexer.cma \
$SDB1/db1pointsdataset_symbols.cma \
$PARDB1/db1pointsdataset_parser.cma \
$TDB1/db1pointsdataset_tags.cma \
$BDB1/db1pointsdataset_builder_trees.cma \
$SFIG/figureset_symbols.cma \
$TFIG/figureset_tags.cma \
$BFIG/figureset_builder_trees.cma \
$FFIG/figureset_formulas.cma \
   