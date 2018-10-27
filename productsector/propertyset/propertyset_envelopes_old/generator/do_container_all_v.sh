#!/bin/bash

# fence bud 
./do_container_as_uno_fence_bud_0containee_v.sh property_set_fence_operand_external poe
./do_container_as_uno_fence_bud_0containee_v.sh property_set_fence_operator_creation_tobasic pct
./do_container_as_uno_fence_bud_0containee_v.sh property_set_fence_operator_creation_toentity pct
./do_container_as_uno_fence_bud_0containee_v.sh property_set_fence_operator_creation_tomeasure pct
./do_container_as_uno_fence_bud_0containee_v.sh property_set_fence_operator_tounit_print ptp 
./do_container_as_uno_fence_bud_0containee_v.sh property_set_fence_operator_tounit_write ptw

# body bud 

./do_container_as_duo_body_bud_1containee_v.sh \
property_set_body_command_debug pcd \
property_set_fence_operand_external poe

./do_container_as_singlet_body_bud_1containee_v.sh \
property_set_body_command_set pcs \
property_set_body_command pbc 

./do_container_as_singlet_body_bud_1containee_v.sh \
property_set_body_command_title pct \
property_set_fence_operand_external pce

./do_container_as_singlet_body_bud_1containee_v.sh \
property_set_body_command_trace pct \
property_set_fence_operand_external pce 

./do_container_as_doublet_body_bud_2containee_v.sh \
property_set_body_operand_target_calculated ptc \
property_set_fence_operator_creation_tobasic pct \
property_set_body_operand pbo 

./do_container_as_doublet_body_bud_2containee_v.sh \
property_set_body_operand_target_created ptc \
property_set_fence_operator_creation poc \
property_set_body_operand pbo 

./do_container_as_doublet_body_bud_2containee_v.sh \
property_set_body_operand_target_measured ptm \
property_set_fence_operator_creation_tomeasure pct \
property_set_body_operand pbo 

./do_container_as_doublet_body_bud_2containee_v.sh \
property_set_body_target_implicit_tounit pit \
property_set_fence_operator_tounit pot \
property_set_body_operand pbo

# fence_trunc

do_container_as_uno_fence_trunc_3sibling_0containee_v.sh \
property_set_fence_operator_creation poc \
property_set_fence_operator_creation_tobasic pcb \
property_set_fence_operator_creation_tomeasure pcm \
property_set_fence_operator_creation_toentity pce

do_container_as_uno_fence_trunc_2sibling_0containee_v.sh \
property_set_fence_operator_tounit pot \
property_set_fence_operator_tounit_print ptp \
property_set_fence_operator_tounit_write ptw

do_container_as_uno_fence_trunc_2sibling_0containee_v.sh \
property_set_fence_operator pfo \
property_set_fence_operator_creation poc \
property_set_fence_operator_tounit pot

do_container_as_uno_fence_trunc_2sibling_0containee_v.sh \
property_set_fence psf \
property_set_fence_operand_external poe \
property_set_fence_operator pfo

# body_trunc 

do_container_as_tuple_body_trunc_1sibling_0containee_v.sh \
property_set_body_target_implicit pti \
property_set_body_target_implicit_tounit pit

do_container_as_tuple_body_trunc_3sibling_1containee_v.sh \
property_set_body_operand_target pot \
property_set_body_operand_target_calculated pca \
property_set_body_operand_target_created pcr \
property_set_body_operand_target_measured ptm \
property_set_fence psf

do_container_as_tuple_body_trunc_1sibling_0containee_v.sh \
property_set_body_operand pbo \
property_set_body_operand_target pot 

do_container_as_tuple_body_trunc_4sibling_upcontainee_v.sh \
property_set_body_command pbc \
property_set_body_command_debug pcd \
property_set_body_command_set pcs \
property_set_body_command_trace ptr \
property_set_body_command_title pti \
property_set_fence psf

do_container_as_tuple_body_trunc_3sibling_upcontainee_v.sh \
property_set_body psb \
property_set_body_command pbc \
property_set_body_operand pbo \
property_set_body_target_implicit pti \
property_set_fence psf

do_container_as_tuple_body_trunc_2sibling_upcontainee_v.sh \
property_set pse \
property_set_body psb \
property_set_fence psf \
property_set_fence psf

# context bud 

./do_container_as_list_context_bud_1containee_v.sh property_context_sector pcs property_context_domain pcd 
./do_container_as_list_context_bud_1containee_v.sh property_context_domain pcd property_context_inputbase pba
./do_container_as_list_context_bud_1containee_v.sh property_context_inputbase pba property_context_inputbox pbo
./do_container_as_list_context_bud_1containee_v.sh property_context_inputbox ico property_set_body psb

# context trunc

do_container_context_trunc_4sibling_0containee_v.sh \
property_context pco \
property_context_sector pcs \
property_context_domain pcd \
property_context_inputbase pba \
property_context_inputbox pbo 
 
# Top

do_container_as_list_top_stem_2sibling_1containee_v.sh \
property pro \
set pse \
context pco \
property_set_fence psf
 
echo ""
echo " mv Property*container_v.ml ../"
echo ""


exit


