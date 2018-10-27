open Make_test_v;;

testing "Parameter_fence_by_parameter_tag_provider_v with
    Parameter_fence_by_parameter_tag_provider_u_any.ml";;

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
   #use "Parameter_fence_by_parameter_tag_provider_u_any.ml";; 

*)

open Parameter_fence_by_parameter_tag_provider_v;;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;
 
let tag_pbo =  Parameter_context_databox_tag_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;

test_number 1 (
(tag_pbo :
  Parameter_context_databox_symbol_t.parameter_context_databox_symbol
  Tag_t.tag ) =
  (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
    "try_ao",
   [22; 5; 16; 5])
);;

let tag_par_l = Parameter_tag_all_list_by_parameter_context_databox_tag_provider_v.provide tag_pbo;;

(* Argument *)

let tag_par = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> (Parameter_symbol_v.string_off s = "he p 2 2") 
	&& 
      (Parameter_symbol_v.is_parameter_set_fence_aopef_exponent_constructor s)
    )
    tag_par_l;;

test_number 2 (
(tag_par : Parameter_symbol_t.parameter_symbol Tag_t.tag) =
(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
       (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
          (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
             (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
		"he p 2 2")))),
  [1; 5; 22; 5; 16; 5])
);;

let tag_par_st = 
    Parameter_tag_subtree_by_parameter_tag_provider_v.provide tag_par;;

let tag_par_fl = Tree_v.leaf_node_list_off_tree tag_par_st;;

test_number 3 (
(tag_par_fl : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
       (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
         (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
           "he p 2 2")))),
    [1; 5; 22; 5; 16; 5])]
);;

test_number 4 (
tag_par_fl = provide tag_par
);;

test_number 5 (
[tag_par] = provide tag_par
);;
