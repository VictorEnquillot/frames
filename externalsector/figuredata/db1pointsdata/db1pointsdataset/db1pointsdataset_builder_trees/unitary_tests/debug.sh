#!/bin/bash

ledit -x -h ./.ocaml-debug-history ocamldebug \
-I $BAS \
-I $DAT \
-I $FIL \
-I $COM \
-I $CON \
-I $LEXDB1 \
-I $SDB1 \
-I $PARDB1 \
-I $TDB1 \
-I $BDB1 \
runtest.byt