#!/bin/bash

cp $BLOI/KEEP/*variable*ml .
cp $BLOI/KEEP/Make_argument*ml .
cp $BLOI/KEEP/Input_fence_*ml .
cp $BLOI/KEEP/Input_body_*ml .
cp $BLOI/KEEP/Input_as_body_*ml .

modify_strings_and_rename_files.sh _input_fullnameoffile_  _inputbox_name_ *.ml *.mk
modify_strings_and_rename_files.sh _input_ _localinput_  *.ml *.mk
modify_strings_and_rename_files.sh t.input_ t.localinput_  *.ml *.mk
modify_strings_and_rename_files.sh v.input_ v.localinput_  *.ml *.mk
modify_strings_and_rename_files.sh Input_ Localinput_  *.ml *.mk

modify_string.pl Localinput_tag_subtree_by_localinput_as_root_tag_ Localinput_tag_subtree_by_localinput_tag_ *ml
modify_string.pl localinput_context_file_string_off_off_sole_index localinput_context_inputbox_string_off_off_sole_index *ml

modify_word.pl fno_inp nam_ibo *by_inputbox_name*ml
modify_string.pl tag_inp tag_loi *ml

modify_string.pl _bhc _lhc *ml
modify_string.pl _hcu _lcu *ml
modify_string.pl _ccd _lcd *ml
modify_string.pl _fvn _lvn *ml
modify_string.pl _nei _lei *ml

modify_word.pl BINP VARLOI *ml
# 
# sed '/TRANSLATION_FROM_NWCHEMDATA_V_MLI/ {
#      a Skeleton_symbol_from_nwchem_tag_translations_v.mli \\
#    }' < files_mli.mk > f

# mv f files_mli.mk

# do_extractor.sh force 

# do_provider_register_translator_extractor_all.sh force > o

# generator/generate_from_skeleton_builder_trees_all.sh
