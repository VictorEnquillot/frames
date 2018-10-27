ledit -x -h ./.toplevel-history ocaml \
-I $BAS \
-I $DAT \
-I $FIL \
-I $COMS \
-I $CONS \
-I $LEXDB1 \
-I $SDB1 \
-I $PARDB1 \
-I $TDB1 \
-I $BDB1 \
-I $SCOO \
-I $TCOO \
-I $BCOO \
-I $FCOO \
unix.cma str.cma \
$BAS/basics.cma \
$FIL/files.cma \
$DAT/datastructures.cma \
$COMS/commonset.cma \
$CONS/contextset.cma \
$LEXDB1/db1pointsdataset_lexer.cma \
$SDB1/db1pointsdataset_symbols.cma \
$PARDB1/db1pointsdataset_parser.cma \
$TDB1/db1pointsdataset_tags.cma \
$BDB1/db1pointsdataset_builder_trees.cma \
$SCOO/coordinateset_symbols.cma \
$TCOO/coordinateset_tags.cma \
$BCOO/coordinateset_builder_trees.cma \
$FCOO/coordinateset_formulas.cma \
  
  