#!/bin/bash

ledit -x -h ./.toplevel-history ocaml \
-I ${GES}/basics \
-I ${GES}/datastructures \
-I ${GES}/files \
-I ${COMS} \
-I ${CONS} \
unix.cma str.cma \
${GES}/basics/basics.cma \
${GES}/datastructures/datastructures.cma \
${GES}/files/files.cma \
${COMS}/commonset.cma \
${CONS}/contextset.cma \
 
  
