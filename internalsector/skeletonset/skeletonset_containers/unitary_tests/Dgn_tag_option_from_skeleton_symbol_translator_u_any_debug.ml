open Make_test_v;;

testing "Dgn_tag_option_from_skeleton_symbol_translator_v with
    Dgn_tag_option_from_skeleton_symbol_translator_u_any_debug.ml";;

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
   #use "Dgn_tag_option_from_skeleton_symbol_translator_u_any_debug.ml";; 

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

Parameters_general_register_v.store "basisset-file" fno_dcb;;


(* Debug *)

Debug_by_module_name_register_v.store "Dgn_tag_option_from_skeleton_symbol_translator_v" "debug";;
Debug_by_module_name_register_v.store "Skeleton_symbol_subtree_by_skeleton_context_datafile_tag_provider_v" "debug";;
Debug_by_module_name_register_v.store "Skeleton_symbol_from_dgn_tag_translator_v" "debug";;

open Dgn_tag_option_from_skeleton_symbol_translator_v;;

let tag_dgn_t =
  Dgn_tag_tree_by_skeleton_context_datafile_tag_provider_v.provide 
    tag_dcb;;

let tag_dgn_l = 
    Dgn_tag_all_list_by_skeleton_context_datafile_tag_provider_v.provide
      tag_dcb;;

let sym_prt_ol = List.map Skeleton_symbol_option_from_dgn_tag_translator_v.translate tag_dgn_l ;;
let sym_prt_n_tag_dgn_l = Doublet_list_v.make sym_prt_ol tag_dgn_l;;
let sym_prt_l = Option_v.entity_list_of_option_list sym_prt_ol;;

let cur_sym_prt = List.find Skeleton_symbol_v.is_skeleton_context_datafile_constructor sym_prt_l;;

test_number 2 (
(cur_sym_prt : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_context_symbol
   (Skeleton_context_symbol_t.Skeleton_context_datafile_symbol
     (Skeleton_context_datafile_symbol_t.Skeleton_context_datafile_constructor
       "lanl2dz"))
);;

let tag_dgn_bas_o = translate cur_sym_prt;;

test_number 3 (
(tag_dgn_bas_o : Dgn_symbol_t.dgn_symbol Tag_t.tag option ) =
  Some
   (Dgn_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_datafile_symbol
       (Skeleton_context_datafile_symbol_t.Skeleton_context_datafile_constructor
         "LANL2DZ")),
    [5; 5; 3])
);;


let cur_sym_prt = List.find Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_one_center sym_prt_l;;

test_number 4 (
( cur_sym_prt : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_set_body_symbol
   (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
     (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_symbol
       (Skeleton_set_body_centered_aopef_symbol_t.Skeleton_set_body_centered_aopef_set_for_any_center
         "lanl2dz")))
);;

let tag_dgn_o = Dgn_tag_option_from_skeleton_symbol_translator_v.translate cur_sym_prt;;

test_number 5 (
(tag_dgn_o : Dgn_symbol_t.dgn_symbol Tag_t.tag option ) =
  Some
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_for_any_center_block
         "LANL2DZ")),
    [2; 2; 2; 5; 5; 3])
);;
