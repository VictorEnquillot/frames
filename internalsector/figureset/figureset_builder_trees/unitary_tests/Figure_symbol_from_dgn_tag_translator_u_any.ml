open Make_test_v;;

testing "Figure_symbol_from_dgn_tag_translator_v with
    Figure_symbol_from_dgn_tag_translator_u_any.ml";;

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
   #use "Figure_symbol_from_dgn_tag_translator_u_any.ml";; 

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

test_number 2 (
( fno_dcb : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_db1points/files/db1pointsdata_lanl2dz.dgn"
);;

Parameters_general_register_v.store "databox-file" fno_dcb;;

(* Debug *)

open Figure_symbol_from_dgn_tag_translator_v;;

let tag_dgn_t =
  Dgn_tag_tree_by_figure_context_databox_tag_provider_v.provide 
    tag_dcb;;

let tag_dgn_l = Dgn_tag_all_list_by_figure_context_databox_tag_provider_v.provide tag_dcb;;
let sym_dgn_l = List.map Tag_v.entity_off_tag tag_dgn_l;;
let sym_dgn_fl = List.filter Dgn_symbol_v.is_dgn_body_node_symbol_off_dgn_symbol sym_dgn_l;;
let sym_dbn_l =  List.map Dgn_symbol_v.dgn_body_node_symbol_off_dgn_symbol sym_dgn_fl
let sym_fig_l =  List.map figure_symbol_option_of_dgn_body_node_symbol sym_dbn_l;;
