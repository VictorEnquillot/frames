open Make_test_v;;

testing "Elementary_symbol_subtree_by_elementary_context_databox_tag_provider_v with
    Elementary_symbol_subtree_by_elementary_context_databox_tag_provider_u_any.ml";;

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
   #use "Elementary_symbol_subtree_by_elementary_context_databox_tag_provider_u_any.ml";; 

*)

open Elementary_symbol_subtree_by_elementary_context_databox_tag_provider_v;;

let nam_nbo = "cc_pVTZ";;
 
let tag_nbo = Elementary_context_databox_tag_by_databox_name_n_database_name_provider_v.provide nam_nbo;;

test_number 1 ( 
(tag_nbo :
  Elementary_context_databox_symbol_t.elementary_context_databox_symbol Tag_t.tag ) =
  (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
    "cc_pVTZ",
   [8; 5; 20; 2])
);;

test_number 2 (
nam_nbo = Elementary_context_databox_tag_v.string_off tag_nbo 
);;

let sym_nwc_st = 
  Elementary_parser_v.elementary_symbol_tree_root_databox_of_databox_name 
    nam_nbo;;

let tag_nwc_rtl = Tree_v.root_topson_node_list_off_tree sym_nwc_st;;

test_number 3 (
(tag_nwc_rtl : Elementary_symbol_t.elementary_symbol list ) =
  [Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_databox_symbol
      (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
        "cc_pVTZ"));
   Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_version_symbol
      (Elementary_context_version_symbol_t.Elementary_context_version_constructor
        "v1.2.2"));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_node_symbol
      (Elementary_body_node_symbol_t.Elementary_body_node_aobasis_block
        "cc_pVTZ"))]
);;

test_number 4 (
sym_nwc_st = provide tag_nbo
);;
