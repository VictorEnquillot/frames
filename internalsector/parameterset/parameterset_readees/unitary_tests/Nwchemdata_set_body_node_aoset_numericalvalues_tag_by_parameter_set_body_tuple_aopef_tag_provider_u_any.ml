open Make_test_v;;

testing "Nwchemdata_set_body_node_aoset_numericalvalues_tag_by_parameter_set_body_tuple_aopef_tag_provider_v with
    Nwchemdata_set_body_node_aoset_numericalvalues_tag_by_parameter_set_body_tuple_aopef_tag_provider_u_any.ml";;

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
   #use "Nwchemdata_set_body_node_aoset_numericalvalues_tag_by_parameter_set_body_tuple_aopef_tag_provider_u_any.ml";; 

*)

open Nwchemdata_set_body_node_aoset_numericalvalues_tag_by_parameter_set_body_tuple_aopef_tag_provider_v;;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;

let tag_par_l = 
    Parameter_tag_all_list_by_databox_name_n_database_name_provider_v.provide
    (nam_dbo, nam_dba);;

(* Argument Parameter_set_body_tuple_aopef *) 

let tag_par = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Parameter_symbol_v.is_parameter_set_body_tuple_aopef_constructor s)
	&&
      (Parameter_symbol_v.string_off s = "he p 2 2")
      )
    tag_par_l;;

(* Argument *)

let tag_pta = Parameter_set_body_tuple_aopef_tag_v.parameter_set_body_tuple_aopef_tag_off_parameter_tag tag_par;;

test_number 1 (
(tag_pta :
  Parameter_set_body_tuple_aopef_symbol_t.parameter_set_body_tuple_aopef_symbol
  Tag_t.tag ) =
  (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
    "he p 2 2",
   [5; 22; 5; 16; 5])
);;

let tag_nwc_nan =
    Nwchemdata_as_set_body_node_aoset_numericalvalues_tag_by_parameter_set_body_tuple_aopef_tag_provider_v.provide
      tag_pta;;

test_number 2 (
(tag_nwc_nan : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag ) =
  (Nwchemdata_symbol_t.Nwchemdata_set_symbol
    (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
      (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
        (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol
          (Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_symbol
            (Nwchemdata_set_body_node_aoset_numericalvalues_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_constructor
              "He P 3 GAUSSIAN 2"))))),
   [2; 2; 3; 2; 1; 2; 2; 2; 22; 5; 20; 2])
);;

let tag_nan =
     Nwchemdata_set_body_node_aoset_numericalvalues_tag_v.nwchemdata_set_body_node_aoset_numericalvalues_tag_off_nwchemdata_tag

      tag_nwc_nan;;

test_number 3 (
(tag_nan :
   Nwchemdata_set_body_node_aoset_numericalvalues_symbol_t.nwchemdata_set_body_node_aoset_numericalvalues_symbol
   Tag_t.tag ) =
(Nwchemdata_set_body_node_aoset_numericalvalues_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_constructor
   "He P 3 GAUSSIAN 2",
 [2; 2; 3; 2; 1; 2; 2; 2; 22; 5; 20; 2])
);;

test_number 4 (
tag_nan = provide tag_pta
);;
