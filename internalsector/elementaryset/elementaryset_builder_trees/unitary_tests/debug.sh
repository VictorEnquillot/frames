#!/bin/bash

ledit -x -h ./.ocaml-debug-history ocamldebug \
-I $BAS \
-I $DAT \
-I $FIL \
-I $COM \
-I $QUA \
-I $CON \
-I $SDB1 \
-I $TDB1 \
-I $LEXDB1 \
-I $PARDB1 \
-I $BDB1 \
-I $SNWC \
-I $TNWC \
-I $LEXNWC \
-I $PARNWC \
-I $BNWC \
-I $SELE \
-I $TELE \
-I $DELE \
runtest.byt 