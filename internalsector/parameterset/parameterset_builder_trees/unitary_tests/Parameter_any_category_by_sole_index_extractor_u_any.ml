open Make_test_v;;

testing "Parameter_any_category_by_sole_index_extractor_v with
    Parameter_any_category_by_sole_index_extractor_u_any.ml";;

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
   #use "Parameter_any_category_by_sole_index_extractor_u_any.ml";; 

*)

open Parameter_any_category_by_sole_index_extractor_v;;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;

let tag_par_l = 
    Parameter_tag_all_list_by_databox_name_n_database_name_provider_v.provide
    (nam_dbo, nam_dba);;

let tag_par_any = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Parameter_symbol_v.is_parameter_set_fence_aopef_exponent_constructor s)
	&&
      (Parameter_symbol_v.string_off s = "he p 2 2")
      )
    tag_par_l;;

test_number 1 (
(tag_par_any : Parameter_symbol_t.parameter_symbol Tag_t.tag ) =
  (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
          (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
            "he p 2 2")))),
   [1; 5; 22; 5; 16; 5])
);;

let soi_any = Tag_v.sole_index_off_tag tag_par_any;;

let nam_eae = parameter_set_fence_name_off_sole_index soi_any;;

test_number 2 (
(nam_eae : string ) = 
"parameter_set_fence_aopef_exponent_constructor"
);;

test_number 3 (
nam_dbo = parameter_context_databox_string_off_off_sole_index soi_any
);;

test_number 4 (
nam_dba = parameter_context_database_string_off_off_sole_index soi_any
);;

let nam_ecd = parameter_context_domain_string_off_off_sole_index soi_any;;

test_number 5 (
(nam_ecd : string ) = 
"parameter"
);;

let nam_ecs = parameter_context_sector_string_off_off_sole_index soi_any;;

test_number 6 (
(nam_ecs : string ) = 
"internal"
);;
