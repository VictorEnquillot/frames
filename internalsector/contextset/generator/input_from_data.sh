#!/bin/bash

msrf data input $1 
msrf Data Input $1 
sed -e 's//_u_any.ml/' -e 's/_V_MLI/_U_ML/' -e 's/FILES_MLI/UNITARY_TESTS_FILES_ML/' > f