open Make_test_v;;

testing "Figure_tag_tree_by_unit_provider_v with
    Figure_tag_tree_by_unit_provider_u_any.ml";;

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
   #use "Figure_tag_tree_by_unit_provider_u_any.ml";; 

*)

(* Database file *)

let nam_bas = "lanl2dz";;
let nam_dba = "db1points";;
Parameters_general_register_v.store "databox-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

(* Debug *)

open Figure_tag_tree_by_unit_provider_v;;

let tag_fig_t = provide ();;

(* Top *)

let tag_fig_tso_l = Tree_v.node_filter_of_node_predicate_off_tree (fun (s, i) -> List.length i < 5) tag_fig_t;; 

test_number 1 (
( tag_fig_tso_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
 [(Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_domain_symbol
       (Figure_context_domain_symbol_t.Figure_context_domain_constructor
         "")),
    [14]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_database_symbol
       (Figure_context_database_symbol_t.Figure_context_database_constructor
         "db1points")),
    [5; 14]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_databox_symbol
       (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "lanl2dz")),
    [5; 5; 14]);
     (Figure_symbol_t.Figure_set_body_symbol
       (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
         (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
           (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_anycenter
             "lanl2dz")))),
    [1; 5; 5; 14]);
     (Figure_symbol_t.Figure_set_body_symbol
       (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
         (Figure_set_body_centered_symbol_t.Figure_set_body_centered_ecppef
           "lanl2dz"))),
    [2; 5; 5; 14])]
);;

let tag_lea_l = Tree_v.leaf_node_list_off_tree tag_fig_t;;
let tag_fen_l = List.filter 
    (fun (s, i) -> 
      (Figure_symbol_v.is_figure_set_fence_symbol_off_figure_symbol s) 
	&&
      (List_v.is_substring_of_string_of_string (Figure_symbol_v.string_off s) "ne")
    )
    tag_lea_l;;

test_number 2 (
( tag_fen_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
         "ne s 1 1")),
    [1; 1; 1; 1; 1; 5; 5; 14]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
         "ne s 1 2")),
    [2; 1; 1; 1; 1; 5; 5; 14]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
         "ne s 1 3")),
    [3; 1; 1; 1; 1; 5; 5; 14]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
         "ne s 1 4")),
    [4; 1; 1; 1; 1; 5; 5; 14]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
         "ne s 2 1")),
    [1; 2; 1; 1; 1; 5; 5; 14]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
         "ne s 2 2")),
    [2; 2; 1; 1; 1; 5; 5; 14]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
         "ne s 2 3")),
    [3; 2; 1; 1; 1; 5; 5; 14]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
         "ne s 3 1")),
    [1; 3; 1; 1; 1; 5; 5; 14]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
         "ne p 2 1")),
    [1; 1; 2; 1; 1; 5; 5; 14]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
         "ne p 2 2")),
    [2; 1; 2; 1; 1; 5; 5; 14]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
         "ne p 3 1")),
    [1; 2; 2; 1; 1; 5; 5; 14])]
);;

let tag_fen_l = List.filter 
    (fun (s, i) -> 
      (Figure_symbol_v.is_figure_set_fence_symbol_off_figure_symbol s) 
	&&
      (List_v.is_substring_of_string_of_string (Figure_symbol_v.string_off s) "au")
    )
    tag_lea_l;;

test_number 3 (
( tag_fen_l : Figure_symbol_t.figure_symbol Tag_t.tag list ) =
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
         "au s 1 1")),
    [1; 1; 1; 2; 1; 5; 5; 14]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
         "au s 1 2")),
    [2; 1; 1; 2; 1; 5; 5; 14]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
         "au s 1 3")),
    [3; 1; 1; 2; 1; 5; 5; 14]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
         "au s 2 1")),
    [1; 2; 1; 2; 1; 5; 5; 14]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
         "au p 2 1")),
    [1; 1; 2; 2; 1; 5; 5; 14]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
         "au p 2 2")),
    [2; 1; 2; 2; 1; 5; 5; 14]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
         "au p 3 1")),
    [1; 2; 2; 2; 1; 5; 5; 14]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
         "au p 3 2")),
    [2; 2; 2; 2; 1; 5; 5; 14]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
         "au p 4 1")),
    [1; 3; 2; 2; 1; 5; 5; 14]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
         "au d 3 1")),
    [1; 1; 3; 2; 1; 5; 5; 14]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
         "au d 3 2")),
    [2; 1; 3; 2; 1; 5; 5; 14]);
     (Figure_symbol_t.Figure_set_fence_symbol
       (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
         "au d 4 1")),
    [1; 2; 3; 2; 1; 5; 5; 14])]
);;
