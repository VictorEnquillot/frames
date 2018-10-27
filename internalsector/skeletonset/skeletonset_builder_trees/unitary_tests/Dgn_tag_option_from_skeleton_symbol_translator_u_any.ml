open Make_test_v;;

testing "Dgn_tag_option_from_skeleton_symbol_translator_v with
    Dgn_tag_option_from_skeleton_symbol_translator_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Basicname_databox_n_basicname_database_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Skeleton_fence_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_son_tag_list_by_skeleton_father_tag_register_v.register;;
Register_v.delete Skeleton_symbol_by_sole_index_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_subtree_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;





(* Tracing *)


(* toplevel 
   #use "Dgn_tag_option_from_skeleton_symbol_translator_u_any.ml";; 

*)

(* Database file *)

let nam_dgn = "nwchem";;
let nam_bas = "lanl2dz";;

let tag_dcb = Skeleton_context_databox_tag_by_basicname_databox_provider_v.provide nam_bas;;

test_number 1 (
(tag_dcb : Skeleton_context_databox_symbol_t.skeleton_context_databox_symbol Tag_t.tag ) =
  (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor "lanl2dz",
   [5; 5; 3])
);;

let fno_dcb = Dgn_fullnameoffile_by_basicname_databox_n_basicname_database_provider_v.provide tag_dcb;;

Parameters_general_register_v.store "databox-file" fno_dcb;;


(* Debug *)


open Dgn_tag_option_from_skeleton_symbol_translator_v;;

let tag_dgn_t =
  Dgn_tag_tree_by_basicname_databox_n_basicname_database_provider_v.provide 
    tag_dcb;;

let tag_dgn_l = 
    Dgn_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide
      tag_dcb;;

let sym_ske_ol = List.map Skeleton_symbol_option_from_dgn_tag_translator_v.translate tag_dgn_l ;;
let sym_ske_n_tag_dgn_l = Doublet_list_v.make sym_ske_ol tag_dgn_l;;
let sym_ske_l = Option_v.entity_list_of_option_list sym_ske_ol;;

let cur_sym_ske = List.find Skeleton_symbol_v.is_skeleton_context_databox_constructor sym_ske_l;;

test_number 2 (
(cur_sym_ske : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_context_symbol
   (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
     (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
       "lanl2dz"))
);;

let tag_dgn_bas_o = translate cur_sym_ske;;

test_number 3 (
(tag_dgn_bas_o : Dgn_symbol_t.dgn_symbol Tag_t.tag option ) =
  Some
   (Dgn_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
       (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
         "LANL2DZ")),
    [5; 5; 3])
);;


let cur_sym_ske = List.find Skeleton_symbol_v.is_skeleton_body_centered_aopefset_onecenter sym_ske_l;;

test_number 4 (
( cur_sym_ske : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_body_symbol
   (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
     (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopef_symbol
       (Skeleton_body_centered_aopef_symbol_t.Skeleton_body_centered_aopefset_anycenter
         "lanl2dz")))
);;

let tag_dgn_o = Dgn_tag_option_from_skeleton_symbol_translator_v.translate cur_sym_ske;;

test_number 5 (
(tag_dgn_o : Dgn_symbol_t.dgn_symbol Tag_t.tag option ) =
  Some
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_aoset_anycenter_block
         "LANL2DZ")),
    [2; 2; 2; 5; 5; 3])
);;
