open Make_test_v;;

testing "Elementary_functional_parameter_aopef_exponent_n_elementary_functional_parameter_aopef_coefficient_tag_doublet_by_skeleton_fence_centered_aopef_single_scaled_tag_provider_v with
    Elementary_functional_parameter_aopef_exponent_n_elementary_functional_parameter_aopef_coefficient_tag_doublet_by_skeleton_fence_centered_aopef_single_scaled_tag_provider_u_any.ml";;

(* Deleting Registers *)





(* Tracing *)


(* toplevel 
   #use "Elementary_functional_parameter_aopef_exponent_n_elementary_functional_parameter_aopef_coefficient_tag_doublet_by_skeleton_fence_centered_aopef_single_scaled_tag_provider_u_any.ml";;

*)

let nam_bas = "lanl2dz";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "databox-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

let tag_ske_l = Skeleton_tag_all_list_by_database_name_n_databox_name_provider_v.provide () ;;

let tag_ske_pss = List.find 
    (fun (s, i) -> Skeleton_symbol_v.is_skeleton_fence_centered_aopef_single_scaled_symbol_off_skeleton_symbol s)
    tag_ske_l;;

test_number 1 (  
(tag_ske_pss : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_fence_symbol
      (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
        (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
          (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_single_scaled_symbol
            (Skeleton_fence_centered_aopef_single_scaled_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
              "ne s 1 1"))))),
   [1; 1; 1; 1; 1; 5; 5; 19])
);;

let tag_pss = Tag_v.map_entity Skeleton_symbol_v.skeleton_fence_centered_aopef_single_scaled_symbol_off_skeleton_symbol tag_ske_pss;;

test_number 2 ( 
( tag_pss :
  Skeleton_fence_centered_aopef_single_scaled_symbol_t.skeleton_fence_centered_aopef_single_scaled_symbol
  Tag_t.tag ) =
  (Skeleton_fence_centered_aopef_single_scaled_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
    "ne s 1 1",
   [1; 1; 1; 1; 1; 5; 5; 19])
);;

open Elementary_functional_parameter_aopef_exponent_n_elementary_functional_parameter_aopef_coefficient_tag_doublet_by_skeleton_fence_centered_aopef_single_scaled_tag_provider_v;;

let tag_pff = Tag_v.map_entity 
      Skeleton_fence_symbol_v.skeleton_fence_symbol_of_skeleton_fence_centered_aopef_single_scaled_symbol
      tag_pss;;

test_number 3 (
(tag_pff :
  Skeleton_fence_symbol_t.skeleton_fence_symbol Tag_t.tag ) =
  (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
    (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
      (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_single_scaled_symbol
        (Skeleton_fence_centered_aopef_single_scaled_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
          "ne s 1 1"))),
   [1; 1; 1; 1; 1; 5; 5; 19])
);;

let tag_ele_fpt =
    Elementary_as_functional_parameter_tuple_tag_by_skeleton_fence_tag_provider_v.provide
      tag_pff;;

test_number 4 (
(tag_ele_fpt : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_functional_parameter_tuple_symbol
      (Elementary_functional_parameter_tuple_symbol_t.Elementary_functional_parameter_tuple_aopef_symbol
        (Elementary_functional_parameter_tuple_aopef_symbol_t.Elementary_functional_parameter_tuple_aopef_constructor
          "ne s 1 1"))),
   [1; 5; 5; 6])
);;

let fen_ele_fpt = Elementary_fence_by_elementary_tag_provider_v.provide tag_ele_fpt;;

test_number 5 (
( fen_ele_fpt : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_functional_parameter_symbol
       (Elementary_functional_parameter_symbol_t.Elementary_functional_parameter_aopef_symbol
         (Elementary_functional_parameter_aopef_symbol_t.Elementary_functional_parameter_aopef_coefficient_symbol
           (Elementary_functional_parameter_aopef_coefficient_symbol_t.Elementary_functional_parameter_aopef_coefficient_constructor
             "ne s 1 1")))),
    [1; 1; 5; 5; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_functional_parameter_symbol
       (Elementary_functional_parameter_symbol_t.Elementary_functional_parameter_aopef_symbol
         (Elementary_functional_parameter_aopef_symbol_t.Elementary_functional_parameter_aopef_exponent_symbol
           (Elementary_functional_parameter_aopef_exponent_symbol_t.Elementary_functional_parameter_aopef_exponent_constructor
             "ne s 1 1")))),
    [2; 1; 5; 5; 6])]
);;

let tag_ele_eco = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Elementary_symbol_v.is_elementary_functional_parameter_aopef_coefficient_constructor s)
    ) 
    fen_ele_fpt;;

let tag_eco = Tag_v.map_entity 
      Elementary_symbol_v.elementary_functional_parameter_aopef_coefficient_symbol_off_elementary_symbol
      tag_ele_eco;;

test_number 6 (
(tag_eco :
  Elementary_functional_parameter_aopef_coefficient_symbol_t.elementary_functional_parameter_aopef_coefficient_symbol
  Tag_t.tag ) =
  (Elementary_functional_parameter_aopef_coefficient_symbol_t.Elementary_functional_parameter_aopef_coefficient_constructor
    "ne s 1 1",
   [1; 1; 5; 5; 6])
);;

let tag_ele_eex = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Elementary_symbol_v.is_elementary_functional_parameter_aopef_exponent_constructor s)
    )
    fen_ele_fpt;;

let tag_eex = Tag_v.map_entity 
      Elementary_symbol_v.elementary_functional_parameter_aopef_exponent_symbol_off_elementary_symbol
      tag_ele_eex;;

test_number 7 (
(tag_eex :
  Elementary_functional_parameter_aopef_exponent_symbol_t.elementary_functional_parameter_aopef_exponent_symbol
  Tag_t.tag ) =
  (Elementary_functional_parameter_aopef_exponent_symbol_t.Elementary_functional_parameter_aopef_exponent_constructor
    "ne s 1 1",
   [2; 1; 5; 5; 6])
);;

let tag_ele_d = (tag_eex, tag_eco);;

test_number 8 ( 
(tag_ele_d :
  Elementary_functional_parameter_aopef_exponent_symbol_t.elementary_functional_parameter_aopef_exponent_symbol
  Tag_t.tag *
  Elementary_functional_parameter_aopef_coefficient_symbol_t.elementary_functional_parameter_aopef_coefficient_symbol
  Tag_t.tag ) =
  ((Elementary_functional_parameter_aopef_exponent_symbol_t.Elementary_functional_parameter_aopef_exponent_constructor
     "ne s 1 1",
    [2; 1; 5; 5; 6]),
   (Elementary_functional_parameter_aopef_coefficient_symbol_t.Elementary_functional_parameter_aopef_coefficient_constructor
     "ne s 1 1",
    [1; 1; 5; 5; 6]))
 );;

let boo = tag_ele_d = provide tag_pss;;

test_number 9 (
boo
);;
