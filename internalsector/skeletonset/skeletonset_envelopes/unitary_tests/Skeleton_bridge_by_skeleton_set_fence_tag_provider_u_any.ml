open Make_test_v;;

testing "Skeleton_bridge_by_skeleton_set_fence_tag_provider_v with
    Skeleton_bridge_by_skeleton_set_fence_tag_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Skeleton_bridge_by_skeleton_set_fence_tag_provider_u_any.ml";; 

*)

open Skeleton_bridge_by_skeleton_set_fence_tag_provider_v;;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;

let tag_ske_l = Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide (nam_dbo, nam_dba);;

let tag_ske_hep21 = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> (Skeleton_symbol_v.is_skeleton_set_fence_centered_aopef_constructor s)
	&& (Skeleton_symbol_v.string_off s = "he p 2 2") 
    ) tag_ske_l;;

test_number 1 (
(tag_ske_hep21 : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_set_symbol
    (Skeleton_set_symbol_t.Skeleton_set_fence_symbol
      (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
        (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
          (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
            "he p 2 2")))),
   [2; 1; 2; 1; 1; 22; 5; 20; 5])
);;

let tag_ssf = Tag_v.map_entity Skeleton_symbol_v.skeleton_set_fence_symbol_off_skeleton_symbol tag_ske_hep21;;

test_number 2 (
(tag_ssf : Skeleton_set_fence_symbol_t.skeleton_set_fence_symbol Tag_t.tag ) =
  (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
    (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
      (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
        "he p 2 2")),
   [2; 1; 2; 1; 1; 22; 5; 20; 5])
);;

let sof_ssf = Skeleton_set_fence_tag_v.string_off tag_ssf;;

test_number 3 (
(sof_ssf : string ) = 
"he p 2 2"
);;

let soi_ssf = Tag_v.sole_index_off_tag tag_ssf;;

test_number 4 (
(soi_ssf : Sole_index_t.sole_index ) = 
[2; 1; 2; 1; 1; 22; 5; 20; 5]
);;

let tag_pbo = 
  Parameter_context_databox_tag_by_any_sole_index_provider_v.provide
    soi_ssf;;

test_number 5 (
(tag_pbo :
  Parameter_context_databox_symbol_t.parameter_context_databox_symbol
  Tag_t.tag ) =
  (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
    "try_ao",
   [22; 5; 20; 5])
);;

let tag_par_l = 
    Parameter_tag_all_list_by_parameter_context_databox_tag_provider_v.provide 
      tag_pbo;;

let pre_tag_ssf_sof sof (s, i) = 
    (Parameter_symbol_v.is_parameter_set_body_tuple_symbol_off_parameter_symbol s)
      && 
    (Parameter_symbol_v.string_off s = sof);;

let bri_hep21 = List_v.only_element_of_predicate_off_list 
    (pre_tag_ssf_sof sof_ssf) 
    tag_par_l;;

test_number 6 (
(bri_hep21 : Parameter_symbol_t.parameter_symbol Tag_t.tag ) =
  (Parameter_symbol_t.Parameter_set_symbol
    (Parameter_set_symbol_t.Parameter_set_body_symbol
      (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
        (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
          (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
            "he p 2 2")))),
   [5; 22; 5; 16; 5])
);;

test_number 7 (
bri_hep21 = provide tag_ssf
);;
