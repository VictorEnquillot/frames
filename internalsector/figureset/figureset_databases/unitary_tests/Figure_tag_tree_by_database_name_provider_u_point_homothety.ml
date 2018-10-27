open Make_test_v;;

testing "Figure_tag_tree_by_database_name_provider_v with
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
   #use "Figure_tag_tree_by_database_name_provider_u_point_homothety_debug.ml";;

*)

(* Input File *)

let nam_inp = "Point_homothety.inp";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let fno_inp = dir_inp ^ nam_inp;;
Parameters_general_register_v.store_force "input-file" fno_inp;;

test_number 1 (
(fno_inp : string ) =
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_homothety.inp"
);;
                
(* Database *)

let nam_dba_l = Database_name_list_by_input_fullnameoffile_provider_v.provide fno_inp;;
let nam_dba = List.nth nam_dba_l 0;;

test_number 2 (
(nam_dba : string ) = 
"db1"
);;

open Figure_tag_tree_by_database_name_provider_v;;
  
let sym_fig_dba_t = Figure_symbol_tree_by_database_name_provider_v.provide nam_dba;;

test_number 3 (
(sym_fig_dba_t : Figure_symbol_t.figure_symbol Tree_t.tree ) =
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

let sym_fig_dba_st =  
    Tree_v.subtree_of_node_predicate_off_tree 
      Figure_symbol_v.is_figure_database_constructor
      sym_fig_dba_t;;

test_number 4 (
(sym_fig_dba_st : Figure_symbol_t.figure_symbol Tree_t.tree ) =

Tree_t.Inner
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
           (Figure_point_symbol_t.Figure_point_constructor "A_A"))))])
);;

let tag_fig_dba =
    Figure_createdby_tag_by_database_name_provider_v.provide
      nam_dba;;

test_number 5 (
( tag_fig_dba : Figure_createdby_symbol_t.figure_createdby_symbol Tag_t.tag ) =
  (Figure_createdby_symbol_t.Figure_database_symbol
    (Figure_database_symbol_t.Figure_database_constructor "db1"),
   [1; 6])
);;

let soi_fig_dba = Tag_v.sole_index_off_tag tag_fig_dba;;

test_number 6 (
(soi_fig_dba : Sole_index_t.sole_index ) = 
[1; 6]
);;

let soi_fig_dba_st =
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index
      sym_fig_dba_st
      soi_fig_dba;;

test_number 7 (
(soi_fig_dba_st : Sole_index_t.sole_index Tree_t.tree ) =
  Tree_t.Inner ([1; 6],
   [Tree_t.Inner ([1; 1; 6],
     [Tree_t.Leaf [1; 1; 1; 6]; Tree_t.Leaf [2; 1; 1; 6]]);
    Tree_t.Inner ([2; 1; 6],
     [Tree_t.Leaf [1; 2; 1; 6]; Tree_t.Leaf [2; 2; 1; 6];
      Tree_t.Leaf [3; 2; 1; 6]]);
    Tree_t.Inner ([3; 1; 6],
     [Tree_t.Leaf [1; 3; 1; 6]; Tree_t.Leaf [2; 3; 1; 6];
      Tree_t.Leaf [3; 3; 1; 6]]);
    Tree_t.Inner ([4; 1; 6],
     [Tree_t.Leaf [1; 4; 1; 6]; Tree_t.Leaf [2; 4; 1; 6];
      Tree_t.Leaf [3; 4; 1; 6]]);
    Tree_t.Leaf [5; 1; 6]])
);;

let soi_dom = 
    Domain_tag_v.domain_sole_index_of_domain_name_of_string_of_sole_index_up 
      "figure" "" [] ;;

test_number 8 (
(soi_dom : Sole_index_t.sole_index ) = 
[6]
);;

let soi_fig_dba_t = figure_sole_index_tree_of_figure_symbol_tree_of_database_name
      sym_fig_dba_t
      nam_dba;;

test_number 9 (
(soi_fig_dba_t : Sole_index_t.sole_index Tree_t.tree ) =
  Tree_t.Inner ([6],
   [Tree_t.Inner ([1; 6],
     [Tree_t.Inner ([1; 1; 6],
       [Tree_t.Leaf [1; 1; 1; 6]; Tree_t.Leaf [2; 1; 1; 6]]);
      Tree_t.Inner ([2; 1; 6],
       [Tree_t.Leaf [1; 2; 1; 6]; Tree_t.Leaf [2; 2; 1; 6];
        Tree_t.Leaf [3; 2; 1; 6]]);
      Tree_t.Inner ([3; 1; 6],
       [Tree_t.Leaf [1; 3; 1; 6]; Tree_t.Leaf [2; 3; 1; 6];
        Tree_t.Leaf [3; 3; 1; 6]]);
      Tree_t.Inner ([4; 1; 6],
       [Tree_t.Leaf [1; 4; 1; 6]; Tree_t.Leaf [2; 4; 1; 6];
        Tree_t.Leaf [3; 4; 1; 6]]);
      Tree_t.Leaf [5; 1; 6]])])
);;

let tag_fig_dba_t = Figure_tag_tree_by_database_name_provider_v.provide nam_dba;;

test_number 10 (
( tag_fig_dba_t : Figure_symbol_t.figure_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Figure_symbol_t.Figure_context_symbol
      (Figure_context_symbol_t.Figure_domain_symbol
        (Figure_domain_symbol_t.Figure_domain_constructor "figure")),
     [6]),
   [Tree_t.Inner
     ((Figure_symbol_t.Figure_context_symbol
        (Figure_context_symbol_t.Figure_createdby_symbol
          (Figure_createdby_symbol_t.Figure_database_symbol
            (Figure_database_symbol_t.Figure_database_constructor "db1"))),
       [1; 6]),
     [Tree_t.Inner
       ((Figure_symbol_t.Figure_field_symbol
          (Figure_field_symbol_t.Figure_field_body_symbol
            (Figure_field_body_symbol_t.Figure_segment_symbol
              (Figure_segment_symbol_t.Figure_segment_constructor "BC"))),
         [1; 1; 6]),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "BC_B"))),
          [1; 1; 1; 6]);
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "BC_C"))),
          [2; 1; 1; 6])]);
      Tree_t.Inner
       ((Figure_symbol_t.Figure_field_symbol
          (Figure_field_symbol_t.Figure_field_body_symbol
            (Figure_field_body_symbol_t.Figure_triangle_symbol
              (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
                (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute
                  "T")))),
         [2; 1; 6]),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "T_A"))),
          [1; 2; 1; 6]);
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "T_B"))),
          [2; 2; 1; 6]);
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "T_C"))),
          [3; 2; 1; 6])]);
      Tree_t.Inner
       ((Figure_symbol_t.Figure_field_symbol
          (Figure_field_symbol_t.Figure_field_body_symbol
            (Figure_field_body_symbol_t.Figure_triangle_symbol
              (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
                (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_obtuse
                  "V")))),
         [3; 1; 6]),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "V_A"))),
          [1; 3; 1; 6]);
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "V_B"))),
          [2; 3; 1; 6]);
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "V_C"))),
          [3; 3; 1; 6])]);
      Tree_t.Inner
       ((Figure_symbol_t.Figure_field_symbol
          (Figure_field_symbol_t.Figure_field_body_symbol
            (Figure_field_body_symbol_t.Figure_triangle_symbol
              (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
                (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_right
                  "U")))),
         [4; 1; 6]),
       [Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "U_A"))),
          [1; 4; 1; 6]);
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "U_B"))),
          [2; 4; 1; 6]);
        Tree_t.Leaf
         (Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_field_fence_symbol
             (Figure_field_fence_symbol_t.Figure_point_symbol
               (Figure_point_symbol_t.Figure_point_constructor "U_C"))),
          [3; 4; 1; 6])]);
      Tree_t.Leaf
       (Figure_symbol_t.Figure_field_symbol
         (Figure_field_symbol_t.Figure_field_fence_symbol
           (Figure_field_fence_symbol_t.Figure_point_symbol
             (Figure_point_symbol_t.Figure_point_constructor "A_A"))),
        [5; 1; 6])])])
);;

Figure_tag_tree_by_database_name_register_v.dump ();;
Figure_symbol_by_sole_index_register_v.dump ();;
Figure_creation_module_name_by_sole_index_register_v.dump ();;
