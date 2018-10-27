open Make_test_v;;

testing "Dgn_tag_option_from_figure_symbol_translator_v with
    Dgn_tag_option_from_figure_symbol_translator_u_any.ml";;

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
   #use "Dgn_tag_option_from_figure_symbol_translator_u_any.ml";; 

*)

(* Database file *)

let nam_dgn = "db1points";;
let nam_bas = "lanl2dz";;

let tag_dcb = Figure_context_databox_tag_by_databox_name_provider_v.provide nam_bas;;

test_number 1 (
(tag_dcb : Figure_context_databox_symbol_t.figure_context_databox_symbol Tag_t.tag ) =
  (Figure_context_databox_symbol_t.Figure_context_databox_constructor "lanl2dz",
   [5; 5; 3])
);;

let fno_dcb = Dgn_fullnameoffile_by_figure_context_databox_tag_provider_v.provide tag_dcb;;

Parameters_general_register_v.store "databox-file" fno_dcb;;


(* Debug *)


open Dgn_tag_option_from_figure_symbol_translator_v;;

let tag_dgn_t =
  Dgn_tag_tree_by_figure_context_databox_tag_provider_v.provide 
    tag_dcb;;

let tag_dgn_l = 
    Dgn_tag_all_list_by_figure_context_databox_tag_provider_v.provide
      tag_dcb;;

let sym_fig_ol = List.map Figure_symbol_option_from_dgn_tag_translator_v.translate tag_dgn_l ;;
let sym_fig_n_tag_dgn_l = Doublet_list_v.make sym_fig_ol tag_dgn_l;;
let sym_fig_l = Option_v.entity_list_of_option_list sym_fig_ol;;

let cur_sym_fig = List.find Figure_symbol_v.is_figure_context_databox_constructor sym_fig_l;;

test_number 2 (
(cur_sym_fig : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_context_symbol
   (Figure_context_symbol_t.Figure_context_databox_symbol
     (Figure_context_databox_symbol_t.Figure_context_databox_constructor
       "lanl2dz"))
);;

let tag_dgn_bas_o = translate cur_sym_fig;;

test_number 3 (
(tag_dgn_bas_o : Dgn_symbol_t.dgn_symbol Tag_t.tag option ) =
  Some
   (Dgn_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_databox_symbol
       (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "LANL2DZ")),
    [5; 5; 3])
);;


let cur_sym_fig = List.find Figure_symbol_v.is_figure_set_body_centered_aopefset_onecenter sym_fig_l;;

test_number 4 (
( cur_sym_fig : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_set_body_symbol
   (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
     (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopef_symbol
       (Figure_set_body_centered_aopef_symbol_t.Figure_set_body_centered_aopefset_anycenter
         "lanl2dz")))
);;

let tag_dgn_o = Dgn_tag_option_from_figure_symbol_translator_v.translate cur_sym_fig;;

test_number 5 (
(tag_dgn_o : Dgn_symbol_t.dgn_symbol Tag_t.tag option ) =
  Some
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_anycenter_block
         "LANL2DZ")),
    [2; 2; 2; 5; 5; 3])
);;
