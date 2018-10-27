if [ "$1" = "" ]
then
	echo "Error : file kind name is missing"
	echo "Usage :"
	echo "        $0 mk"
	echo "        $0 tv"
exit
fi

case ${1} in
    mk ) file="files_mli_mk";;
    tv ) file="tv";;
    * ) file="files_mli_mk";;
esac

ocamlopt -warn-error A \
-I /keep/sources/ocaml_top/setup/frames/general/basics  \
-I /keep/sources/ocaml_top/setup/frames/general/datastructures  \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_symbols  \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_tags  \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_formulas  \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_interfaces  \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_databases/adb  \
-I /keep/sources/ocaml_top/setup/frames/general/files  \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_values \
-c Do_ghostset_symbols_${file}.ml

ocamlopt \
-o ghostset_generate_symbols_${file}.bin  \
unix.cmxa str.cmxa \
/keep/sources/ocaml_top/setup/frames/general/basics/basics.cmxa \
/keep/sources/ocaml_top/setup/frames/general/datastructures/datastructures.cmxa \
/keep/sources/ocaml_top/setup/frames/general/files/files.cmxa \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_symbols/generatorset_symbols.cmxa \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_tags/generatorset_tags.cmxa \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_databases/generatorset_databases.cmxa \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_databases/adb/adb.cmxa \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_interfaces/generatorset_interfaces.cmxa \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_formulas/generatorset_formulas.cmxa \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_values/generatorset_values.cmxa \
Do_ghostset_symbols_${file}.cmx

echo "ghostset_generate_symbols_${file}.bin done"

ls -alt ghostset_generate_symbols_${file}.bin