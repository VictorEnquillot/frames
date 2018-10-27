ledit -x -h ./.toplevel-history ocaml \
-I $BAS \
-I $DAT \
-I $FIL \
-I $COMS \
-I $QUA \
-I $CONS \
-I $LEXNWC \
-I $SNWC \
-I $PARNWC \
-I $TNWC \
-I $BNWC \
-I $SPAR \
-I $TPAR \
-I $BPAR \
-I $FPAR \
unix.cma str.cma \
$BAS/basics.cma \
$FIL/files.cma \
$DAT/datastructures.cma \
$COMS/commonset.cma \
$QUA/quantum.cma \
$CONS/contextset.cma \
$LEXNWC/nwchemdataset_lexer.cma \
$SNWC/nwchemdataset_symbols.cma \
$PARNWC/nwchemdataset_parser.cma \
$TNWC/nwchemdataset_tags.cma \
$BNWC/nwchemdataset_builder_trees.cma \
$SPAR/parameterset_symbols.cma \
$TPAR/parameterset_tags.cma \
$BPAR/parameterset_builder_trees.cma \
$FPAR/parameterset_containers.cma \
  
  