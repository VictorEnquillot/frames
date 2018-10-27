open Make_test_v;;

testing "Nwchemdata_symbol_subtree_by_nwchemdata_context_databox_tag_provider_v with
    Nwchemdata_symbol_subtree_by_nwchemdata_context_databox_tag_provider_u_lanl2dz.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_nwchemdata_context_databox_tag_register_v.register;;
Register_v.delete Nwchemdata_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Nwchemdata_set_fence_by_nwchemdata_tag_register_v.register;;
Register_v.delete Nwchemdata_son_tag_list_by_nwchemdata_father_tag_register_v.register;;
Register_v.delete Nwchemdata_symbol_by_sole_index_register_v.register;;
Register_v.delete Nwchemdata_symbol_subtree_by_databox_name_register_v.register;;
Register_v.delete Nwchemdata_tag_all_list_by_databox_name_register_v.register;;
Register_v.delete Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_register_v.register;;
Register_v.delete Nwchemdata_tag_subtree_by_nwchemdata_tag_register_v.register;;
Register_v.delete Nwchemdata_tag_tree_by_databox_name_register_v.register;;



(* Tracing *)

(* toplevel 
   #use "Nwchemdata_symbol_subtree_by_nwchemdata_context_databox_tag_provider_u_lanl2dz.ml";; 

*)

(* Database file *)

let nam_nbo = "lanl2dz";;
let nam_nba = "nwchem";;

let tag_nbo = Nwchemdata_context_databox_tag_by_databox_name_provider_v.provide nam_nbo;;

test_number 1 ( 
(tag_nbo :
  Nwchemdata_context_databox_symbol_t.nwchemdata_context_databox_symbol Tag_t.tag ) =
  (Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
    "lanl2dz",
   [5; 5; 22; 6])
);;

(* Argument tag_nbo *)

open Nwchemdata_symbol_subtree_by_nwchemdata_context_databox_tag_provider_v;;

let sym_nwc_st = Nwchemdata_parser_v.nwchemdata_symbol_tree_root_databox_of_databox_name_n_database_name (nam_nba, nam_nbo);;
let sym_tso_l = Tree_v.root_topson_node_list_off_tree sym_nwc_st;;

test_number 2 (
( sym_tso_l : Nwchemdata_symbol_t.nwchemdata_symbol list ) =
  [Nwchemdata_symbol_t.Nwchemdata_context_symbol
    (Nwchemdata_context_symbol_t.Nwchemdata_context_databox_symbol
      (Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
        "LANL2DZ"));
   Nwchemdata_symbol_t.Nwchemdata_context_symbol
    (Nwchemdata_context_symbol_t.Nwchemdata_set_body_variable_version_symbol
      (Nwchemdata_set_body_variable_version_symbol_t.Nwchemdata_set_body_variable_version_constructor
        "v1.2.2"));
   Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
    (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
      (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aobasis_block "LANL2DZ"));
   Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
    (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
      (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_ecpbasis_block "LANL2DZ"))]
);;

let sym_nwc_st = provide tag_nbo;;
let sym_tso_l = Tree_v.root_topson_node_list_off_tree sym_nwc_st;;

test_number 3 (
( sym_tso_l : Nwchemdata_symbol_t.nwchemdata_symbol list ) =
  [Nwchemdata_symbol_t.Nwchemdata_context_symbol
    (Nwchemdata_context_symbol_t.Nwchemdata_context_databox_symbol
      (Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
        "lanl2dz"));
   Nwchemdata_symbol_t.Nwchemdata_context_symbol
    (Nwchemdata_context_symbol_t.Nwchemdata_set_body_variable_version_symbol
      (Nwchemdata_set_body_variable_version_symbol_t.Nwchemdata_set_body_variable_version_constructor
        "v1.2.2"));
   Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
    (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
      (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aobasis_block "lanl2dz"));
   Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
    (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
      (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_ecpbasis_block "lanl2dz"))]
);;

(* 
let t = Tree_v.map lowercase_string_off_of_nwchemdata_symbol sym_nwc_st;;
 
let sym_nod_l = Tree_v.node_list_off_tree sym_nwc_st;;
*)
