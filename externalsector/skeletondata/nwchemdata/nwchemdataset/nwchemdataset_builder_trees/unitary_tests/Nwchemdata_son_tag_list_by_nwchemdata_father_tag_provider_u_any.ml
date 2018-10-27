open Make_test_v;;

testing "Nwchemdata_son_tag_list_by_nwchemdata_father_tag_provider_v with
    Nwchemdata_son_tag_list_by_nwchemdata_father_tag_provider_u_any.ml";;

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
   #use "Nwchemdata_son_tag_list_by_nwchemdata_father_tag_provider_u_any.ml";; 

*)

open Nwchemdata_son_tag_list_by_nwchemdata_father_tag_provider_v;;

let nam_nbo = "cc_pVTZ";;

let soi_any = [1; 1; 2; 3; 2; 1; 2; 2; 2; 13; 5; 20; 2];;

let tag_nbo = Nwchemdata_any_category_by_sole_index_extractor_v.nwchemdata_context_databox_tag_off_sole_index soi_any;;
let tag_nwc = Nwchemdata_context_databox_tag_v.nwchemdata_tag_of_nwchemdata_context_databox_tag tag_nbo;;

test_number 1 (
(tag_nwc : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag ) =
  (Nwchemdata_symbol_t.Nwchemdata_context_symbol
    (Nwchemdata_context_symbol_t.Nwchemdata_context_databox_symbol
      (Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
        "cc_pVTZ")),
   [13; 5; 20; 2])
);;

let soi_nwc = Tag_v.sole_index_off_tag tag_nwc;;

test_number 2 (
(soi_nwc : Sole_index_t.sole_index ) = 
[13; 5; 20; 2]
);;

let tag_nbo = 
    Nwchemdata_any_category_by_sole_index_extractor_v.nwchemdata_context_databox_tag_off_sole_index
      soi_nwc;;

test_number 3 (
( tag_nbo :
  Nwchemdata_context_databox_symbol_t.nwchemdata_context_databox_symbol
  Tag_t.tag  ) =
  (Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
    "cc_pVTZ",
   [13; 5; 20; 2])
);;

let tag_nwc_t = 
    Nwchemdata_tag_tree_by_nwchemdata_context_databox_tag_provider_v.provide  
      tag_nbo;;

let boo = Tree_v.is_leaf_of_node_off_tree tag_nwc tag_nwc_t;;

test_number 4 (
boo = false
);;

let tag_nwc_st = 
	Tree_v.subtree_find_of_node_predicate_off_tree 
	  (fun t -> t = tag_nwc) 
	  tag_nwc_t;;

let tag_nwc_tsn_l = Tree_v.topson_node_list_off_tree tag_nwc_st;;

test_number 5 (
(tag_nwc_tsn_l : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_set_body_variable_version_symbol
       (Nwchemdata_set_body_variable_version_symbol_t.Nwchemdata_set_body_variable_version_constructor
         "v1.2.2")),
    [1; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aobasis_block
         "cc_pVTZ")),
    [2; 13; 5; 20; 2])]
);;

test_number 6 (
tag_nwc_tsn_l = provide tag_nwc
);;
