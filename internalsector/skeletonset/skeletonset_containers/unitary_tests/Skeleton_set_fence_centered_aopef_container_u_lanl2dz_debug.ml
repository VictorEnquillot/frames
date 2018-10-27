open Make_test_v;;

testing "Skeleton_set_fence_centered_aopef_container_v with
    Skeleton_set_fence_centered_aopef_container_u_lanl2dz_debug.ml";;

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
   #use "Skeleton_set_fence_centered_aopef_container_u_lanl2dz_debug.ml";;

*)

(* Database file *)

let nam_bas = "lanl2dz";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "datafile-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

(* Debug *)
     
open Skeleton_set_fence_centered_aopef_container_v;;
     
let tag_prt_l = Skeleton_tag_all_list_by_parameters_general_provider_v.provide () ;;

let tag_prt_ass = List.find 
    (fun (s, i) -> Skeleton_symbol_v.is_skeleton_set_fence_centered_aopef_constructor s)
    tag_prt_l;;

test_number 1 (
(tag_prt_ass : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_fence_symbol
      (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
        (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
          (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_symbol
            (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
              "ne s 1 1"))))),
   [1; 1; 1; 1; 1; 5; 5; 19])
);;

let tag_pss = Tag_v.map_entity Skeleton_symbol_v.skeleton_set_fence_centered_aopef_symbol_off_skeleton_symbol tag_prt_ass;;

test_number 2 (  
(tag_pss :
  Skeleton_set_fence_centered_aopef_symbol_t.skeleton_set_fence_centered_aopef_symbol
  Tag_t.tag ) =
  (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
    "ne s 1 1",
   [1; 1; 1; 1; 1; 5; 5; 19])
);;

let con_ttt = container_of_tag tag_pss ;;

test_number 3 (
(con_ttt :
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

let tag_ele_bui_l =
  Doublet_v.map 
    (Tag_v.map_entity Elementary_symbol_v.elementary_symbol_of_elementary_functional_parameter_aopef_exponent_symbol)
    (Tag_v.map_entity Elementary_symbol_v.elementary_symbol_of_elementary_functional_parameter_aopef_coefficient_symbol)
    con_ttt;;  

test_number 4 (
(tag_ele_bui_l :
  (Elementary_symbol_t.elementary_symbol Tag_t.tag,
   Elementary_symbol_t.elementary_symbol Tag_t.tag)
   Doublet_t.doublet ) =
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

let fen_pss = fence_as_list tag_pss;;

test_number 5 (
(fen_pss : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
         (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
           (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_symbol
             (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
               "ne s 1 1"))))),
    [1; 1; 1; 1; 1; 5; 5; 19])]
);;

let fen_pss_t = fence_as_tuple tag_pss;;

test_number 6 (
(fen_pss_t : Skeleton_symbol_t.skeleton_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Uno
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
         (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
           (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_symbol
             (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
               "ne s 1 1"))))),
    [1; 1; 1; 1; 1; 5; 5; 19])
);;

let fen_pss_tl = fence_as_tuple_list tag_pss;;

test_number 7 (
(fen_pss_tl :
  Skeleton_symbol_t.skeleton_symbol Tag_t.tag Tuple_t.tuple list ) =
  [Tuple_t.Uno
    (Skeleton_symbol_t.Skeleton_symbol
      (Skeleton_symbol_t.Skeleton_set_fence_symbol
        (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
          (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
            (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_symbol
              (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
                "ne s 1 1"))))),
     [1; 1; 1; 1; 1; 5; 5; 19])]
);;
