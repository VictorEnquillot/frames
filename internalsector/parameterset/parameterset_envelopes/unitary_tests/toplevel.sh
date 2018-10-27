#!/bin/bash

ledit -x -h ./.toplevel-history ocaml \
-I $BAS \
-I $DAT \
-I $FIL \
-I $COMS \
-I $CONS \
-I $UNI \
-I $MEA \
-I $REA \
-I $QUA \
-I $LEXNWC \
-I $SNWC \
-I $TNWC \
-I $PARNWC \
-I $BNWC \
-I $SPAR \
-I $TPAR \
-I $BPAR \
-I $CPAR \
-I $RPAR \
-I $EPAR \
unix.cma str.cma \
$BAS/basics.cma \
$FIL/files.cma \
$DAT/datastructures.cma \
$COMS/commonset.cma \
$UNI/units.cma \
$MEA/measure.cma \
$REA/readee.cma \
$QUA/quantum.cma \
$CONS/contextset.cma \
$LEXNWC/nwchemdataset_lexer.cma \
$SNWC/nwchemdataset_symbols.cma \
$TNWC/nwchemdataset_tags.cma \
$PARNWC/nwchemdataset_parser.cma \
$BNWC/nwchemdataset_builder_trees.cma \
$SPAR/parameterset_symbols.cma \
$TPAR/parameterset_tags.cma \
$BPAR/parameterset_builder_trees.cma \
$CPAR/parameterset_containers.cma \
$RPAR/parameterset_readees.cma \
$EPAR/parameterset_envelopes.cma \
 