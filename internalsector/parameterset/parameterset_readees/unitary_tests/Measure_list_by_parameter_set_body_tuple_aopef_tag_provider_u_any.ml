open Make_test_v;;

testing "Measure_list_by_parameter_set_body_tuple_aopef_tag_provider_v with
    Measure_list_by_parameter_set_body_tuple_aopef_tag_provider_u_any.ml";;

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
   #use "Measure_list_by_parameter_set_body_tuple_aopef_tag_provider_u_any.ml";; 

*)

open Measure_list_by_parameter_set_body_tuple_aopef_tag_provider_v;;

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
      (Parameter_symbol_v.string_off s = "he p 2 1")
      )
    tag_par_l;;

(* Argument *)

let tag_pta = Parameter_set_body_tuple_aopef_tag_v.parameter_set_body_tuple_aopef_tag_off_parameter_tag tag_par;;

test_number 1 (
(tag_pta :
  Parameter_set_body_tuple_aopef_symbol_t.parameter_set_body_tuple_aopef_symbol
  Tag_t.tag ) =
  (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
    "he p 2 1",
   [4; 22; 5; 16; 5])
);;

let soi_pta = Tag_v.sole_index_off_tag tag_pta;;

test_number 2 (
nam_dbo = Databox_name_by_any_sole_index_provider_v.provide soi_pta
);;

test_number 3 (
nam_dba = Database_name_by_any_sole_index_provider_v.provide soi_pta
);;

let uni_can = Units_v.canonical_quantum_length_bohr;;

test_number 4 (
(uni_can : Units_t.units ) =
  Units_t.Units_canonical
   (Units_canonical_t.Units_canonical_quantum
     Units_canonical_quantum_t.Canonical_quantum_length_bohr)
);;

let tag_nwc_nan =
	Nwchemdata_as_set_body_node_aoset_numericalvalues_tag_by_parameter_set_body_tuple_aopef_tag_provider_v.provide
	  tag_pta;;

test_number 5 (
(tag_nwc_nan : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag ) =
  (Nwchemdata_symbol_t.Nwchemdata_set_symbol
    (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
      (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
        (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol
          (Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_symbol
            (Nwchemdata_set_body_node_aoset_numericalvalues_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_constructor
              "He P 3 GAUSSIAN 1"))))),
   [1; 2; 3; 2; 1; 2; 2; 2; 22; 5; 20; 2])
);;

let tag_nwc_nff_l = 
	Nwchemdata_son_tag_list_by_nwchemdata_father_tag_provider_v.provide 
	  tag_nwc_nan;;

test_number 6 (
(tag_nwc_nff_l : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_fence_symbol
       (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_symbol
         (Nwchemdata_set_fence_float_symbol_t.Nwchemdata_set_fence_float_positive_symbol
           (Nwchemdata_set_fence_float_positive_symbol_t.Nwchemdata_set_fence_float_positive_constructor
             "2.2818700")))),
    [1; 1; 2; 3; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_fence_symbol
       (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_symbol
         (Nwchemdata_set_fence_float_symbol_t.Nwchemdata_set_fence_float_positive_symbol
           (Nwchemdata_set_fence_float_positive_symbol_t.Nwchemdata_set_fence_float_positive_constructor
             "0.2311520")))),
    [2; 1; 2; 3; 2; 1; 2; 2; 2; 22; 5; 20; 2])]
);;

let str_flo_l = List.map Nwchemdata_tag_v.string_off tag_nwc_nff_l;;

let flo_l = List.map String_v.float_of_string str_flo_l ;;

test_number 7 (
(flo_l : float list ) = 
[2.28187; 0.231152]
);;

let mea_l = List_v.map (fun f -> Measure_v.make f uni_can) flo_l;;

test_number 8 (
(mea_l : (float, Units_t.units) Doublet_t.doublet list ) =
  [(2.28187,
    Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr));
   (0.231152,
    Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr))]
);;

test_number 9 (
mea_l = provide tag_pta
);;
