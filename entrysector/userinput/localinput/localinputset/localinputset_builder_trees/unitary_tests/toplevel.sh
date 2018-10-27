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
unix.cma str.cma \
$BAS/basics.cma \
$FIL/files.cma \
$DAT/datastructures.cma \
$COMS/commonset.cma \
$CONS/contextset.cma \
$LEXLOI/localinputset_lexer.cma \
$LANLOI/localinputset_lexical_analysis.cma \
$SLOI/localinputset_symbols.cma \
$TLOI/localinputset_tags.cma \
$PARLOI/localinputset_parser.cma \
$BLOI/localinputset_builder_trees.cma \
   
  