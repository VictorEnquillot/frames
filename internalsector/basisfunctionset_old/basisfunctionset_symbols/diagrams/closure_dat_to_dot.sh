#!/bin/bash

grep _closure ../generator/basisfunction_symbols.dat > c
cat c | sed 's/basisfunction_closure_/Bf\\n/g' > d
cat d | sed 's/basisfunction_closure /Bf  /' > e
cat e | sed 's/ //g' > f
cat f | sed 's/Bf/" "Bf/g' > g
cat g | sed 's/=" /" ->  {/' > h
cat h | sed 's/$/"};/' > i
cat i | sed 's/_/\\n/g' > j
cat j | sed 's/:ofstring/\\nof string/g' > k
cat k | sed 's/constructors" /   /' 
