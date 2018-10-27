#!/bin/bash

cp $BDB1/*.mk .
cp $BDB1/*ml .
cp $BDB1/Makefile .
cp $BDB1/.depend .
cp -p $BDB1/configure* .

modify_word.pl BDB1 BLOI *ml
modify_string.pl FIGUREDATA USERINPUT *mk
modify_string.pl DB1POINTSDATASET LOCALINPUTSET *mk

modify_strings_and_rename_files.sh figuredata userinput *ml *mk
modify_strings_and_rename_files.sh Figuredata Userinput *ml *mk
modify_strings_and_rename_files.sh db1pointsdata localinput *ml *mk
modify_strings_and_rename_files.sh Db1pointsdata Localinput *ml *mk
modify_strings_and_rename_files.sh figure user *ml *mk
modify_strings_and_rename_files.sh Figure User *ml *mk
modify_strings_and_rename_files.sh db1points local *ml *mk
modify_strings_and_rename_files.sh Db1points Local *ml *mk

modify_strings_and_rename_files.sh databox_name_n_database_name inputbox_name_n_inputbase_name *ml *mk
modify_strings_and_rename_files.sh Databox_name_n_database_name Inputbox_name_n_inputbase_name *ml *mk

modify_strings_and_rename_files.sh ocalinput_context_database ocalinput_context_inputbase  *ml *mk
modify_strings_and_rename_files.sh ocalinput_context_databox ocalinput_context_inputbox  *ml *mk
modify_strings_and_rename_files.sh databox_name inputbox_name *ml *mk
modify_strings_and_rename_files.sh root_databox root_inputbox *ml *mk
modify_strings_and_rename_files.sh database_name inputbase_name *ml *mk

modify_strings_and_rename_files.sh localinput_symbol_tree_root_databox_of_databox_name localinput_symbol_tree_root_inputbox_of_inputbox_name *ml *mk
# 
#      a Skeleton_symbol_from_nwchem_tag_translations_v.mli \\
#    }' < files_mli.mk > f

# 

modify_string.pl _db1 _loi *ml
modify_string.pl _dbo _lbo *ml
modify_string.pl _dba _lba *ml
modify_string.pl _dcd _lcd *ml
modify_string.pl _dcs _lcs *ml

do_extractor.sh force 

delete_lines_from_to_eof.pl SYMBOL_SUBTREE_FOR_TRANSLATION_V_MLI files_mli.mk

echo "FILES_MLI := \\" >> files_mli.mk
do_FILES_MLI.sh >> files_mli.mk
echo "" >> files_mli.mk

move_unused_modules_to_keep.sh

# do_provider_register_translator_extractor_all.sh force > o
