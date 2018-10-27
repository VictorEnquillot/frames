open Make_test_v;;

testing "Figure_tag_tree_by_figure_createdby_tag_provider_v with
   Figure_tag_tree_by_figure_createdby_tag_provider_u_point_print.ml";;

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
   #use "Figure_tag_tree_by_figure_createdby_tag_provider_u_point_print.ml";;

*)

let sym_ele_dom = Figure_symbol_v.figure_domain_constructor "figure";;

test_number 1 (
( sym_ele_dom : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_context_symbol
   (Figure_context_symbol_t.Figure_domain_symbol
     (Figure_domain_symbol_t.Figure_domain_constructor "figure"))
);;

let nam_dba = "db1";;
let tag_fcr = Figure_createdby_tag_by_database_name_provider_v.provide nam_dba;;

test_number 2 (
(tag_fcr : Figure_createdby_symbol_t.figure_createdby_symbol Tag_t.tag ) =
  (Figure_createdby_symbol_t.Figure_database "db1", [1; 6])
);;


let tag_fig_t = Figure_tag_tree_by_database_name_provider_v.provide nam_dba;;

test_number 3 (
( tag_fig_t : Figure_symbol_t.figure_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Figure_symbol_t.Figure_context_symbol
      (Figure_context_symbol_t.Figure_domain_symbol
        (Figure_domain_symbol_t.Figure_domain_constructor "figure")),
     [6]),
   [Tree_t.Inner
     ((Figure_symbol_t.Figure_context_symbol
        (Figure_context_symbol_t.Figure_createdby_symbol
          (Figure_createdby_symbol_t.Figure_database_symbol (Figure_database_symbol_t.Figure_database_constructor "db1")))
       [1; 6]),
     [Tree_t.Inner
       ((Figure_symbol_t.Figure_field_body_symbol
          (Figure_field_body_symbol_t.Figure_triangle_symbol
            (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
              (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute
                "T"))),
         [1; 1; 6]),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_field_fence_symbol
           (Figure_field_fence_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "T_A")),
          [1; 1; 1; 6]);
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_fence_symbol
           (Figure_field_fence_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "T_B")),
          [2; 1; 1; 6]);
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_fence_symbol
           (Figure_field_fence_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "T_C")),
          [3; 1; 1; 6])]);
      Tree_t.Inner
       ((Figure_symbol_t.Figure_field_body_symbol
          (Figure_field_body_symbol_t.Figure_triangle_symbol
            (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
              (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_obtuse
                "V"))),
         [2; 1; 6]),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_field_fence_symbol
           (Figure_field_fence_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "V_A")),
          [1; 2; 1; 6]);
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_fence_symbol
           (Figure_field_fence_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "V_B")),
          [2; 2; 1; 6]);
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_fence_symbol
           (Figure_field_fence_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "V_C")),
          [3; 2; 1; 6])]);
      Tree_t.Inner
       ((Figure_symbol_t.Figure_field_body_symbol
          (Figure_field_body_symbol_t.Figure_triangle_symbol
            (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
              (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_right
                "U"))),
         [3; 1; 6]),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_field_fence_symbol
           (Figure_field_fence_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "U_A")),
          [1; 3; 1; 6]);
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_fence_symbol
           (Figure_field_fence_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "U_B")),
          [2; 3; 1; 6]);
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_fence_symbol
           (Figure_field_fence_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "U_C")),
          [3; 3; 1; 6])]);
      Tree_t.Inner
       ((Figure_symbol_t.Figure_field_body_symbol
          (Figure_field_body_symbol_t.Figure_segment_symbol
            (Figure_segment_symbol_t.Figure_segment_constructor "BC")),
         [4; 1; 6]),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_field_fence_symbol
           (Figure_field_fence_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "BC_B")),
          [1; 4; 1; 6]);
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_fence_symbol
           (Figure_field_fence_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "BC_C")),
          [2; 4; 1; 6])]);
      Tree_t.Leaf
       (Figure_symbol_t.Figure_field_fence_symbol
         (Figure_field_fence_symbol_t.Figure_point_symbol
           (Figure_point_symbol_t.Figure_point_constructor "A_A")),
        [5; 1; 6])])])
);;
