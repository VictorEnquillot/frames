open Make_test_v;;

testing "Skeleton_units_tag_deepfence_by_skeleton_tag_provider_v with
    Skeleton_units_tag_deepfence_by_skeleton_tag_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Basicname_databox_n_basicname_database_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Skeleton_fence_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_son_tag_list_by_skeleton_father_tag_register_v.register;;
Register_v.delete Skeleton_symbol_by_sole_index_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_subtree_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;





(* Tracing *)


(* toplevel 
   #use "Skeleton_units_tag_deepfence_by_skeleton_tag_provider_u_any.ml";;

*)

(* Database file *)

let nam_bas = "lanl2dz";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "databox-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

let tag_ske_l = Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide () ;;

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

open Skeleton_units_tag_deepfence_by_skeleton_tag_provider_v;;

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

let tag_ske_pff_1l = List.map
    Skeleton_as_functional_parameter_tuple_tag_by_skeleton_fence_tag_provider_v.provide
    tag_pff_1l;;

test_number 3 (
( tag_ske_pff_1l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list )=
  [(Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_functional_parameter_tuple_symbol
       (Skeleton_functional_parameter_tuple_symbol_t.Skeleton_functional_parameter_tuple_aopef_symbol
         (Skeleton_functional_parameter_tuple_aopef_symbol_t.Skeleton_functional_parameter_tuple_aopef_constructor
           "ne s 1 1"))),
    [1; 5; 5; 6]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_functional_parameter_tuple_symbol
       (Skeleton_functional_parameter_tuple_symbol_t.Skeleton_functional_parameter_tuple_aopef_symbol
         (Skeleton_functional_parameter_tuple_aopef_symbol_t.Skeleton_functional_parameter_tuple_aopef_constructor
           "ne s 1 2"))),
    [2; 5; 5; 6])]
);;

let tag_ske_fpt_l = List_v.map 
      Skeleton_deepfence_by_skeleton_tag_provider_v.provide 
      tag_ske_pff_1l;;

test_number 4 (
(tag_ske_fpt_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list list ) =
  [[(Skeleton_symbol_t.Skeleton_deepfence_symbol
      (Skeleton_deepfence_symbol_t.Skeleton_units_symbol
        (Skeleton_units_symbol_t.Skeleton_units_length_symbol
          Skeleton_units_length_symbol_t.Bohr)),
     [1; 1; 1; 5; 5; 6]);
    (Skeleton_symbol_t.Skeleton_deepfence_symbol
      (Skeleton_deepfence_symbol_t.Skeleton_units_symbol
        (Skeleton_units_symbol_t.Skeleton_units_length_symbol
          Skeleton_units_length_symbol_t.Bohr)),
     [1; 2; 1; 5; 5; 6])];
   [(Skeleton_symbol_t.Skeleton_deepfence_symbol
      (Skeleton_deepfence_symbol_t.Skeleton_units_symbol
        (Skeleton_units_symbol_t.Skeleton_units_length_symbol
          Skeleton_units_length_symbol_t.Bohr)),
     [1; 1; 2; 5; 5; 6]);
    (Skeleton_symbol_t.Skeleton_deepfence_symbol
      (Skeleton_deepfence_symbol_t.Skeleton_units_symbol
        (Skeleton_units_symbol_t.Skeleton_units_length_symbol
          Skeleton_units_length_symbol_t.Bohr)),
     [1; 2; 2; 5; 5; 6])]]
);;

let tag_ske_pff_l = List.map
      Skeleton_as_functional_parameter_tuple_tag_by_skeleton_fence_tag_provider_v.provide
      tag_pff_l;;

let dfe_uni = List_v.map 
      Skeleton_deepfence_by_skeleton_tag_provider_v.provide 
      tag_ske_pff_l
;;

let boo = dfe_uni = provide tag_ske;;

test_number 5 (
boo
);;
