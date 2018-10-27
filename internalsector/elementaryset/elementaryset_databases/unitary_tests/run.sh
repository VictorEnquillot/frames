echo "running $1"

ocamlc -warn-error A -annot -g -I /keep/sources/ocaml_top/setup/frames/general/basics -I /keep/sources/ocaml_top/setup/frames/general/datastructures -I /keep/sources/ocaml_top/setup/frames/general/files -I /keep/sources/ocaml_top/setup/frames/commonset -I /keep/sources/ocaml_top/setup/frames/databaseset/databaseset_common -I /keep/sources/ocaml_top/setup/frames/databaseset/database_db1 -I /keep/sources/ocaml_top/setup/frames/inputset/inputset_common -I /keep/sources/ocaml_top/setup/frames/inputset/inputset_symbols -I /keep/sources/ocaml_top/setup/frames/inputset/inputset_parser -I /keep/sources/ocaml_top/setup/frames/inputset/inputset_providers -I /keep/sources/ocaml_top/setup/frames/inputset/inputset_tags -I /keep/sources/ocaml_top/setup/frames/elementaryset/elementaryset_symbols -I /keep/sources/ocaml_top/setup/frames/elementaryset/elementaryset_tags -I /keep/sources/ocaml_top/setup/frames/elementaryset/elementaryset_databases -c $1.ml

ocamlc -warn-error A -annot -g -I /keep/sources/ocaml_top/setup/frames/general/basics -I /keep/sources/ocaml_top/setup/frames/general/datastructures -I /keep/sources/ocaml_top/setup/frames/general/files -I /keep/sources/ocaml_top/setup/frames/commonset -I /keep/sources/ocaml_top/setup/frames/databaseset/databaseset_common -I /keep/sources/ocaml_top/setup/frames/databaseset/database_db1 -I /keep/sources/ocaml_top/setup/frames/inputset/inputset_common -I /keep/sources/ocaml_top/setup/frames/inputset/inputset_symbols -I /keep/sources/ocaml_top/setup/frames/inputset/inputset_parser -I /keep/sources/ocaml_top/setup/frames/inputset/inputset_providers -I /keep/sources/ocaml_top/setup/frames/inputset/inputset_tags -I /keep/sources/ocaml_top/setup/frames/elementaryset/elementaryset_symbols -I /keep/sources/ocaml_top/setup/frames/elementaryset/elementaryset_tags -I /keep/sources/ocaml_top/setup/frames/elementaryset/elementaryset_databases -o runtest.byt unix.cma -cclib -lunix str.cma -cclib -lstr  /keep/sources/ocaml_top/setup/frames/general/basics/basics.cma   /keep/sources/ocaml_top/setup/frames/general/datastructures/datastructures.cma   /keep/sources/ocaml_top/setup/frames/general/files/files.cma   /keep/sources/ocaml_top/setup/frames/commonset/commonset.cma   /keep/sources/ocaml_top/setup/frames/databaseset/databaseset_common/databaseset_common.cma   /keep/sources/ocaml_top/setup/frames/databaseset/database_db1/database_db1.cma   /keep/sources/ocaml_top/setup/frames/inputset/inputset_common/inputset_common.cma   /keep/sources/ocaml_top/setup/frames/inputset/inputset_symbols/inputset_symbols.cma   /keep/sources/ocaml_top/setup/frames/inputset/inputset_tags/inputset_tags.cma   /keep/sources/ocaml_top/setup/frames/inputset/inputset_lexer/inputset_lexer.cma   /keep/sources/ocaml_top/setup/frames/inputset/inputset_parser/inputset_parser.cma   /keep/sources/ocaml_top/setup/frames/inputset/inputset_providers/inputset_providers.cma   /keep/sources/ocaml_top/setup/frames/elementaryset/elementaryset_symbols/elementaryset_symbols.cma   /keep/sources/ocaml_top/setup/frames/elementaryset/elementaryset_tags/elementaryset_tags.cma   /keep/sources/ocaml_top/setup/frames/elementaryset/elementaryset_databases/elementaryset_databases.cma $1.cmo; 

echo "runtest.byt done"