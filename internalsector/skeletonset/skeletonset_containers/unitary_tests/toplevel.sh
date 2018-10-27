#!/bin/bash

ledit -x -h ./.toplevel-history ocaml \
-I $BAS \
-I $DAT \
-I $FIL \
-I $COMS \
-I $CONS \
-I $LEXNWC \
-I $SNWC \
-I $TNWC \
-I $PARNWC \
-I $BNWC \
-I $SPAR \
-I $TPAR \
-I $BPAR \
-I $FPAR \
-I $VPAR \
-I $SSKE \
-I $TSKE \
-I $BSKE \
-I $FSKE \
unix.cma str.cma \
$BAS/basics.cma \
$FIL/files.cma \
$DAT/datastructures.cma \
$COMS/commonset.cma \
$CONS/contextset.cma \
$LEXNWC/nwchemdataset_lexer.cma \
$SNWC/nwchemdataset_symbols.cma \
$TNWC/nwchemdataset_tags.cma \
$PARNWC/nwchemdataset_parser.cma \
$BNWC/nwchemdataset_builder_trees.cma \
$SPAR/parameterset_symbols.cma \
$TPAR/parameterset_tags.cma \
$BPAR/parameterset_builder_trees.cma \
$FPAR/parameterset_formulas.cma \
$VPAR/parameterset_values.cma \
$SSKE/skeletonset_symbols.cma \
$TSKE/skeletonset_tags.cma \
$BSKE/skeletonset_builder_trees.cma \
$FSKE/skeletonset_formulas.cma \
  