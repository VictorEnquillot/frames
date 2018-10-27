# Datastructure Containers

do_container_datastructure_t.sh figure_set_body_triangle_isosceles_equilateral figure_set_fence_point trio
do_container_datastructure_t.sh figure_set_body_triangle_isosceles_acute       figure_set_fence_point trio
do_container_datastructure_t.sh figure_set_body_triangle_isosceles_obtuse      figure_set_fence_point trio
do_container_datastructure_t.sh figure_set_body_triangle_isosceles_right       figure_set_fence_point trio

do_container_datastructure_t.sh figure_set_body_triangle_scalene_acute         figure_set_fence_point trio
do_container_datastructure_t.sh figure_set_body_triangle_scalene_obtuse        figure_set_fence_point trio
do_container_datastructure_t.sh figure_set_body_triangle_scalene_right         figure_set_fence_point trio

do_container_datastructure_t.sh figure_set_body_segment            figure_set_fence_point duo
do_container_datastructure_t.sh figure_set_fence_point             figure_set_fence_point uno

do_container_datastructure_t.sh figure_context_databox         figure_set list
do_container_datastructure_t.sh figure_context_database        figure_context_databox list
do_container_datastructure_t.sh figure_context_domain          figure_context_database list
do_container_datastructure_t.sh figure_context_sector          figure_context_domain list

# Coerced Containers

do_container_from_symbol_this_t.sh figure_set_body_triangle_isosceles
do_container_from_symbol_this_t.sh figure_set_body_triangle_scalene
do_container_from_symbol_this_t.sh figure_set_fence
do_container_from_symbol_this_t.sh figure_set_body_triangle
do_container_from_symbol_this_t.sh figure_set_body
do_container_from_symbol_this_t.sh figure_set
do_container_from_symbol_this_t.sh figure_context
do_container_from_symbol_this_t.sh figure

echo ""
echo " mv Figure*t.ml ../"
echo ""

exit
