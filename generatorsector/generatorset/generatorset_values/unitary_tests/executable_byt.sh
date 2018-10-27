if [ "$1" = "" ]
then
	echo "Error : module name is missing"
	echo "Usage :"
	echo "        $0 Do_figureset_symbols_tv"
	echo "        $0 Do_figureset_formulas_tv"
	echo "        $0 Do_generatorset_symbols_tv"
	echo "        $0 Do_generatorset_formulas_tv"
exit
fi

module=`echo $1 | sed 's/\.ml//'`

echo ""
echo "running test ${module}"
rm -f executable.byt

ocamlc -warn-error A -annot -g \
-I /keep/sources/ocaml_top/setup/frames/general/basics  \
-I /keep/sources/ocaml_top/setup/frames/general/datastructures  \
-I /keep/sources/ocaml_top/setup/frames/general/files  \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_symbols \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_databases/adb \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_databases \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_interfaces \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_tags \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_formulas \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_values \
-c ${module}.ml

ocamlc -warn-error A -annot -g \
-o executable.byt  \
unix.cma str.cma \
/keep/sources/ocaml_top/setup/frames/general/basics/basics.cma \
/keep/sources/ocaml_top/setup/frames/general/datastructures/datastructures.cma \
/keep/sources/ocaml_top/setup/frames/general/files/files.cma \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_symbols/generatorset_symbols.cma \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_databases/adb/adb.cma \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_databases/generatorset_databases.cma \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_interfaces/generatorset_interfaces.cma \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_tags/generatorset_tags.cma \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_formulas/generatorset_formulas.cma \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_values/generatorset_values.cma \
${module}.cmo

if [ -f executable.byt ]
then
    executable.byt
else
    echo "${module}" >> error.log
fi