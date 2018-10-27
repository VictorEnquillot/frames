open Make_test_v;;

testing "Figure_tag_subtree_by_figure_context_databox_tag_provider_v with
    Figure_tag_subtree_by_figure_context_databox_tag_provider_u_lanl2dz.ml";;

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
   #use "Figure_tag_subtree_by_figure_tag_provider_u_lanl2dz.ml";; 

*)

(* Database file *)

let nam_bas = "lanl2dz";;
let nam_dba = "db1points";;
Parameters_general_register_v.store "databox-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

(* Debug *)

open Figure_tag_subtree_by_figure_tag_provider_v;;

let tag_fig_l = Figure_tag_all_list_by_databox_name_provider_v.provide nam_bas;;

let tag_fig_sor = List.find 
    (fun (s, i) -> 
      (Figure_symbol_v.is_figure_set_body_centered_aopefset_shellordinal s)
	&&
      (Figure_symbol_v.string_off s = "ne p 3")
    )
    tag_fig_l
;; 

test_number 1 ( 
(tag_fig_sor : Figure_symbol_t.figure_symbol Tag_t.tag ) =
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
          (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellordinal
            "ne p 3")))),
   [2; 2; 1; 1; 5; 5; 14])
);;

let tag_fig_sor_st = provide tag_fig_sor;;

test_number 2 (
( tag_fig_sor_st :
  Figure_symbol_t.figure_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
      (Figure_symbol_t.Figure_set_body_symbol
        (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
          (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
            (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_shellordinal
              "ne p 3")))),
     [2; 2; 1; 1; 5; 5; 14]),
   [Tree_t.Leaf
       (Figure_symbol_t.Figure_set_fence_symbol
         (Figure_set_fence_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
           "ne p 3 1")),
      [1; 2; 2; 1; 1; 5; 5; 14])])
);;
