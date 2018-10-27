open Make_test_v;;

testing "Figure_symbol_tree_by_database_name_provider_v with
   Figure_tag_tree_by_database_name_provider_u_point_homothety_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_index_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;









(* Tracing *)

Parameters_general_register_v.store_force  "trace-build" "false";;
Parameters_general_register_v.store_force  "trace-store" "false";;
Parameters_general_register_v.store_force  "trace-translate" "false";;
Parameters_general_register_v.store_force  "trace-provide" "false";;
Parameters_general_register_v.store_force  "trace-extract" "false";;

(* toplevel 
   #use "Figure_symbol_tree_by_database_name_provider_u_point_homothety_debug.ml";;

*)

open Figure_symbol_tree_by_database_name_provider_v;;

let nam_dba = "db1";;

let sym_fig_st = provide nam_dba;;

test_number 1 (
( sym_fig_st : Figure_symbol_t.figure_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_domain_symbol
       (Figure_domain_symbol_t.Figure_domain_constructor "figure")),
   [Tree_t.Inner
     (Figure_symbol_t.Figure_context_symbol
       (Figure_context_symbol_t.Figure_createdby_symbol
         (Figure_createdby_symbol_t.Figure_database_symbol
           (Figure_database_symbol_t.Figure_database_constructor "db1"))),
     [Tree_t.Inner
       (Figure_symbol_t.Figure_field_symbol
         (Figure_field_symbol_t.Figure_field_body_symbol
           (Figure_field_body_symbol_t.Figure_segment_symbol
             (Figure_segment_symbol_t.Figure_segment_constructor "BC"))),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "BC_B"))));
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "BC_C"))))]);
      Tree_t.Inner
       (Figure_symbol_t.Figure_field_symbol
         (Figure_field_symbol_t.Figure_field_body_symbol
           (Figure_field_body_symbol_t.Figure_triangle_symbol
             (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
               (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute
                 "T")))),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "T_A"))));
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "T_B"))));
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "T_C"))))]);
      Tree_t.Inner
       (Figure_symbol_t.Figure_field_symbol
         (Figure_field_symbol_t.Figure_field_body_symbol
           (Figure_field_body_symbol_t.Figure_triangle_symbol
             (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
               (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_obtuse
                 "V")))),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "V_A"))));
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "V_B"))));
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "V_C"))))]);
      Tree_t.Inner
       (Figure_symbol_t.Figure_field_symbol
         (Figure_field_symbol_t.Figure_field_body_symbol
           (Figure_field_body_symbol_t.Figure_triangle_symbol
             (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
               (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_right
                 "U")))),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "U_A"))));
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "U_B"))));
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "U_C"))))]);
      Tree_t.Leaf
       (Figure_symbol_t.Figure_field_symbol
         (Figure_field_symbol_t.Figure_field_fence_symbol
           (Figure_field_fence_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "A_A"))))])])
);;

