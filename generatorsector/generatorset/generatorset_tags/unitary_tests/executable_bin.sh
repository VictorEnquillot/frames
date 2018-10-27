if [ "$1" = "" ]
then
	echo "Error : module name is missing"
	echo "Usage :"
	echo "        $0 module"
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
-I /keep/sources/ocaml_top/setup/frames/generatorset/generatorset_tags \
-c ${module}.ml

ocamlopt \
-o executable.bin  \
unix.cmxa str.cmxa \
/keep/sources/ocaml_top/setup/frames/general/basics/basics.cmxa \
/keep/sources/ocaml_top/setup/frames/general/datastructures/datastructures.cmxa \
/keep/sources/ocaml_top/setup/frames/general/files/files.cmxa \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_symbols/generatorset_symbols.cmxa \
/keep/sources/ocaml_top/setup/frames/generatorset/generatorset_tags/generatorset_tags.cmxa \
${module}.cmx

if [ -f executable.bin ]
then
    executable.bin
else
    echo "${module}" >> error.log
fi