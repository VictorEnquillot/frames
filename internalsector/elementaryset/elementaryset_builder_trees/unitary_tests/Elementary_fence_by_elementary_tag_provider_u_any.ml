open Make_test_v;;

testing "Elementary_fence_by_elementary_tag_provider_v with
    Elementary_fence_by_elementary_tag_provider_u_any.ml";;

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
   #use "Elementary_fence_by_elementary_tag_provider_u_any.ml";; 

*)

open Elementary_fence_by_elementary_tag_provider_v;;

let nam_ebo = "try_ao";;
let nam_eba = "nwchem";;
 
let tag_ebo =  Elementary_context_databox_tag_by_databox_name_n_database_name_provider_v.provide (nam_ebo, nam_eba);;

test_number 1 (
(tag_ebo :
  Elementary_context_databox_symbol_t.elementary_context_databox_symbol
  Tag_t.tag ) =
  (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
    "try_ao",
   [16; 5; 6; 5])
);;

let tag_ele_l = Elementary_tag_all_list_by_elementary_context_databox_tag_provider_v.provide tag_ebo;;

let tag_ele = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> (Elementary_symbol_v.string_off s = "he p 2 2") 
	&& 
      (Elementary_symbol_v.is_elementary_fence_parameter_aopef_exponent_constructor s)
    )
    tag_ele_l;;

test_number 2 (
(tag_ele : Elementary_symbol_t.elementary_symbol Tag_t.tag) =
(Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
       (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
          (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_exponent_symbol
             (Elementary_fence_parameter_aopef_exponent_symbol_t.Elementary_fence_parameter_aopef_exponent_constructor
		"he p 2 2")))),
  [1; 5; 16; 5; 6; 5])
);;

let tag_ele_st = 
    Elementary_tag_subtree_by_elementary_tag_provider_v.provide tag_ele;;

let tag_ele_fl = Tree_v.leaf_node_list_off_tree tag_ele_st;;
