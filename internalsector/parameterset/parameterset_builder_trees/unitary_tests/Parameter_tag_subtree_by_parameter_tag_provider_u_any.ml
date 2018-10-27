open Make_test_v;;

testing "Parameter_tag_subtree_by_parameter_tag_provider_v with
    Parameter_tag_subtree_by_parameter_tag_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_parameter_context_databox_tag_register_v.register;;
Register_v.delete Parameter_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Parameter_fence_by_parameter_tag_register_v.register;;
Register_v.delete Parameter_son_tag_list_by_parameter_father_tag_register_v.register;;
Register_v.delete Parameter_symbol_by_sole_index_register_v.register;;
Register_v.delete Parameter_tag_all_list_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Parameter_tag_all_list_by_parameter_context_databox_tag_register_v.register;;
Register_v.delete Parameter_tag_subtree_by_parameter_tag_register_v.register;;
Register_v.delete Parameter_tag_tree_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Parameter_tag_tree_by_parameter_context_databox_tag_register_v.register;;



(* Tracing *)

(* toplevel 
   #use "Parameter_tag_subtree_by_parameter_tag_provider_u_any.ml";; 

*)

open Parameter_tag_subtree_by_parameter_tag_provider_v;;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;

let tag_par_l = 
    Parameter_tag_all_list_by_databox_name_n_database_name_provider_v.provide
    (nam_dbo, nam_dba);;

let tag_par = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Parameter_symbol_v.is_parameter_set_body_tuple_aopef_constructor s)
	&&
      (Parameter_symbol_v.string_off s = "he p 2 2")
      )
    tag_par_l;;

test_number 1 (
(tag_par : Parameter_symbol_t.parameter_symbol Tag_t.tag ) =
  (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
      (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
        (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
          "he p 2 2")))),
   [5; 22; 5; 16; 5])
);;

let soi_par = Tag_v.sole_index_off_tag tag_par;;

test_number 2 (
(soi_par : Sole_index_t.sole_index ) = 
[5; 22; 5; 16; 5]
);;

let tag_pbo = Parameter_any_category_by_sole_index_extractor_v.parameter_context_databox_tag_off_sole_index soi_par;;

test_number 3 (
(tag_pbo :
  Parameter_context_databox_symbol_t.parameter_context_databox_symbol
  Tag_t.tag ) =
 (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
    "try_ao",
   [22; 5; 16; 5])
);;

let tag_par_t = Parameter_tag_tree_by_parameter_context_databox_tag_provider_v.provide tag_pbo;;

let tag_par_st = Tree_v.subtree_of_node_predicate_off_tree (fun t -> t = tag_par) tag_par_t;;

let tag_lea_l = Tree_v.leaf_node_list_off_tree tag_par_st;;

test_number 4 (
(tag_lea_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
       (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
         (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
           (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
             "he p 2 2")))),
    [1; 5; 22; 5; 16; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
       (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
         (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
           (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
             "he p 2 2")))),
    [2; 5; 22; 5; 16; 5])]
);;

let tag_fen = List.filter (fun (s, i) -> (Parameter_symbol_v.is_parameter_set_fence_symbol_off_parameter_symbol s) )  tag_lea_l;;

test_number 5 (
tag_fen = tag_lea_l
);;

let tag_fen_eae = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> Parameter_symbol_v.is_parameter_set_fence_aopef_exponent_constructor s)
    tag_fen;;

let tag_pat_eae = List.rev (Tree_v.path_of_node_predicate_off_tree (fun t -> t = tag_fen_eae) tag_par_t);;

test_number 6 (
( tag_pat_eae : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_sector_symbol
       (Parameter_context_sector_symbol_t.Parameter_context_sector_constructor
         "internal")),
    [5]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_domain_symbol
       (Parameter_context_domain_symbol_t.Parameter_context_domain_constructor
         "parameter")),
    [6; 5]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_database_symbol
       (Parameter_context_database_symbol_t.Parameter_context_database_constructor
         "nwchem")),
    [5; 6; 5]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_databox_symbol
       (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
         "try_ao")),
    [22; 5; 16; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
       (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
         (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
           "he p 2 2")))),
    [5; 22; 5; 16; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
       (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
         (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
           (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
             "he p 2 2")))),
    [1; 5; 22; 5; 16; 5])]
);;
