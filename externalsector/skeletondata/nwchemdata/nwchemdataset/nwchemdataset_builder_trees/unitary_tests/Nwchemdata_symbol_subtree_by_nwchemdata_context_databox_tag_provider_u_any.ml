open Make_test_v;;

testing "Nwchemdata_symbol_subtree_by_nwchemdata_context_databox_tag_provider_v with
    Nwchemdata_symbol_subtree_by_nwchemdata_context_databox_tag_provider_u_any.ml";;

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
   #use "Nwchemdata_symbol_subtree_by_nwchemdata_context_databox_tag_provider_u_any.ml";; 

*)

open Nwchemdata_symbol_subtree_by_nwchemdata_context_databox_tag_provider_v;;

let nam_nbo = "cc_pVTZ";;
 
let tag_nbo = Nwchemdata_context_databox_tag_by_databox_name_provider_v.provide nam_nbo;;

test_number 1 ( 
(tag_nbo :
   Nwchemdata_context_databox_symbol_t.nwchemdata_context_databox_symbol Tag_t.tag ) =
(Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
   "cc_pVTZ",
 [13; 5; 20; 2])
);;

test_number 2 (
nam_nbo = Nwchemdata_context_databox_tag_v.string_off tag_nbo 
);;

let sym_nwc_st = 
  Nwchemdata_parser_v.nwchemdata_symbol_tree_root_databox_of_databox_name 
    nam_nbo;;

let tag_nwc_rtl = Tree_v.root_topson_node_list_off_tree sym_nwc_st;;

test_number 3 (
(tag_nwc_rtl : Nwchemdata_symbol_t.nwchemdata_symbol list ) =
  [Nwchemdata_symbol_t.Nwchemdata_context_symbol
    (Nwchemdata_context_symbol_t.Nwchemdata_context_databox_symbol
      (Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
        "cc_pVTZ"));
   Nwchemdata_symbol_t.Nwchemdata_set_symbol
    (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
      (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_variable_symbol
        (Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_version_symbol
          (Nwchemdata_set_body_variable_version_symbol_t.Nwchemdata_set_body_variable_version_constructor
            "v1.2.2"))));
   Nwchemdata_symbol_t.Nwchemdata_set_symbol
    (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
      (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
        (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aobasis_block_symbol
          (Nwchemdata_set_body_node_aobasis_block_symbol_t.Nwchemdata_set_body_node_aobasis_block_constructor
            "cc_pVTZ"))))]
);;

test_number 4 (
sym_nwc_st = provide tag_nbo
);;
