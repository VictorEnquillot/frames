#!/bin/bash

cp files_mli.mk KEEP/

cp $BSKE/*.mk .
cp $BSKE/*ml .
cp $BSKE/Makefile .
cp $BSKE/.depend .
cp -p $BSKE/configure* .

mw BSKE BFIG *ml
ms SKELETONSET FIGURESET *mk
ms NWCHEM DB1POINTS *mk

modify_strings_and_rename_files.sh skeleton figure *ml *mk
modify_strings_and_rename_files.sh Skeleton Figure *ml *mk
modify_strings_and_rename_files.sh nwchem db1points *ml *mk
modify_strings_and_rename_files.sh Nwchem Db1points *ml *mk

# 
cp $DFIG/Figure_symbol_from_db1figure_tag_translations_v.ml Figure_symbol_from_db1pointsdata_tag_translations_v.ml
modify_string.pl b1figure_ b1pointsdata_ Figure_symbol_from_db1pointsdata_tag_translations_v.ml
modify_string.pl Db1pointsdata_fence_token_figure_kind_triangle "Db1pointsdata_fence_token_figure_kind_triangle_symbol _" Figure_symbol_from_db1pointsdata_tag_translations_v.ml
modify_string.pl Db1pointsdata_fence_token_figure_kind_segment "Db1pointsdata_fence_token_figure_kind_segment_symbol _" Figure_symbol_from_db1pointsdata_tag_translations_v.ml
modify_string.pl Db1pointsdata_fence_token_figure_kind_point "Db1pointsdata_fence_token_figure_kind_point_symbol _" Figure_symbol_from_db1pointsdata_tag_translations_v.ml

# sed '/TRANSLATION_FROM_NWCHEMDATA_V_MLI/ {
#      a Skeleton_symbol_from_nwchem_tag_translations_v.mli \\
#    }' < files_mli.mk > f

# mv f files_mli.mk

modify_string.pl _ske _fig *ml
modify_string.pl _sbo _fbo *ml
modify_string.pl _sba _fba *ml
modify_string.pl _scd _fcd *ml
modify_string.pl _scs _fcs *ml

do_extractor.sh force 

do_provider_register_translator_extractor_all.sh force > o
