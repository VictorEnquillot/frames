#!/bin/bash

ledit -x -h ./.toplevel-history ocaml \
-I $BAS \
-I $DAT \
-I $FIL \
-I $COMS \
-I $UNI \
-I $MEA \
-I $REA \
-I $QUA \
-I $CONS \
-I $LEXLOI \
-I $LANLOI \
-I $SLOI \
-I $TLOI \
-I $PARLOI \
-I $BLOI \
-I $VARLOI \
-I $LEXNWC \
-I $SNWC \
-I $TNWC \
-I $PARNWC \
-I $BNWC \
-I $LEXDB1 \
-I $SDB1 \
-I $TDB1 \
-I $PARDB1 \
-I $BDB1 \
-I $SCOO \
-I $TCOO \
-I $BCOO \
-I $CCOO \
-I $RCOO \
-I $ECOO \
-I $SPAR \
-I $TPAR \
-I $BPAR \
-I $CPAR \
-I $RPAR \
-I $EPAR \
-I $SFIG \
-I $TFIG \
-I $BFIG \
-I $CFIG \
-I $EFIG \
-I $SSKE \
-I $TSKE \
-I $BSKE \
-I $CSKE \
-I $ESKE \
-I $SPRO \
-I $TPRO \
-I $BPRO \
-I $CPRO \
-I $EPRO \
-I $IPRO \
-I $VPRO \
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
$LEXLOI/localinputset_lexer.cma \
$LANLOI/localinputset_lexical_analysis.cma \
$SLOI/localinputset_symbols.cma \
$TLOI/localinputset_tags.cma \
$PARLOI/localinputset_parser.cma \
$BLOI/localinputset_builder_trees.cma \
$VARLOI/localinputset_variables.cma \
$LEXDB1/db1pointsdataset_lexer.cma \
$SDB1/db1pointsdataset_symbols.cma \
$PARDB1/db1pointsdataset_parser.cma \
$TDB1/db1pointsdataset_tags.cma \
$BDB1/db1pointsdataset_builder_trees.cma \
$SCOO/coordinateset_symbols.cma \
$TCOO/coordinateset_tags.cma \
$BCOO/coordinateset_builder_trees.cma \
$CCOO/coordinateset_containers.cma \
$RCOO/coordinateset_readees.cma \
$ECOO/coordinateset_envelopes.cma \
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
$EELE/elementaryset_envelopes.cma \
$SFIG/figureset_symbols.cma \
$TFIG/figureset_tags.cma \
$BFIG/figureset_builder_trees.cma \
$CFIG/figureset_containers.cma \
$EFIG/figureset_envelopes.cma \
$SSKE/skeletonset_symbols.cma \
$TSKE/skeletonset_tags.cma \
$BSKE/skeletonset_builder_trees.cma \
$CSKE/skeletonset_containers.cma \
$ESKE/skeletonset_envelopes.cma \
$SPRO/propertyset_symbols.cma \
$TPRO/propertyset_tags.cma \
$BPRO/propertyset_builder_trees.cma \
$CPRO/propertyset_containers.cma \
$EPRO/propertyset_envelopes.cma \

   