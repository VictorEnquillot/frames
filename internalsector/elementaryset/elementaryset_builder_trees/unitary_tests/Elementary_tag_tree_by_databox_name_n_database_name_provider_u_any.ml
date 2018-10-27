open Make_test_v;;

testing "Elementary_tag_tree_by_databox_name_n_database_name_provider_v with
    Elementary_tag_tree_by_databox_name_n_database_name_provider_u_any.ml";;

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

let nam_mod = "Elementary_tag_tree_by_databox_name_n_database_name_provider_u_any";;


(* toplevel 
   #use "Elementary_tag_tree_by_databox_name_n_database_name_provider_u_any.ml";; 

*)

open Elementary_tag_tree_by_databox_name_n_database_name_provider_v;;

let nam_ebo = "try_ao";;
let nam_eba = "nwchem";;

let tag_ele_qua = Elementary_as_context_tag_quatuor_by_databox_name_n_database_name_provider_v.provide
      (nam_ebo, nam_eba);;

test_number 1 (
(tag_ele_qua :
  Elementary_symbol_t.elementary_symbol Tag_t.tag Quatuor_t.quatuor ) =
  ((Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_databox_symbol
       (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
         "try_ao")),
    [16; 5; 6; 5]),
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_database_symbol
       (Elementary_context_database_symbol_t.Elementary_context_database_constructor
         "nwchem")),
    [5; 6; 5]),
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_domain_symbol
       (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor
         "elementary")),
    [6; 5]),
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_sector_symbol
       (Elementary_context_sector_symbol_t.Elementary_context_sector_constructor
         "internal")),
    [5]))
);;

 let (tag_ele_ebo, tag_ele_eba, tag_ele_ecd, tag_ele_ecs) = tag_ele_qua;;

let sym_ele_ebo_st =
  Elementary_symbol_subtree_by_databox_name_n_database_name_provider_v.provide
    (nam_ebo, nam_eba)
;;

let sym_ele_tso_l = Tree_v.root_topson_node_list_off_tree sym_ele_ebo_st;;

test_number 2 (
( sym_ele_tso_l : Elementary_symbol_t.elementary_symbol list ) =
  [Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_databox_symbol
      (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
        "try_ao"));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "he s 1 1")));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "he s 1 2")));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "he s 2 1")));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "he p 2 1")));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "he p 2 2")));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "he p 3 1")))]
);;

let soi_ele_ebo = Tag_v.sole_index_off_tag tag_ele_ebo;;

test_number 3 (
(soi_ele_ebo : Sole_index_t.sole_index ) = 
[16; 5; 6; 5]
);;

let soi_ele_ebo_st =
  Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
    sym_ele_ebo_st 
    soi_ele_ebo 
;;

let soi_ele_tso_l = Tree_v.root_topson_node_list_off_tree soi_ele_ebo_st;;

test_number 4 (
(soi_ele_tso_l : Sole_index_t.sole_index list ) =
[[16; 5; 6; 5]; [1; 16; 5; 6; 5]; [2; 16; 5; 6; 5]; [3; 16; 5; 6; 5];
 [4; 16; 5; 6; 5]; [5; 16; 5; 6; 5]; [6; 16; 5; 6; 5]]
);;

let tag_ele_ebo_st = Tree_v.map2 Tag_v.make sym_ele_ebo_st soi_ele_ebo_st;;
  
let tag_ele_eba_st = Tree_v.make_of_node tag_ele_eba [tag_ele_ebo_st];;
  
let tag_ele_ecd_st = Tree_v.make_of_node tag_ele_ecd [tag_ele_eba_st];;
 
let tag_ele_t = Tree_v.make_of_node tag_ele_ecs [tag_ele_ecd_st];;

(* Analysis *)

let tag_ele_tso_l = Tree_v.root_topson_node_list_off_tree tag_ele_t;;

test_number 5 (
(tag_ele_tso_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_sector_symbol
       (Elementary_context_sector_symbol_t.Elementary_context_sector_constructor
         "internal")),
    [5]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_domain_symbol
       (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor
         "elementary")),
    [6; 5])]
);;

let tag_ele_top_l = Tree_v.node_list_of_node_predicate_off_tree (fun (s, i) -> List.length i <= 5) tag_ele_t;;

test_number 6 (
(tag_ele_top_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
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
           "he s 1 1"))),
    [1; 16; 5; 6; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
       (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
         (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
           "he s 1 2"))),
    [2; 16; 5; 6; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
       (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
         (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
           "he s 2 1"))),
    [3; 16; 5; 6; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
       (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
         (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
           "he p 2 1"))),
    [4; 16; 5; 6; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
       (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
         (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
           "he p 2 2"))),
    [5; 16; 5; 6; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
       (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
         (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
           "he p 3 1"))),
    [6; 16; 5; 6; 5])]
);;

test_number 7 (
tag_ele_t = provide (nam_ebo, nam_eba)
);;
