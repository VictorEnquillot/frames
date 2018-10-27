open Make_test_v;;

testing "Parameter_set_body_tuple_aopef_container_v with
   Parameter_set_body_tuple_aopef_container_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)


(* toplevel 
   #use "Parameter_set_body_tuple_aopef_container_u_any.ml";;

*)

open Parameter_set_body_tuple_aopef_container_v;;

let nam_dba = "nwchem";;
let nam_dbo = "cc_pVTZ";;

let tag_par_l = Parameter_tag_all_list_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;

let tag_par_pbo = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> 
      (Parameter_symbol_v.string_off s = nam_dbo)
	&&
      (Parameter_symbol_v.is_parameter_context_databox_constructor s)
    ) tag_par_l;;

test_number 1 (
(tag_par_pbo : Parameter_symbol_t.parameter_symbol Tag_t.tag ) =
  (Parameter_symbol_t.Parameter_context_symbol
    (Parameter_context_symbol_t.Parameter_context_databox_symbol
      (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
        "cc_pVTZ")),
   [13; 5; 16; 5])
);;

(* Argument Parameter_set_body_tuple_aopef_symbol ne 2 p 1 *)

let pre_tag_pta (s, i) = Parameter_symbol_v.is_parameter_set_body_tuple_aopef_symbol_off_parameter_symbol s;;
let pre_tag_pta_sof sof (s, i) = (Parameter_symbol_v.is_parameter_set_body_tuple_aopef_symbol_off_parameter_symbol s)
    && (Parameter_symbol_v.string_off s = sof);;

let tag_par_pta_l = List.filter pre_tag_pta tag_par_l;;

let sof_pta = "ne p 2 1";;

let tag_par_pta_nep21_l = List.filter (pre_tag_pta_sof sof_pta) tag_par_pta_l;;

let tag_pta_nep21_l = List.map
    (Tag_v.map_entity Parameter_symbol_v.parameter_set_body_tuple_aopef_symbol_off_parameter_symbol) tag_par_pta_nep21_l;;

test_number 2 (
(tag_par_pta_nep21_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol
     (Parameter_set_symbol_t.Parameter_set_body_symbol
       (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
         (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
           (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
             "ne p 2 1")))),
    [156; 13; 5; 16; 5])]
);;

let tag_par_pta = List_v.only_element_of_predicate_off_list (pre_tag_pta_sof sof_pta) tag_par_pta_l;;

test_number 3 (
( tag_par_pta : Parameter_symbol_t.parameter_symbol Tag_t.tag ) =
  (Parameter_symbol_t.Parameter_set_symbol
    (Parameter_set_symbol_t.Parameter_set_body_symbol
      (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
        (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
          (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
            "ne p 2 1")))),
   [156; 13; 5; 16; 5])
);;

let tag_pta = Tag_v.map_entity Parameter_symbol_v.parameter_set_body_tuple_aopef_symbol_off_parameter_symbol tag_par_pta;;

test_number 4 (
(tag_pta :
  Parameter_set_body_tuple_aopef_symbol_t.parameter_set_body_tuple_aopef_symbol
  Tag_t.tag ) =
  (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
    "ne p 2 1",
   [156; 13; 5; 16; 5])
);;

let con_pta = container_of_tag tag_pta;;

test_number 5 (
(con_pta :
  (Parameter_set_fence_aopef_exponent_symbol_t.parameter_set_fence_aopef_exponent_symbol
   Tag_t.tag,
   Parameter_set_fence_aopef_coefficient_symbol_t.parameter_set_fence_aopef_coefficient_symbol
   Tag_t.tag)
  Doublet_t.doublet ) =
  ((Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
     "ne p 2 1",
    [1; 156; 13; 5; 16; 5]),
   (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
     "ne p 2 1",
    [2; 156; 13; 5; 16; 5]))
);;

let fen_pta = Parameter_set_body_tuple_aopef_container_v.fence_as_list tag_pta;;

test_number 6 (
(fen_pta : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol
     (Parameter_set_symbol_t.Parameter_set_fence_symbol
       (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
         (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
           (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
             "ne p 2 1")))),
    [1; 156; 13; 5; 16; 5]);
   (Parameter_symbol_t.Parameter_set_symbol
     (Parameter_set_symbol_t.Parameter_set_fence_symbol
       (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
         (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
           (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
             "ne p 2 1")))),
    [2; 156; 13; 5; 16; 5])]
);;

