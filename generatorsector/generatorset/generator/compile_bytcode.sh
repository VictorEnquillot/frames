#!/bin/bash

if [ "$1" = "" ]
then
    echo "Usage :"
    echo "    $0 Generator_for_domainset_category_usagefile [debug]"
    exit
else
    echo " Compilation of $1.ml"
fi

if [ "$2" = "debug" ]
then
    debug="-g"
    echo "debug activated"
else
    echo "No debug"
fi

ocamlc -warn-error A -annot -g \
-I /keep/sources/ocaml_top/setup/frames/general/basics  \
-I /keep/sources/ocaml_top/setup/frames/general/datastructures  \
-I /keep/sources/ocaml_top/setup/frames/general/files  \
-I /keep/sources/ocaml_top/setup/frames/commonset  \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_symbols  \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_tags  \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_formulas  \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_interfaces  \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_databases/adb  \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_values \
-c ${1}.ml

ocamlc ${debug} \
-o ${1}.byt  \
unix.cma str.cma \
/keep/sources/ocaml_top/setup/frames/general/basics/basics.cma \
/keep/sources/ocaml_top/setup/frames/general/datastructures/datastructures.cma \
/keep/sources/ocaml_top/setup/frames/general/files/files.cma \
/keep/sources/ocaml_top/setup/frames/commonset/commonset.cma \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_symbols/generatorset_symbols.cma \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_tags/generatorset_tags.cma \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_databases/generatorset_databases.cma \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_databases/adb/adb.cma \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_interfaces/generatorset_interfaces.cma \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_formulas/generatorset_formulas.cma \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_values/generatorset_values.cma \
${1}.cmo
