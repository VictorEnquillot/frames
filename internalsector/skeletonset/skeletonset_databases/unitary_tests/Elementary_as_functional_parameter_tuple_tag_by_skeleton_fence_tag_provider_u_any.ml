open Make_test_v;;

testing "Elementary_as_functional_parameter_tuple_tag_by_skeleton_fence_tag_provider_v with
    Elementary_as_functional_parameter_tuple_tag_by_skeleton_fence_tag_provider_u_any.ml";;

(* Deleting Registers *)





(* Tracing *)


(* toplevel 
   #use "Elementary_as_functional_parameter_tuple_tag_by_skeleton_fence_tag_provider_u_any.ml";; 

*)

let nam_bas = "lanl2dz";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "databox-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

let tag_ske_l = Skeleton_tag_all_list_by_database_name_n_databox_name_provider_v.provide () ;;

let tag_ske_pff = List.find 
    (fun (s, i) -> Skeleton_symbol_v.is_skeleton_fence_symbol_off_skeleton_symbol s)
    tag_ske_l;;

test_number 1 (  
(tag_ske_pff : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_fence_symbol
      (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
        (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
          (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_single_scaled_symbol
            (Skeleton_fence_centered_aopef_single_scaled_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
              "ne s 1 1"))))),
   [1; 1; 1; 1; 1; 5; 5; 19])
);;

let tag_pff = Tag_v.map_entity Skeleton_symbol_v.skeleton_fence_symbol_off_skeleton_symbol tag_ske_pff;;

test_number 2 ( 
( tag_pff :
  Skeleton_fence_symbol_t.skeleton_fence_symbol Tag_t.tag ) =
  (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
    (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
      (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_single_scaled_symbol
        (Skeleton_fence_centered_aopef_single_scaled_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
          "ne s 1 1"))),
   [1; 1; 1; 1; 1; 5; 5; 19])
);;

open Elementary_as_functional_parameter_tuple_tag_by_skeleton_fence_tag_provider_v;;

let sof_pff = Skeleton_fence_tag_v.string_off tag_pff;;

let soi_pff = Tag_v.sole_index_off_tag tag_pff;;

let nam_dba = 
    Skeleton_any_category_by_sole_index_extractor_v.skeleton_context_database_string_off_off_sole_index 
    soi_pff 
;;

let nam_bas = 
    Skeleton_any_category_by_sole_index_extractor_v.skeleton_context_databox_string_off_off_sole_index 
    soi_pff 
;;

let tag_eba =
  Elementary_context_databox_tag_by_database_name_n_databox_name_provider_v.provide
    (nam_dba, nam_bas)
;;
  
let tag_ele_l = 
  Elementary_tag_all_list_by_elementary_context_databox_tag_provider_v.provide
    tag_eba 
;;

let tag_ele_1l = List_v.sublist_of_int_of_length_of_list 0 6 tag_ele_l;;

test_number 3 (
(tag_ele_1l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
 [(Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_domain_symbol
       (Elementary_domain_symbol_t.Elementary_domain_constructor "elementary")),
    [6]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_database_symbol
       (Elementary_database_symbol_t.Elementary_database_constructor "nwchem")),
    [5; 6]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_databox_symbol
       (Elementary_context_databox_symbol_t.Elementary_context_databox_symbol
         (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
           "lanl2dz"))),
    [5; 5; 6]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_functional_parameter_tuple_symbol
       (Elementary_functional_parameter_tuple_symbol_t.Elementary_functional_parameter_tuple_aopef_symbol
         (Elementary_functional_parameter_tuple_aopef_symbol_t.Elementary_functional_parameter_tuple_aopef_constructor
           "ne s 1 1"))),
    [1; 5; 5; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_functional_parameter_symbol
       (Elementary_functional_parameter_symbol_t.Elementary_functional_parameter_aopef_symbol
         (Elementary_functional_parameter_aopef_symbol_t.Elementary_functional_parameter_aopef_coefficient_symbol
           (Elementary_functional_parameter_aopef_coefficient_symbol_t.Elementary_functional_parameter_aopef_coefficient_constructor
             "ne s 1 1")))),
    [1; 1; 5; 5; 6]);
   (Elementary_symbol_t.Elementary_deepfence_symbol
     (Elementary_deepfence_symbol_t.Elementary_units_symbol
       (Elementary_units_symbol_t.Elementary_units_length_symbol
         Elementary_units_length_symbol_t.Bohr)),
    [1; 1; 1; 5; 5; 6])]

);;

let tag_ele_1 = List.find 
    (fun (s, i) -> (Elementary_symbol_v.is_elementary_functional_parameter_tuple_symbol_off_elementary_symbol s))
    tag_ele_1l;;

test_number 4 (
( tag_ele_1 : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_functional_parameter_tuple_symbol
      (Elementary_functional_parameter_tuple_symbol_t.Elementary_functional_parameter_tuple_aopef_symbol
        (Elementary_functional_parameter_tuple_aopef_symbol_t.Elementary_functional_parameter_tuple_aopef_constructor
          "ne s 1 1"))),
   [1; 5; 5; 6])
);;

let tag_ele_fpt_l = List.filter 
      (fun (s, i) -> 
	(Elementary_symbol_v.is_elementary_functional_parameter_tuple_symbol_off_elementary_symbol s)
      ) 
      tag_ele_l;;

let tag_ele_fpt = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Elementary_symbol_v.string_off s = sof_pff)
    ) 
    tag_ele_fpt_l;;

test_number 5 (
(tag_ele_fpt : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_functional_parameter_tuple_symbol
      (Elementary_functional_parameter_tuple_symbol_t.Elementary_functional_parameter_tuple_aopef_symbol
        (Elementary_functional_parameter_tuple_aopef_symbol_t.Elementary_functional_parameter_tuple_aopef_constructor
          "ne s 1 1"))),
   [1; 5; 5; 6])
);;


let boo = tag_ele_fpt = provide tag_pff;;

test_number 6 (
boo
);;

