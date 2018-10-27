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
-I $COODB1 \
-I $BDB1 \
-I $SDB1 \
-I $TDB1 \
-I $LEXDB1 \
-I $COODB1 \
-I $BDB1 \
-I $SELE \
-I $TELE \
-I $DELE \
runtest.byt 