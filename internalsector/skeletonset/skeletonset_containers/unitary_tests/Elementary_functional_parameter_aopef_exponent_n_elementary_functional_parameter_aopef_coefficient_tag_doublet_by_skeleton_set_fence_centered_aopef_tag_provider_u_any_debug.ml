open Make_test_v;;

testing "Elementary_functional_parameter_aopef_exponent_n_elementary_functional_parameter_aopef_coefficient_tag_doublet_by_skeleton_set_fence_centered_aopef_tag_provider_v with
    Elementary_functional_parameter_aopef_exponent_n_elementary_functional_parameter_aopef_coefficient_tag_doublet_by_skeleton_set_fence_centered_aopef_tag_provider_u_any_debug.ml";;

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
   #use "Elementary_functional_parameter_aopef_exponent_n_elementary_functional_parameter_aopef_coefficient_tag_doublet_by_skeleton_set_fence_centered_aopef_tag_provider_u_any_debug.ml";;

*)

let nam_bas = "lanl2dz";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "datafile-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

let tag_prt_l = Skeleton_tag_all_list_by_parameters_general_provider_v.provide () ;;

let tag_prt_pss = List.find 
    (fun (s, i) -> Skeleton_symbol_v.is_skeleton_set_fence_centered_aopef_symbol_off_skeleton_symbol s)
    tag_prt_l;;

test_number 1 (  
(tag_prt_pss : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_fence_symbol
      (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
        (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
          (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_symbol
            (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
              "ne s 1 1"))))),
   [1; 1; 1; 1; 1; 5; 5; 19])
);;

let tag_pss = Tag_v.map_entity Skeleton_symbol_v.skeleton_set_fence_centered_aopef_symbol_off_skeleton_symbol tag_prt_pss;;

test_number 2 ( 
( tag_pss :
  Skeleton_set_fence_centered_aopef_symbol_t.skeleton_set_fence_centered_aopef_symbol
  Tag_t.tag ) =
  (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
    "ne s 1 1",
   [1; 1; 1; 1; 1; 5; 5; 19])
);;

open Elementary_functional_parameter_aopef_exponent_n_elementary_functional_parameter_aopef_coefficient_tag_doublet_by_skeleton_set_fence_centered_aopef_tag_provider_v;;

let tag_pff = Tag_v.map_entity 
      Skeleton_set_fence_symbol_v.skeleton_set_fence_symbol_of_skeleton_set_fence_centered_aopef_symbol
      tag_pss;;

test_number 3 (
(tag_pff :
  Skeleton_set_fence_symbol_t.skeleton_set_fence_symbol Tag_t.tag ) =
  (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
    (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
      (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_symbol
        (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
          "ne s 1 1"))),
   [1; 1; 1; 1; 1; 5; 5; 19])
);;

let tag_ele_fpt =
    Elementary_as_functional_parameter_tuple_tag_by_skeleton_set_fence_tag_provider_v.provide
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

let tag_eco = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Elementary_symbol_v.is_elementary_functional_parameter_aopef_coefficient_constructor s)
    ) 
    fen_ele_fpt;;

test_number 6 (
(tag_eco : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_functional_parameter_symbol
      (Elementary_functional_parameter_symbol_t.Elementary_functional_parameter_aopef_symbol
        (Elementary_functional_parameter_aopef_symbol_t.Elementary_functional_parameter_aopef_coefficient_symbol
          (Elementary_functional_parameter_aopef_coefficient_symbol_t.Elementary_functional_parameter_aopef_coefficient_constructor
            "ne s 1 1")))),
   [1; 1; 5; 5; 6])
);;

let tag_eex = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Elementary_symbol_v.is_elementary_functional_parameter_aopef_exponent_constructor s)
    )
    fen_ele_fpt;;

test_number 7 (
(tag_eex : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_functional_parameter_symbol
      (Elementary_functional_parameter_symbol_t.Elementary_functional_parameter_aopef_symbol
        (Elementary_functional_parameter_aopef_symbol_t.Elementary_functional_parameter_aopef_exponent_symbol
          (Elementary_functional_parameter_aopef_exponent_symbol_t.Elementary_functional_parameter_aopef_exponent_constructor
            "ne s 1 1")))),
   [2; 1; 5; 5; 6])
);;

let tag_ele_d = (tag_eex, tag_eco);;

test_number 8 ( 
(tag_ele_d :
  Elementary_symbol_t.elementary_symbol Tag_t.tag *
  Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  ((Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_functional_parameter_symbol
	 (Elementary_functional_parameter_symbol_t.Elementary_functional_parameter_aopef_symbol
            (Elementary_functional_parameter_aopef_symbol_t.Elementary_functional_parameter_aopef_exponent_symbol
               (Elementary_functional_parameter_aopef_exponent_symbol_t.Elementary_functional_parameter_aopef_exponent_constructor
		  "ne s 1 1")))),
    [2; 1; 5; 5; 6]),
   (Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_functional_parameter_symbol
	 (Elementary_functional_parameter_symbol_t.Elementary_functional_parameter_aopef_symbol
            (Elementary_functional_parameter_aopef_symbol_t.Elementary_functional_parameter_aopef_coefficient_symbol
               (Elementary_functional_parameter_aopef_coefficient_symbol_t.Elementary_functional_parameter_aopef_coefficient_constructor
		  "ne s 1 1")))),
    [1; 1; 5; 5; 6]))
 );;

let boo = tag_ele_d = provide tag_pss;;

test_number 8 (
boo
);;
