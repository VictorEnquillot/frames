# ------ Fence ----------

do_envelope_as_list_fence_bud_bridge_v.sh \
skeleton_fence_centered sfc aopef sca elementary_body_parameter_tuple ept  

do_envelope_as_list_fence_bud_bridge_v.sh \
skeleton_fence_centered sfc ecppef sce elementary_body_parameter_tuple ept  

# ------ Fence Trunc ----

do_envelope_as_list_fence_trunc_2sibling_v.sh \
skeleton_fence_centered sfe aopef sca ecppef sce

do_envelope_as_list_fence_trunc_2sibling_v.sh \
skeleton_fence sfe centered sfc periodic sfp 

# ------ Body -----------

# ------ Body Bud aopef -------

do_envelope_as_list_body_bud_v.sh \
skeleton_body_centered_aopefset_shellordinal sso skeleton_fence_centered_aopef sca

do_envelope_as_list_body_bud_v.sh \
skeleton_body_centered_aopefset_shellsymmetry sss \
skeleton_body_centered_aopefset_shellordinal sso

do_envelope_as_list_body_bud_v.sh \
skeleton_body_centered_aopefset_onecenter soc \
skeleton_body_centered_aopefset_shellsymmetry sss 

do_envelope_as_list_body_bud_v.sh \
skeleton_body_centered_aopefset_anycenter sac \
skeleton_body_centered_aopefset_onecenter soc 

# ------ Body Trunc -----

do_envelope_as_list_body_trunc_4sibling_v.sh \
skeleton_body_centered_aopefset sas \
anycenter sac \
onecenter soc \
shellsymmetry sss \
shellordinal sso 

do_envelope_as_list_body_trunc_1on2sibling_v.sh \
skeleton_body_centered sbc \
aopefset sas \
ecppefset ses 

do_envelope_as_list_body_trunc_1on2sibling_v.sh \
skeleton_body sbo \
centered sbc \
periodic sbp 

# ------ Context Bud -----

do_envelope_as_list_context_bud_v.sh \
skeleton_context_databox sbo \
skeleton_body sbo 

do_envelope_as_list_context_bud_v.sh \
skeleton_context_database scd \
skeleton_context_databox sbo

do_envelope_as_list_context_bud_v.sh \
skeleton_context_domain scd \
skeleton_context_database scd

# ------ Context Trunc -----

do_envelope_as_list_context_trunc_3sibling_v.sh \
skeleton_context sco \
database sdb \
databox sbo \
domain scd

# ------ Skeleton Trunc -----

do_envelope_as_list_skeleton_trunc_3sibling_v.sh \
skeleton ske \
context sco \
body sbo \
fence sfe 

echo " "
echo " mv Skeleton_*.ml ../"
echo " "

exit
