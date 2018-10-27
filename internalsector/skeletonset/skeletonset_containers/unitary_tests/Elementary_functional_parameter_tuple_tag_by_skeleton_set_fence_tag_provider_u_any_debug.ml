open Make_test_v;;

testing "Elementary_as_functional_parameter_tuple_tag_by_skeleton_set_fence_tag_provider_v with
    Elementary_functional_parameter_tuple_tag_by_skeleton_set_fence_tag_provider_u_any_debug.ml";;

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

Parameters_general_register_v.store_force "trace-store" "true";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Elementary_functional_parameter_tuple_tag_by_skeleton_set_fence_tag_provider_u_any_debug.ml";; 

*)

let nam_bas = "lanl2dz";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "datafile-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

let tag_prt_l = Skeleton_tag_all_list_by_parameters_general_provider_v.provide () ;;

let tag_prt_pff = List.find 
    (fun (s, i) -> Skeleton_symbol_v.is_skeleton_set_fence_symbol_off_skeleton_symbol s)
    tag_prt_l;;

test_number 1 (  
(tag_prt_pff : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_fence_symbol
      (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
        (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
          (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_symbol
            (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
              "ne s 1 1"))))),
   [1; 1; 1; 1; 1; 5; 5; 19])
);;

let tag_pff = Tag_v.map_entity Skeleton_symbol_v.skeleton_set_fence_symbol_off_skeleton_symbol tag_prt_pff;;

test_number 2 ( 
( tag_pff :
  Skeleton_set_fence_symbol_t.skeleton_set_fence_symbol Tag_t.tag ) =
  (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
    (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
      (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_symbol
        (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
          "ne s 1 1"))),
   [1; 1; 1; 1; 1; 5; 5; 19])
);;

open Elementary_as_functional_parameter_tuple_tag_by_skeleton_set_fence_tag_provider_v;;

let sof_pff = Skeleton_set_fence_tag_v.string_off tag_pff;;

let soi_pff = Tag_v.sole_index_off_tag tag_pff;;

let nam_dba = 
    Skeleton_any_category_by_sole_index_extractor_v.skeleton_context_database_string_off_off_sole_index 
      soi_pff 
 ;;

let nam_bas = 
    Skeleton_any_category_by_sole_index_extractor_v.skeleton_context_datafile_string_off_off_sole_index 
    soi_pff 
;;

let tag_eba =
  Elementary_basisset_tag_by_database_name_n_basisset_name_provider_v.provide
    (nam_dba, nam_bas)
;;
  
let tag_ele_l = 
  Elementary_tag_all_list_by_elementary_basisset_tag_provider_v.provide
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
     (Elementary_context_symbol_t.Elementary_datafile_symbol
       (Elementary_datafile_symbol_t.Elementary_basisset_symbol
         (Elementary_basisset_symbol_t.Elementary_basisset_constructor
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

let sof_ele = Elementary_tag_v.string_off tag_ele_1;;  

test_number 5 (
(sof_ele : string ) = 
"ne s 1 1"
);;

let sof_pff = Skeleton_set_fence_tag_v.string_off tag_pff;;

test_number 6 (
(sof_pff : string ) = 
"ne s 1 1"
);;

;;

test_number 7 (
(tag_ele_fpt : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_functional_parameter_tuple_symbol
      (Elementary_functional_parameter_tuple_symbol_t.Elementary_functional_parameter_tuple_aopef_symbol
        (Elementary_functional_parameter_tuple_aopef_symbol_t.Elementary_functional_parameter_tuple_aopef_constructor
          "ne s 1 gaussian 1"))),
   [1; 5; 5; 6])
);;

let boo = tag_ele_fpt = provide tag_pff;;

test_number 8 (
boo
);;

