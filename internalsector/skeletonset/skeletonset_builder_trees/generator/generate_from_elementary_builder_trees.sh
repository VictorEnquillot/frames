cp $BELE/files_mli.mk .
cp $BELE/*ml .

rm *vertex* *b1points* *DB1POINTS* Skeleton_string_off_list_by_nwchemdata_body_node_aoset_numerical_values_string_off_list_translator_v.ml
 
delete_lines_where.pl _vertex_  *ml *mk
delete_lines_where.pl b1points  *ml *mk
delete_lines_where.pl DB1POINTS *ml *mk
delete_lines_where.pl Skeleton_string_off_list_by_nwchemdata_body_node_aoset_numerical_values_string_off_list_translator_v.mli files_mli.mk

modify_strings_and_rename_files.sh elementary skeleton *ml *mk
modify_strings_and_rename_files.sh Elementary Skeleton *ml *mk

sed '/TRANSLATION_FROM_NWCHEMDATA_V_MLI/ {
      a Skeleton_symbol_from_nwchem_tag_translations_v.mli \\
    }' < files_mli.mk > f

mv f files_mli.mk

modify_string.pl _ele  _ske *ml
modify_string.pl _ebo  _sbo *ml
modify_string.pl _eba  _sba *ml
modify_string.pl _ecd  _scd *ml
modify_string.pl _ecs  _scs *ml

do_extractor.sh force o

do_provider_register_translator_extractor_all.sh force > o
