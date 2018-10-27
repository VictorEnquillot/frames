open Make_test_v;;

testing "Parameter_son_tag_list_by_parameter_father_tag_provider_v with
    Parameter_son_tag_list_by_parameter_father_tag_provider_u_lanl2dz.ml";;

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
   #use "Parameter_son_tag_list_by_parameter_father_tag_provider_u_lanl2dz.ml";; 

*)

(* Database file *)

let nam_dbo = "LANL2DZ";;
let nam_dba = "nwchem";;
 
(* Analysis_list *)

let tag_pbo = Parameter_context_databox_tag_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;

test_number 1 ( 
( tag_pbo : Parameter_context_databox_symbol_t.parameter_context_databox_symbol Tag_t.tag ) =
  (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor "LANL2DZ",
  [9; 5; 6; 5])
);;

let tag_nwc_l = Parameter_tag_all_list_by_parameter_context_databox_tag_provider_v.provide tag_pbo;;

(* parameter_set_body_tuple_aopef_constructor *)

let tag_nwc_aos = List.find 
    (fun (s, i) -> 
      Parameter_symbol_v.is_parameter_set_body_tuple_aopef_constructor s)
    tag_nwc_l
;;

test_number 2 (
(tag_nwc_aos : Parameter_symbol_t.parameter_symbol Tag_t.tag ) =
  (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
      (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
        (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
          "ne s 1 1")))),
   [1; 9; 5; 6; 5])
);;

let soi_nwc = Tag_v.sole_index_off_tag tag_nwc_aos;;

let tag_pbo_x = Parameter_any_category_by_sole_index_extractor_v.parameter_context_databox_tag_off_sole_index soi_nwc;;

test_number 3 (
tag_pbo_x = tag_pbo
);;

let tag_nwc_tso_l = Parameter_son_tag_list_by_parameter_father_tag_provider_v.provide tag_nwc_aos;;

test_number 4 (
(tag_nwc_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
       (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
         (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
           "ne s 1 1")))),
    [1; 1; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
       (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
         (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
           "ne s 1 1")))),
    [2; 1; 9; 5; 6; 5])]
);;

