# Fence Bud 

do_container_as_uno_fence_bud_1containee_v.sh \
figure_set_fence_point fpo

# Body Bud 

do_container_as_duo_body_bud_1containee_v.sh \
figure_set_body_segment fbs \
figure_set_fence_point fpa fpb

do_container_as_trio_body_bud_1containee_v.sh \
figure_set_body_triangle_scalene_acute fsa \
figure_set_fence_point fpa fpb fpc

do_container_as_trio_body_bud_1containee_v.sh \
figure_set_body_triangle_scalene_obtuse fso \
figure_set_fence_point fpa fpb fpc

do_container_as_trio_body_bud_1containee_v.sh \
figure_set_body_triangle_scalene_right fsr \
figure_set_fence_point fpa fpb fpc

do_container_as_trio_body_bud_1containee_v.sh \
figure_set_body_triangle_isosceles_acute fia \
figure_set_fence_point fpa fpb fpc

do_container_as_trio_body_bud_1containee_v.sh \
figure_set_body_triangle_isosceles_obtuse fio \
figure_set_fence_point fpa fpb fpc

do_container_as_trio_body_bud_1containee_v.sh \
figure_set_body_triangle_isosceles_equilateral fie \
figure_set_fence_point fpa fpb fpc

do_container_as_trio_body_bud_1containee_v.sh \
figure_set_body_triangle_isosceles_right fir \
figure_set_fence_point fpa fpb fpc

# Context Bud 

do_container_as_list_context_figure_containee_v.sh \
figure_context_databox  fbo \
figure_set  fse

do_container_as_list_context_bud_1containee_v.sh \
figure_context_database fba \
figure_context_databox  fbo

do_container_as_list_context_bud_1containee_v.sh \
figure_context_domain   fcd  \
figure_context_database fba

do_container_as_list_context_bud_1containee_v.sh \
figure_context_sector   fcs  \
figure_context_domain   fcd

# Coerced Containers :

do_container_as_uno_fence_stem_1sibling_1containee_v.sh \
figure_set_fence ffe \
figure_set_fence_point fpo \
figure_set_fence ffe

do_container_as_trio_body_stem_3sibling_1containee_v.sh \
figure_set_body_triangle_scalene fts \
acute fsa \
obtuse fso \
right fsr \
figure_set_fence ffe \
figure_set_fence_point fpo

do_container_as_trio_body_stem_4sibling_1containee_v.sh \
figure_set_body_triangle_isosceles fts \
acute fsa \
obtuse fso \
right fsr \
equilateral fse \
figure_set_fence ffe \
figure_set_fence_point fpo

do_container_as_trio_body_stem_2sibling_1containee_v.sh \
figure_set_body_triangle fbt \
isosceles fti \
scalene fts \
figure_set_fence ffe \
figure_set_fence_point fpo

do_container_as_tuple_body_stem_2sibling_1containee_v.sh \
figure_set_body fbt \
triangle fbt \
segment fbs \
figure_set_fence ffe \
figure_set_fence_point fpo

do_container_as_tuple_body_stem_2sibling_1containee_v.sh \
figure_set fse \
body fbo \
fence ffe \
figure_set_fence ffe \
figure_set_fence_point fpo

do_container_as_list_body_stem_4sibling_1containee_v.sh \
figure_context fco \
sector fcs \
domain fcd \
database fda \
databox fdo \
figure_set_fence ffe \
figure_set_fence_point fpo

do_container_as_list_top_stem_2sibling_1containee_v.sh \
figure fig \
set fse \
context fco \
figure_set_fence ffe \
figure_set_fence_point fpo

echo ""
echo " mv Figure*container_v.ml ../"
echo ""

exit

