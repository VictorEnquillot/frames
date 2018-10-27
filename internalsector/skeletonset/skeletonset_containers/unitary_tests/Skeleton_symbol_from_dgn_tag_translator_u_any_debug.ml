open Make_test_v;;

testing "Skeleton_symbol_from_dgn_tag_translator_v with
    Skeleton_symbol_from_dgn_tag_translator_u_any_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_index_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_deepfence_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_elementary_basisset_tag_register_v.register;;
Register_v.delete  Elementary_tag_tree_by_elementary_tag_register_v.register;;
Register_v.delete  Nwchem_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_lexer_symbol_reverse_list_by_database_fullnameoffile_register_v.register;;
Register_v.delete  Nwchem_symbol_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_nwchem_context_basisset_tag_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Skeleton_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Skeleton_symbol_by_sole_index_register_v.register;;
Register_v.delete  Skeleton_tag_all_list_by_skeleton_context_datafile_tag_register_v.register;;
Register_v.delete  Skeleton_tag_subtree_by_skeleton_tag_register_v.register;;
Register_v.delete  Son_nwchem_tag_list_by_father_nwchem_tag_register_v.register;;


(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Skeleton_symbol_from_dgn_tag_translator_u_any_debug.ml";; 

*)

(* Database file *)

let nam_dgn = "nwchem";;
let nam_bas = "lanl2dz";;

let tag_dcb = Skeleton_context_datafile_tag_by_basisset_name_provider_v.provide nam_bas;;

test_number 1 (
(tag_dcb : Skeleton_context_datafile_symbol_t.skeleton_context_datafile_symbol Tag_t.tag ) =
  (Skeleton_context_datafile_symbol_t.Skeleton_context_datafile_constructor "lanl2dz",
   [5; 5; 3])
);;

let fno_dcb = Dgn_fullnameoffile_by_skeleton_context_datafile_tag_provider_v.provide tag_dcb;;

test_number 2 (
( fno_dcb : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_lanl2dz.dgn"
);;

Parameters_general_register_v.store "basisset-file" fno_dcb;;

(* Debug *)

open Skeleton_symbol_from_dgn_tag_translator_v;;

let tag_dgn_t =
  Dgn_tag_tree_by_skeleton_context_datafile_tag_provider_v.provide 
    tag_dcb;;

let tag_dgn_l = Dgn_tag_all_list_by_skeleton_context_datafile_tag_provider_v.provide tag_dcb;;
let sym_dgn_l = List.map Tag_v.entity_off_tag tag_dgn_l;;
let sym_dgn_fl = List.filter Dgn_symbol_v.is_dgn_body_node_symbol_off_dgn_symbol sym_dgn_l;;
let sym_dbn_l =  List.map Dgn_symbol_v.dgn_body_node_symbol_off_dgn_symbol sym_dgn_fl
let sym_prt_l =  List.map skeleton_symbol_option_of_dgn_body_node_symbol sym_dbn_l;;
