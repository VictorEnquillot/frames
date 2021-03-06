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
rm -f executable.bin

ocamlopt -warn-error A \
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

ocamlopt \
-o executable.bin  \
unix.cmxa str.cmxa \
/keep/sources/ocaml_top/setup/frames/general/basics/basics.cmxa \
/keep/sources/ocaml_top/setup/frames/general/datastructures/datastructures.cmxa \
/keep/sources/ocaml_top/setup/frames/general/files/files.cmxa \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_symbols/generatorset_symbols.cmxa \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_databases/adb/adb.cmxa \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_databases/generatorset_databases.cmxa \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_interfaces/generatorset_interfaces.cmxa \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_tags/generatorset_tags.cmxa \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_formulas/generatorset_formulas.cmxa \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_values/generatorset_values.cmxa \
${module}.cmx

if [ -f executable.bin ]
then
    executable.bin
else
    echo "${module}" >> error.log
fi