if [ "$1" = "" ]
then
	echo "Error : module name is missing"
	echo "Usage :"
	echo "        $0 Do_figureset_symbols_tv"
	echo "        $0 Do_figureset_formulas_tv"
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
-I /keep/sources/ocaml_top/setup/frames/commonset \
-I /keep/sources/ocaml_top/setup/frames/inputset \
-I /keep/sources/ocaml_top/setup/frames/figureset/figureset_databases/common \
-I /keep/sources/ocaml_top/setup/frames/figureset/figureset_databases/db1 \
-c ${module}.ml

ocamlc -warn-error A -annot -g \
-o executable.byt  \
unix.cma str.cma \
/keep/sources/ocaml_top/setup/frames/general/basics/basics.cma \
/keep/sources/ocaml_top/setup/frames/general/datastructures/datastructures.cma \
/keep/sources/ocaml_top/setup/frames/general/files/files.cma \
/keep/sources/ocaml_top/setup/frames/commonset/commonset.cma \
/keep/sources/ocaml_top/setup/frames/inputset/inputset.cma \
/keep/sources/ocaml_top/setup/frames/figureset/figureset_databases/common/common.cma \
/keep/sources/ocaml_top/setup/frames/figureset/figureset_databases/db1/db1.cma \
${module}.cmo

if [ -f executable.byt ]
then
    executable.byt
else
    echo "${module}" >> error.log
fi