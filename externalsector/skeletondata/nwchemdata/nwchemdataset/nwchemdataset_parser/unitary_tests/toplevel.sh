#!/bin/bash

ledit -x -h ./.toplevel-history ocaml \
-I $BAS \
-I $DAT \
-I $FIL \
-I $COMS \
-I $CONS \
-I $SNWC \
-I $LEXNWC \
-I $PARNWC \
unix.cma str.cma \
$BAS/basics.cma \
$DAT/datastructures.cma \
$FIL/files.cma \
$COMS/commonset.cma \
$CONS/contextset.cma \
$SNWC/nwchemdataset_symbols.cma \
$LEXNWC/nwchemdataset_lexer.cma \
$PARNWC/nwchemdataset_parser.cma \
  

  