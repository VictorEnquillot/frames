open Make_test_v;;

testing "Elementary_units_tag_deepfence_by_skeleton_tag_provider_v with
    Elementary_units_tag_deepfence_by_skeleton_tag_provider_u_any_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_index_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_deepfence_by_elementary_tag_register_v.register;;
Register_v.delete  Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_elementary_basisset_tag_register_v.register;;
Register_v.delete  Elementary_tag_tree_by_elementary_tag_register_v.register;;
Register_v.delete  Nwchem_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_lexer_symbol_reverse_list_by_database_fullnameoffile_register_v.register;;
Register_v.delete  Nwchem_symbol_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_nwchem_context_basisset_tag_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Skeleton_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Skeleton_symbol_by_sole_index_register_v.register;;
Register_v.delete  Skeleton_tag_all_list_by_skeleton_context_datafile_tag_register_v.register;;
Register_v.delete  Skeleton_tag_subtree_by_skeleton_tag_register_v.register;;
Register_v.delete  Son_nwchem_tag_list_by_father_nwchem_tag_register_v.register;;


(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Elementary_units_tag_deepfence_by_skeleton_tag_provider_u_any_debug.ml";;

*)

(* Database file *)

let nam_bas = "lanl2dz";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "datafile-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

let tag_prt_l = Skeleton_tag_all_list_by_parameters_general_provider_v.provide () ;;

let tag_prt = List.find 
    (fun (s, i) -> Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_any_center s)
    tag_prt_l;;

test_number 1 (  
(tag_prt : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_any_center
            "lanl2dz")))),
   [1; 5; 5; 19])
);;

open Elementary_units_tag_deepfence_by_skeleton_tag_provider_v;;

let tag_fen = Skeleton_tag_fence_by_skeleton_tag_provider_v.provide 
      tag_prt;;


let tag_pff_l = List.map 
    (Tag_v.map_entity
       Skeleton_symbol_v.skeleton_set_fence_symbol_off_skeleton_symbol)
    tag_fen;;

let tag_pff_1l = List_v.sublist_of_int_of_length_of_list 0 2 tag_pff_l;;

test_number 2 (
( tag_pff_1l :
  Skeleton_set_fence_symbol_t.skeleton_set_fence_symbol Tag_t.tag list ) =
  [(Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
     (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
       (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_symbol
         (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
           "ne s 1 1"))),
    [1; 1; 1; 1; 1; 5; 5; 19]);
   (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
     (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
       (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_symbol
         (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
           "ne s 1 2"))),
    [2; 1; 1; 1; 1; 5; 5; 19])]
);;

let tag_ele_pff_1l = List.map
    Elementary_as_functional_parameter_tuple_tag_by_skeleton_set_fence_tag_provider_v.provide
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
      Elementary_as_functional_parameter_tuple_tag_by_skeleton_set_fence_tag_provider_v.provide
      tag_pff_l;;

let dfe_uni = List_v.map 
      Elementary_deepfence_by_elementary_tag_provider_v.provide 
      tag_ele_pff_l
;;

let boo = dfe_uni = provide tag_prt;;

test_number 5 (
boo
);;
