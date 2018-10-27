ledit -x -h ./.toplevel-history ocaml \
-I $BAS \
-I $DAT \
-I $FIL \
-I $COMS \
-I $CONS \
-I $LEXNWC \
-I $SNWC \
-I $PARNWC \
-I $TNWC \
-I $BNWC \
unix.cma str.cma \
$BAS/basics.cma \
$FIL/files.cma \
$DAT/datastructures.cma \
$COMS/commonset.cma \
$CONS/contextset.cma \
$LEXNWC/nwchemdataset_lexer.cma \
$SNWC/nwchemdataset_symbols.cma \
$PARNWC/nwchemdataset_parser.cma \
$TNWC/nwchemdataset_tags.cma \
$BNWC/nwchemdataset_builder_trees.cma \
 
  