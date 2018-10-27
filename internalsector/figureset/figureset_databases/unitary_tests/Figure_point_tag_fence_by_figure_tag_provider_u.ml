open Make_test_v;;

testing "Figure_point_tag_fence_by_figure_tag_provider_v with
    Figure_point_tag_fence_by_figure_tag_provider_u_debug.ml";;

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
   #use "Figure_point_tag_fence_by_figure_tag_provider_u_debug.ml";;

*)

let nam_dba = "db1";;

let tag_fig_l = Figure_tag_all_list_by_database_name_provider_v.provide nam_dba;;

open Figure_point_tag_fence_by_figure_tag_provider_v;;

(* Point T_A *)

let nam_fig = "T_A";;
let tag_fig = List.find (fun t -> Figure_tag_v.string_off t = nam_fig) tag_fig_l;; 

test_number 1 ( 
( tag_fig : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_fence_symbol
      (Figure_field_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "T_A"))),
   [1; 2; 1; 6])
);;

let tag_fig_st = Figure_tag_subtree_by_figure_tag_provider_v.provide tag_fig;;

test_number 2 (
(tag_fig_st : Figure_symbol_t.figure_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Leaf
   (Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "T_A"))),
    [1; 2; 1; 6])
);;

let tag_fig_poi_l = Tree_v.node_list_of_node_predicate_off_tree
      (fun t ->
	Figure_symbol_v.is_figure_point_symbol_off_figure_symbol (Tag_v.entity_off_tag t)
      )
      tag_fig_st;;

test_number 3 (
(tag_fig_poi_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
  [(Figure_symbol_t.Figure_field_symbol
     (Figure_field_symbol_t.Figure_field_fence_symbol
       (Figure_field_fence_symbol_t.Figure_point_symbol
         (Figure_point_symbol_t.Figure_point_constructor "T_A"))),
    [1; 2; 1; 6])]
);;

let fen_t_a = provide tag_fig;;

test_number 4 (
(fen_t_a : Figure_point_symbol_t.figure_point_symbol Tag_t.tag list ) =
  [(Figure_point_symbol_t.Figure_point_constructor "T_A", [1; 2; 1; 6])]
);;

(* Triangle T *)

let nam_fig = "T";;
let tag_fig = List.find (fun (s, i) -> Figure_symbol_v.string_off s = nam_fig) tag_fig_l;; 

test_number 5 ( 
(tag_fig : Figure_symbol_t.figure_symbol Tag_t.tag ) =
 (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_field_body_symbol
      (Figure_field_body_symbol_t.Figure_triangle_symbol
        (Figure_triangle_symbol_t.Figure_triangle_isosceles_symbol
          (Figure_triangle_isosceles_symbol_t.Figure_triangle_isosceles_acute
            "T")))),
   [2; 1; 6])
);;

let fen_t = provide tag_fig;;

test_number 6 (
(fen_t : Figure_point_symbol_t.figure_point_symbol Tag_t.tag list ) =
  [(Figure_point_symbol_t.Figure_point_constructor "T_A", [1; 2; 1; 6]);
   (Figure_point_symbol_t.Figure_point_constructor "T_B", [2; 2; 1; 6]);
   (Figure_point_symbol_t.Figure_point_constructor "T_C", [3; 2; 1; 6])]
);;
