open Make_test_v;;

testing "Figure_symbol_by_sole_index_provider_v with
    Figure_symbol_by_sole_index_provider_u_any.ml";;

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
   #use "Figure_symbol_by_sole_index_provider_u_any.ml";; 

*)

open Figure_symbol_by_sole_index_provider_v;;

let nam_fbo = "segment_BC";;
let nam_fba = "db1points";;

let tag_fig_l = Figure_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide (nam_fbo, nam_fba);;

let tag_fig = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> (Figure_symbol_v.string_off s = "BC_B") 
	&& 
      (Figure_symbol_v.is_figure_set_fence_point_constructor s)
    )
    tag_fig_l;;

test_number 1 (
(tag_fig : Figure_symbol_t.figure_symbol Tag_t.tag) =
(Figure_symbol_t.Figure_set_fence_symbol
   (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
      (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
         "BC_B")),
 [1; 1; 15; 1; 7; 5])
);;

let soi_fig = Tag_v.sole_index_off_tag tag_fig;;

test_number 2 (
(soi_fig : Sole_index_t.sole_index ) =
 [1; 1; 15; 1; 7; 5]
);;

let sym_fig = Figure_symbol_by_sole_index_register_v.retrieve nam_mod soi_fig;;

test_number 3 (
(sym_fig : Figure_symbol_t.figure_symbol ) = 
   (Figure_symbol_t.Figure_set_fence_symbol
     (Figure_set_fence_symbol_t.Figure_set_fence_point_symbol
       (Figure_set_fence_point_symbol_t.Figure_set_fence_point_constructor
         "BC_B")))
);;

test_number 4 (
sym_fig = provide soi_fig
);;
