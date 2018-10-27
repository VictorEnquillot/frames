#!/bin/bash

ledit -x -h ./.toplevel-history ocaml \
-I $BAS \
-I $DAT \
-I $FIL \
-I $COM \
-I $QUA \
-I $CON \
-I $LEXDB1 \
-I $SDB1 \
-I $PARDB1 \
-I $TDB1 \
-I $BDB1 \
-I $SNWC \
-I $TNWC \
-I $LEXNWC \
-I $PARNWC \
-I $BNWC \
-I $SELE \
-I $TELE \
-I $DELE \
-I $SFIG \
-I $TFIG \
-I $DFIG \
unix.cma str.cma \
$BAS/basics.cma \
$FIL/files.cma \
$DAT/datastructures.cma \
$COM/commonset.cma \
$QUA/quantum.cma \
$CON/contextset.cma \
$LEXDB1/db1figure_lexer.cma \
$SDB1/db1figure_symbols.cma \
$PARDB1/db1figure_parser.cma \
$TDB1/db1figure_tags.cma \
$BDB1/db1figure_builder_trees.cma \
$SNWC/nwchem_symbols.cma \
$TNWC/nwchem_tags.cma \
$LEXNWC/nwchem_lexer.cma \
$PARNWC/nwchem_parser.cma \
$BNWC/nwchem_builder_trees.cma \
$SELE/elementaryset_symbols.cma \
$TELE/elementaryset_tags.cma \
$DELE/elementaryset_databases.cma \
$SFIG/figureset_symbols.cma \
$TFIG/figureset_tags.cma \
$DFIG/figureset_databases.cma \

 
  