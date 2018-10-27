#!/bin/bash

grep _body ../generator/wavefunction_symbols.dat > c
cat c | sed 's/wavefunction_body_/Wf\\n/g' > d
cat d | sed 's/wavefunction_body /Wf  /' > e
cat e | sed 's/ //g' > f
cat f | sed 's/Wf/" "Wf/g' > g
cat g | sed 's/=" /" ->  {/' > h
cat h | sed 's/$/"};/' > i
cat i | sed 's/_/\\n/g' > j
cat j | sed 's/:ofstring/\\nof string/g' > k
cat k | sed 's/constructors" /   /' 
