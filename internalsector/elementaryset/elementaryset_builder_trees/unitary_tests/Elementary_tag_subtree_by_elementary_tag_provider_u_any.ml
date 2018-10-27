open Make_test_v;;

testing "Elementary_tag_subtree_by_elementary_tag_provider_v with
    Elementary_tag_subtree_by_elementary_tag_provider_u_any.ml";;

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
   #use "Elementary_tag_subtree_by_elementary_tag_provider_u_any.ml";; 

*)

open Elementary_tag_subtree_by_elementary_tag_provider_v;;

let nam_ebo = "try_ao";;
let nam_eba = "nwchem";;

let tag_ele_l = 
    Elementary_tag_all_list_by_databox_name_n_database_name_provider_v.provide
    (nam_ebo, nam_eba);;

let tag_ele = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Elementary_symbol_v.is_elementary_body_parameter_tuple_aopef_constructor s)
	&&
      (Elementary_symbol_v.string_off s = "he p 2 2")
      )
    tag_ele_l;;

test_number 1 (
(tag_ele : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "he p 2 2"))),
   [5; 16; 5; 6; 5])
);;

let soi_ele = Tag_v.sole_index_off_tag tag_ele;;

test_number 2 (
(soi_ele : Sole_index_t.sole_index ) = 
[5; 16; 5; 6; 5]
);;

let tag_ebo = Elementary_any_category_by_sole_index_extractor_v.elementary_context_databox_tag_off_sole_index soi_ele;;

test_number 3 (
(tag_ebo :
  Elementary_context_databox_symbol_t.elementary_context_databox_symbol
  Tag_t.tag ) =
 (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
    "try_ao",
   [16; 5; 6; 5])
);;

let tag_ele_t = Elementary_tag_tree_by_elementary_context_databox_tag_provider_v.provide tag_ebo;;

let tag_ele_st = Tree_v.subtree_of_node_predicate_off_tree (fun t -> t = tag_ele) tag_ele_t;;

let tag_lea_l = Tree_v.leaf_node_list_off_tree tag_ele_st;;

test_number 4 (
(tag_lea_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
       (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
         (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_exponent_symbol
           (Elementary_fence_parameter_aopef_exponent_symbol_t.Elementary_fence_parameter_aopef_exponent_constructor
             "he p 2 2")))),
    [1; 5; 16; 5; 6; 5]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
       (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
         (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_coefficient_symbol
           (Elementary_fence_parameter_aopef_coefficient_symbol_t.Elementary_fence_parameter_aopef_coefficient_constructor
             "he p 2 2")))),
    [2; 5; 16; 5; 6; 5])]
);;

let tag_fen = List.filter (fun (s, i) -> (Elementary_symbol_v.is_elementary_fence_symbol_off_elementary_symbol s) )  tag_lea_l;;

test_number 5 (
tag_fen = tag_lea_l
);;

let tag_fen_eae = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> Elementary_symbol_v.is_elementary_fence_parameter_aopef_exponent_constructor s)
    tag_fen;;

let tag_pat_eae = List.rev (Tree_v.path_of_node_predicate_off_tree (fun t -> t = tag_fen_eae) tag_ele_t);;

test_number 6 (
( tag_pat_eae : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_sector_symbol
       (Elementary_context_sector_symbol_t.Elementary_context_sector_constructor
         "internal")),
    [5]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_domain_symbol
       (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor
         "elementary")),
    [6; 5]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_database_symbol
       (Elementary_context_database_symbol_t.Elementary_context_database_constructor
         "nwchem")),
    [5; 6; 5]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_databox_symbol
       (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
         "try_ao")),
    [16; 5; 6; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
       (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
         (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
           "he p 2 2"))),
    [5; 16; 5; 6; 5]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
       (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
         (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_exponent_symbol
           (Elementary_fence_parameter_aopef_exponent_symbol_t.Elementary_fence_parameter_aopef_exponent_constructor
             "he p 2 2")))),
    [1; 5; 16; 5; 6; 5])]
);;
