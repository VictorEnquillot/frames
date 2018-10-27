#!/bin/bash

# Operator fence
./do_container_as_uno_fence_bud_0containee_v.sh property_operator_fence_creation_tobasic pct
./do_container_as_uno_fence_bud_0containee_v.sh property_operator_fence_creation_toentity pct
./do_container_as_uno_fence_bud_0containee_v.sh property_operator_fence_creation_tomeasure pct
./do_container_as_uno_fence_bud_0containee_v.sh property_operator_fence_tounit_print ptp 
./do_container_as_uno_fence_bud_0containee_v.sh property_operator_fence_tounit_write ptw

# Operand_fence 
./do_container_as_uno_fence_bud_0containee_v.sh property_operand_fence_external poe

do_container_as_uno_fence_trunc_1sibling_0containee_v.sh \
property_operand_fence pof \
property_operand_fence_external pfe

# body bud 

./do_container_as_duo_body_bud_1containee_v.sh \
property_command_body_debug pcd \
property_operand_fence_external poe

./do_container_as_singlet_body_bud_1containee_v.sh \
property_command_body_set pcs \
property_command_body pbc 

./do_container_as_singlet_body_bud_1containee_v.sh \
property_command_body_title pct \
property_operand_fence_external pce

./do_container_as_singlet_body_bud_1containee_v.sh \
property_command_body_trace pct \
property_operand_fence_external pce 

# Operand_body

./do_container_as_doublet_body_bud_2containee_v.sh \
property_operand_body_target_calculated ptc \
property_operator_fence_creation_tobasic pct \
property_operand pop 

./do_container_as_doublet_body_bud_2containee_v.sh \
property_operand_body_target_created ptc \
property_operator_fence_creation_toentity pct \
property_operand pop

./do_container_as_doublet_body_bud_2containee_v.sh \
property_operand_body_target_measured ptm \
property_operator_fence_creation_tomeasure pct \
property_operand pop

# Target_body

./do_container_as_doublet_body_bud_2containee_v.sh \
property_target_body_implicit_tounit pit \
property_operator_fence_tounit pot \
property_operand pop

# Operator_fence

do_container_as_uno_fence_trunc_3sibling_0containee_v.sh \
property_operator_fence_creation poc \
property_operator_fence_creation_tobasic pcb \
property_operator_fence_creation_tomeasure pcm \
property_operator_fence_creation_toentity pce

do_container_as_uno_fence_trunc_2sibling_0containee_v.sh \
property_operator_fence_tounit pot \
property_operator_fence_tounit_print ptp \
property_operator_fence_tounit_write ptw

do_container_as_uno_fence_trunc_2sibling_0containee_v.sh \
property_operator_fence pfo \
property_operator_fence_creation poc \
property_operator_fence_tounit pot

do_container_as_tuple_body_trunc_1sibling_0containee_v.sh \
property_operator pop \
property_operator_fence pof

# body_trunc 
# Target_body 

do_container_as_tuple_body_trunc_1sibling_0containee_v.sh \
property_target_body_implicit pti \
property_target_body_implicit_tounit pit

do_container_as_tuple_body_trunc_1sibling_0containee_v.sh \
property_target_body ptb \
property_target_body_implicit pbi

do_container_as_tuple_body_trunc_1sibling_0containee_v.sh \
property_target pta \
property_target_body ptb

# Operand_body 

do_container_as_tuple_body_trunc_3sibling_0containee_v.sh \
property_operand_body_target pot \
property_operand_body_target_calculated pca \
property_operand_body_target_created pcr \
property_operand_body_target_measured ptm 

do_container_as_tuple_body_trunc_1sibling_0containee_v.sh \
property_operand_body pbo \
property_operand_body_target pot 

do_container_as_tuple_body_trunc_2sibling_0containee_v.sh \
property_operand pop \
property_operand_body pob \
property_operand_fence pof

# Command_body 

do_container_as_tuple_body_trunc_4sibling_0containee_v.sh \
property_command_body pbc \
property_command_body_debug pcd \
property_command_body_set pcs \
property_command_body_trace ptr \
property_command_body_title pti

do_container_as_tuple_body_trunc_1sibling_0containee_v.sh \
property_command pco \
property_command_body pcb 
 
# Context bud 

./do_container_as_list_context_bud_1containee_v.sh \
property_context_sector pcs \
property_context_domain pcd 

./do_container_as_list_context_bud_1containee_v.sh \
property_context_domain pcd \
property_context_inputbase pba

./do_container_as_list_context_bud_1containee_v.sh \
property_context_inputbase pba \
property_context_inputbox pbo

./do_container_as_list_context_bud_1containee_v.sh \
property_context_inputbox ico \
property_target_body_implicit_tounit pit

# Context trunc

do_container_context_trunc_4sibling_0containee_v.sh \
property_context pco \
property_context_sector pcs \
property_context_domain pcd \
property_context_inputbase pba \
property_context_inputbox pbo 
 
# Top

do_container_as_list_top_stem_5sibling_0containee_v.sh \
property pro \
property_command pcm \
property_context pcn \
property_operand pod \
property_operator por \
property_target pta 
 
echo ""
echo " mv Property*container_v.ml ../"
echo ""


exit


