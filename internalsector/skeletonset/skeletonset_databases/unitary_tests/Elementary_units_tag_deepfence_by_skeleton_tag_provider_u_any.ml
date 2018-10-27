open Make_test_v;;

testing "Elementary_units_tag_deepfence_by_skeleton_tag_provider_v with
    Elementary_units_tag_deepfence_by_skeleton_tag_provider_u_any.ml";;

(* Deleting Registers *)





(* Tracing *)


(* toplevel 
   #use "Elementary_units_tag_deepfence_by_skeleton_tag_provider_u_any.ml";;

*)

(* Database file *)

let nam_bas = "lanl2dz";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "databox-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

let tag_ske_l = Skeleton_tag_all_list_by_database_name_n_databox_name_provider_v.provide () ;;

let tag_ske = List.find 
    (fun (s, i) -> Skeleton_symbol_v.is_skeleton_body_centered_aopefset_anycenter s)
    tag_ske_l;;

test_number 1 (  
(tag_ske : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_body_symbol
      (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
        (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
          (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_anycenter
            "lanl2dz")))),
   [1; 5; 5; 19])
);;

open Elementary_units_tag_deepfence_by_skeleton_tag_provider_v;;

let tag_fen = Skeleton_fence_by_skeleton_tag_provider_v.provide 
      tag_ske;;


let tag_pff_l = List.map 
    (Tag_v.map_entity
       Skeleton_symbol_v.skeleton_fence_symbol_off_skeleton_symbol)
    tag_fen;;

let tag_pff_1l = List_v.sublist_of_int_of_length_of_list 0 2 tag_pff_l;;

test_number 2 (
( tag_pff_1l :
  Skeleton_fence_symbol_t.skeleton_fence_symbol Tag_t.tag list ) =
  [(Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
     (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
       (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_single_scaled_symbol
         (Skeleton_fence_centered_aopef_single_scaled_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
           "ne s 1 1"))),
    [1; 1; 1; 1; 1; 5; 5; 19]);
   (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
     (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
       (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_single_scaled_symbol
         (Skeleton_fence_centered_aopef_single_scaled_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
           "ne s 1 2"))),
    [2; 1; 1; 1; 1; 5; 5; 19])]
);;

let tag_ele_pff_1l = List.map
    Elementary_as_functional_parameter_tuple_tag_by_skeleton_fence_tag_provider_v.provide
    tag_pff_1l;;

test_number 3 (
( tag_ele_pff_1l : Elementary_symbol_t.elementary_symbol Tag_t.tag list )=
  [(Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_functional_parameter_tuple_symbol
       (Elementary_functional_parameter_tuple_symbol_t.Elementary_functional_parameter_tuple_aopef_symbol
         (Elementary_functional_parameter_tuple_aopef_symbol_t.Elementary_functional_parameter_tuple_aopef_constructor
           "ne s 1 1"))),
    [1; 5; 5; 6]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_functional_parameter_tuple_symbol
       (Elementary_functional_parameter_tuple_symbol_t.Elementary_functional_parameter_tuple_aopef_symbol
         (Elementary_functional_parameter_tuple_aopef_symbol_t.Elementary_functional_parameter_tuple_aopef_constructor
           "ne s 1 2"))),
    [2; 5; 5; 6])]
);;

let tag_ele_fpt_l = List_v.map 
      Elementary_deepfence_by_elementary_tag_provider_v.provide 
      tag_ele_pff_1l;;

test_number 4 (
(tag_ele_fpt_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list list ) =
  [[(Elementary_symbol_t.Elementary_deepfence_symbol
      (Elementary_deepfence_symbol_t.Elementary_units_symbol
        (Elementary_units_symbol_t.Elementary_units_length_symbol
          Elementary_units_length_symbol_t.Bohr)),
     [1; 1; 1; 5; 5; 6]);
    (Elementary_symbol_t.Elementary_deepfence_symbol
      (Elementary_deepfence_symbol_t.Elementary_units_symbol
        (Elementary_units_symbol_t.Elementary_units_length_symbol
          Elementary_units_length_symbol_t.Bohr)),
     [1; 2; 1; 5; 5; 6])];
   [(Elementary_symbol_t.Elementary_deepfence_symbol
      (Elementary_deepfence_symbol_t.Elementary_units_symbol
        (Elementary_units_symbol_t.Elementary_units_length_symbol
          Elementary_units_length_symbol_t.Bohr)),
     [1; 1; 2; 5; 5; 6]);
    (Elementary_symbol_t.Elementary_deepfence_symbol
      (Elementary_deepfence_symbol_t.Elementary_units_symbol
        (Elementary_units_symbol_t.Elementary_units_length_symbol
          Elementary_units_length_symbol_t.Bohr)),
     [1; 2; 2; 5; 5; 6])]]
);;

let tag_ele_pff_l = List.map
      Elementary_as_functional_parameter_tuple_tag_by_skeleton_fence_tag_provider_v.provide
      tag_pff_l;;

let dfe_uni = List_v.map 
      Elementary_deepfence_by_elementary_tag_provider_v.provide 
      tag_ele_pff_l
;;

let boo = dfe_uni = provide tag_ske;;

test_number 5 (
boo
);;
