open Make_test_v;;

testing "Figure_fence_by_figure_tag_provider_v with
    Figure_set_fence_tag_fence_by_figure_tag_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_figure_context_databox_tag_register_v.register;;
Register_v.delete Figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Figure_fence_by_figure_tag_register_v.register;;
Register_v.delete Figure_son_tag_list_by_figure_father_tag_register_v.register;;
Register_v.delete Figure_symbol_by_sole_index_register_v.register;;
Register_v.delete Figure_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Figure_tag_all_list_by_figure_context_databox_tag_register_v.register;;
Register_v.delete Figure_tag_subtree_by_figure_tag_register_v.register;;
Register_v.delete Figure_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Figure_tag_tree_by_figure_context_databox_tag_register_v.register;;





(* Tracing *)


(* toplevel 
   #use "Figure_set_fence_tag_fence_by_figure_tag_provider_u_any.ml";;

*)

(* Database file *)

let nam_bas = "lanl2dz";;
let nam_dba = "db1points";;
Parameters_general_register_v.store "databox-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

(* Debug *)
     
open Figure_fence_by_figure_tag_provider_v;;

let tag_fig_l = Figure_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide () ;;

let tag_fig = List.find 
    (fun (s, i) -> Figure_symbol_v.is_figure_set_body_centered_aopefset_anycenter s)
    tag_fig_l;;

test_number 1 (  
(tag_fig : Figure_symbol_t.figure_symbol Tag_t.tag ) =
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
          (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_anycenter
            "lanl2dz")))),
   [1; 5; 5; 19])
);;

let tag_fig_st = 
    Figure_tag_subtree_by_figure_tag_provider_v.provide tag_fig ;;

let tag_fen = Tree_v.leaf_node_list_off_tree tag_fig_st;;

let tag_fen_1l = List.filter 
    (fun (s, i) -> (List_v.is_substring_of_string_of_string (Figure_symbol_v.string_off s) "ne s 2 ") )
    tag_fen;;

test_number 2 (
(tag_fen_1l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
         (Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
           (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_single_scaled_symbol
             (Figure_set_fence_centered_aopef_single_scaled_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
               "ne s 2 1"))))),
    [1; 2; 1; 1; 1; 5; 5; 19]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
         (Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
           (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_single_scaled_symbol
             (Figure_set_fence_centered_aopef_single_scaled_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
               "ne s 2 2"))))),
    [2; 2; 1; 1; 1; 5; 5; 19]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
         (Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
           (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_single_scaled_symbol
             (Figure_set_fence_centered_aopef_single_scaled_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
               "ne s 2 3"))))),
    [3; 2; 1; 1; 1; 5; 5; 19])]
);;

let tag_fen_2l = List.filter 
    (fun (s, i) -> (List_v.is_substring_of_string_of_string (Figure_symbol_v.string_off s) "au s 2 ") )
    tag_fen;;

test_number 3 (
(tag_fen_2l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
         (Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
           (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_single_scaled_symbol
             (Figure_set_fence_centered_aopef_single_scaled_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
               "au s 2 1"))))),
    [1; 2; 1; 2; 1; 5; 5; 19])]
);;
