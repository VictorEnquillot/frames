# ------ Fence Bridge ----------

do_envelope_as_list_fence_bud_bridge_v.sh \
figure_field_fence fff point ffp \
elementary_body_coordinate_tuple ect  

# ------ Body -----------

# ------ Body Bud -------

do_envelope_as_list_body_bud_v.sh \
figure_field_body_segment fbs \
figure_field_fence_point ffp

do_envelope_as_list_body_bud_v.sh \
figure_field_body_triangle_isosceles_equilateral fie \
figure_field_fence_point ffp

do_envelope_as_list_body_bud_v.sh \
figure_field_body_triangle_isosceles_acute fia \
figure_field_fence_point ffp

do_envelope_as_list_body_bud_v.sh \
figure_field_body_triangle_isosceles_obtuse fio \
figure_field_fence_point ffp

do_envelope_as_list_body_bud_v.sh \
figure_field_body_triangle_isosceles_right fir \
figure_field_fence_point ffp

do_envelope_as_list_body_bud_v.sh \
figure_field_body_triangle_scalene_acute fsa \
figure_field_fence_point ffp

do_envelope_as_list_body_bud_v.sh \
figure_field_body_triangle_scalene_obtuse fso \
figure_field_fence_point ffp

do_envelope_as_list_body_bud_v.sh \
figure_field_body_triangle_scalene_right fsr \
figure_field_fence_point ffp

# ------ Body Trunc -------

do_envelope_as_list_body_trunc_1sibling_v.sh \
figure_field_fence fff \
point ffp

do_envelope_as_list_body_trunc_3sibling_v.sh \
figure_field_body_triangle_scalene fts \
acute fsa \
obtuse fso \
right fsr

do_envelope_as_list_body_trunc_4sibling_v.sh \
figure_field_body_triangle_isosceles fti \
acute fia \
obtuse fio \
right fir \
equilateral fie

do_envelope_as_list_body_trunc_2sibling_v.sh \
figure_field_body_triangle fbt \
isosceles fti \
scalene fts

do_envelope_as_list_body_trunc_2sibling_v.sh \
figure_field_body ffb \
triangle fbt \
segment fbs

do_envelope_as_list_body_trunc_2sibling_v.sh \
figure_field ffi \
body ffb \
fence fff

# ------ Context Bud -------

do_envelope_as_list_body_bud_v.sh \
figure_context_databox fbo \
figure_field ffi

do_envelope_as_list_body_bud_v.sh \
figure_context_database fba \
figure_context_databox fbo

do_envelope_as_list_body_bud_v.sh \
figure_context_domain fcd \
figure_context_database fba

# ------ Context Trunc -------

do_envelope_as_list_body_trunc_3sibling_v.sh \
figure_context fco \
databox fbo \
database fba \
domain dcd 

# ------ Top Trunc -------

do_envelope_as_list_body_trunc_2sibling_v.sh \
figure fig \
context fco \
field ffi

echo " "
echo " mv Figure_*.ml ../"
echo " "

exit



# ------ Body Trunc -----

do_envelope_as_list_body_trunc_4sibling_v.sh \
figure_field_body_centered_aopefset sas \
anycenter sac \
for_one_center soc \
for_one_shell_symmetry sss \
for_one_shell_ordinal sso 

do_envelope_as_list_body_trunc_1on2sibling_v.sh \
figure_field_body_centered sbc \
aopefset sas \
ecppef_set ses 

do_envelope_as_list_body_trunc_1on2sibling_v.sh \
figure_field_body sbo \
centered sbc \
periodic sbp 

# ------ Context Bud -----

do_envelope_as_list_context_bud_v.sh \
figure_context_databox_figurefile sds figure_field_body sbo 

do_envelope_as_list_context_bud_v.sh \
figure_context_database scd figure_context_databox_figurefile sds

do_envelope_as_list_context_bud_v.sh \
figure_context_domain scd figure_context_database scd

# ------ Context Trunc -----

do_envelope_as_list_context_trunc_1sibling_v.sh \
figure_context_databox scd \
figurefile sds

do_envelope_as_list_context_trunc_3sibling_v.sh \
figure_context sco \
database sdb \
datafile sdf \
domain scd

# ------ Figure Trunc -----

do_envelope_as_list_figure_trunc_3sibling_v.sh \
figure ske \
context sco \
body sbo \
fence sfe 

echo " "
echo " mv Figure_*.ml ../"
echo " "

exit
