open Make_test_v;;

testing "Nwchemdata_set_body_node_aoset_numericalvalues_tag_by_parameter_set_body_tuple_aopef_tag_provider_v with
    Nwchemdata_set_body_node_aoset_numericalvalues_tag_by_parameter_set_body_tuple_aopef_tag_provider_u_cc_pvtz.ml";;

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
   #use "Nwchemdata_set_body_node_aoset_numericalvalues_tag_by_parameter_set_body_tuple_aopef_tag_provider_u_cc_pvtz.ml";; 

*)

open Nwchemdata_set_body_node_aoset_numericalvalues_tag_by_parameter_set_body_tuple_aopef_tag_provider_v;;

let nam_dbo = "cc_pVTZ";;
let nam_dba = "nwchem";;

let tag_par_l = 
    Parameter_tag_all_list_by_databox_name_n_database_name_provider_v.provide
    (nam_dbo, nam_dba);;

(* Argument Parameter_set_body_tuple_aopef *) 

let tag_par = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Parameter_symbol_v.is_parameter_set_body_tuple_aopef_constructor s)
	&&
      (Parameter_symbol_v.string_off s = "ne p 2 2")
      )
    tag_par_l;;

(* Argument *)

let tag_pta = Parameter_set_body_tuple_aopef_tag_v.parameter_set_body_tuple_aopef_tag_off_parameter_tag tag_par;;

test_number 1 (
(tag_pta :
  Parameter_set_body_tuple_aopef_symbol_t.parameter_set_body_tuple_aopef_symbol
  Tag_t.tag ) =
  (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
    "ne p 2 2",
   [157; 13; 5; 16; 5])
);;

let soi_pta = Tag_v.sole_index_off_tag tag_pta;;

test_number 2 (
nam_dbo = Databox_name_by_any_sole_index_provider_v.provide soi_pta
);;

let sof_nnv = 
    Nwchemdata_set_body_node_aoset_numericalvalues_string_off_by_parameter_set_body_tuple_aopef_tag_provider_v.provide
      tag_pta;;

test_number 3 (
(sof_nnv : string ) = 
"Ne P 4 GAUSSIAN 2"
);;

let sof_pta = Parameter_set_body_tuple_aopef_tag_v.string_off tag_pta;;

test_number 4 (
(sof_pta : string ) = 
"ne p 2 2"
);;

let tag_nwc_l =
    Nwchemdata_as_set_body_node_aoset_numericalvalues_tag_list_by_databox_name_provider_v.provide
      nam_dbo;;

let tag_nwc_sl = List.filter
    (fun t -> String.sub (Nwchemdata_tag_v.string_off t) 0 5 = "Ne P ")
    tag_nwc_l;;

test_number 5 (
(tag_nwc_sl : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_body_symbol
     (Nwchemdata_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues
         "Ne P 4 GAUSSIAN 1")),
    [1; 2; 4; 2; 10; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_body_symbol
     (Nwchemdata_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues
         "Ne P 4 GAUSSIAN 2")),
    [2; 2; 4; 2; 10; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_body_symbol
     (Nwchemdata_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues
         "Ne P 4 GAUSSIAN 3")),
    [3; 2; 4; 2; 10; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_body_symbol
     (Nwchemdata_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues
         "Ne P 5 GAUSSIAN 1")),
    [1; 2; 5; 2; 10; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_body_symbol
     (Nwchemdata_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues
         "Ne P 6 GAUSSIAN 1")),
    [1; 2; 6; 2; 10; 2; 2; 2; 13; 5; 20; 2])]
);;
  
let tag_nwc_nnv = List_v.only_element_of_predicate_off_list
    (fun t -> Nwchemdata_tag_v.string_off t = sof_nnv)
    tag_nwc_l;;

let tag_nbn = Nwchemdata_set_body_node_tag_v.nwchemdata_set_body_node_tag_off_nwchemdata_tag tag_nwc_nnv;;
    
test_number 6 (
tag_nbn :
  Nwchemdata_set_body_node_symbol_t.nwchemdata_set_body_node_symbol Tag_t.tag =
  (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues
    "Ne P 4 GAUSSIAN 2",
   [2; 2; 4; 2; 10; 2; 2; 2; 13; 5; 20; 2])
);;

test_number 7 (
tag_nbn = provide tag_pta
);;
