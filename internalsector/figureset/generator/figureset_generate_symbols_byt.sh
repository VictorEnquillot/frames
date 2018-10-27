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

ocamlc -warn-error A -g \
-I /keep/sources/ocaml_top/setup/frames/general/basics  \
-I /keep/sources/ocaml_top/setup/frames/general/datastructures  \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_symbols  \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_tags  \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_formulas  \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_interfaces  \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_databases/adb  \
-I /keep/sources/ocaml_top/setup/frames/general/files  \
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_values \
-c Do_figureset_symbols_${file}.ml

ocamlc -warn-error A -g \
-o figureset_generate_symbols_${file}.byt  \
Do_figureset_symbols_${file}.cmo

echo "figureset_generate_symbols_${file}.byt done"

ls -alt figureset_generate_symbols_${file}.byt