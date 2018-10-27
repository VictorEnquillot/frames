open Make_test_v;;

testing "Elementary_symbol_subtree_by_elementary_context_databox_tag_provider_v with
    Elementary_symbol_subtree_by_elementary_context_databox_tag_provider_u_lanl2dz.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Elementary_fence_by_elementary_tag_register_v.register;;
Register_v.delete Elementary_son_tag_list_by_elementary_father_tag_register_v.register;;
Register_v.delete Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete Elementary_tag_all_list_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Elementary_tag_all_list_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete Elementary_tag_subtree_by_elementary_tag_register_v.register;;
Register_v.delete Elementary_tag_tree_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Elementary_tag_tree_by_elementary_context_databox_tag_register_v.register;;



(* Tracing *)

(* toplevel 
   #use "Elementary_symbol_subtree_by_elementary_context_databox_tag_provider_u_lanl2dz.ml";; 

*)

(* Database file *)

let nam_nbo = "lanl2dz";;
let nam_eba = "nwchem";;

let tag_nbo = Elementary_context_databox_tag_by_databox_name_n_database_name_provider_v.provide nam_nbo;;

test_number 1 ( 
(tag_nbo :
  Elementary_context_databox_symbol_t.elementary_context_databox_symbol Tag_t.tag ) =
  (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
    "lanl2dz",
   [5; 5; 22; 6])
);;

(* Argument tag_nbo *)

open Elementary_symbol_subtree_by_elementary_context_databox_tag_provider_v;;

let sym_nwc_st = Elementary_parser_v.elementary_symbol_tree_root_databox_of_databox_name_n_database_name (nam_eba, nam_nbo);;
let sym_tso_l = Tree_v.root_topson_node_list_off_tree sym_nwc_st;;

test_number 2 (
( sym_tso_l : Elementary_symbol_t.elementary_symbol list ) =
  [Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_databox_symbol
      (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
        "LANL2DZ"));
   Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_version_symbol
      (Elementary_context_version_symbol_t.Elementary_context_version_constructor
        "v1.2.2"));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_node_symbol
      (Elementary_body_node_symbol_t.Elementary_body_node_aobasis_block "LANL2DZ"));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_node_symbol
      (Elementary_body_node_symbol_t.Elementary_body_node_ecpbasis_block "LANL2DZ"))]
);;

let sym_nwc_st = provide tag_nbo;;
let sym_tso_l = Tree_v.root_topson_node_list_off_tree sym_nwc_st;;

test_number 3 (
( sym_tso_l : Elementary_symbol_t.elementary_symbol list ) =
  [Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_databox_symbol
      (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
        "lanl2dz"));
   Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_version_symbol
      (Elementary_context_version_symbol_t.Elementary_context_version_constructor
        "v1.2.2"));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_node_symbol
      (Elementary_body_node_symbol_t.Elementary_body_node_aobasis_block "lanl2dz"));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_node_symbol
      (Elementary_body_node_symbol_t.Elementary_body_node_ecpbasis_block "lanl2dz"))]
);;

(* 
let t = Tree_v.map lowercase_string_off_of_elementary_symbol sym_nwc_st;;
 
let sym_nod_l = Tree_v.node_list_off_tree sym_nwc_st;;
*)
