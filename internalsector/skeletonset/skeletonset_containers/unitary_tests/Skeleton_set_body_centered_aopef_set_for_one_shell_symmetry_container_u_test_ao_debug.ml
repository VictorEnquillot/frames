open Make_test_v;;

testing "Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry_container_v with
    Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry_container_u_test_ao_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_index_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Debug_by_module_name_register_v.register;;
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
   #use "Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry_container_u_test_ao_debug.ml";;

*)

(* Database file *)

let nam_bas = "test_ao";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "datafile-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

(* Debug *)
     
let tag_prt_l = Skeleton_tag_all_list_by_parameters_general_provider_v.provide () ;;

let pre_tag_pss_sof sof (s, i) = 
  (Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_one_shell_symmetry_symbol_off_skeleton_symbol s)
    && 
  (Skeleton_symbol_v.string_off s = sof)
;;
 
let sof_pss = "he s";;
let tag_prt_pss = List_v.only_element_of_predicate_off_list (pre_tag_pss_sof sof_pss) tag_prt_l;;

test_number 1 (
(tag_prt_pss : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_set_body_symbol
    (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
      (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
        (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry_symbol
          (Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry_constructor
            "he s")))),
   [1; 1; 1; 6; 5; 19])
);;

open Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry_container_v;;

(* Argument *)

let tag_pss = Tag_v.map_entity Skeleton_symbol_v.skeleton_set_body_centered_aopef_set_for_one_shell_symmetry_symbol_off_skeleton_symbol tag_prt_pss;;

test_number 2 (  
( tag_pss :
  Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry_symbol_t.skeleton_set_body_centered_aopef_set_for_one_shell_symmetry_symbol
  Tag_t.tag ) =
  (Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry_constructor
    "he s",
   [1; 1; 1; 6; 5; 19])
);;

(** {6 Coercing Up Tag} *)

test_number 3 (
tag_prt_pss = coerce_up_tag tag_pss
);;

(** {6 Builder Tag Datastructures : Building} *)

let bug_pss = building_of_tag tag_pss;;

test_number 4 (
(bug_pss :
  (Skeleton_symbol_t.skeleton_symbol, Sole_index_t.sole_index)
  Doublet_list_t.doublet_list ) =
  [(Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
       (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
         (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal_symbol
           (Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal_constructor
             "he s 2")))),
    [2; 1; 1; 1; 6; 5; 19]);
   (Skeleton_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
       (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
         (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal_symbol
           (Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal_constructor
             "he s 1")))),
    [1; 1; 1; 1; 6; 5; 19])]
);;

let bui_t = builder_tag_tuple tag_pss ;;

test_number 5 (
(bui_t :
  (Skeleton_symbol_t.skeleton_symbol, Sole_index_t.sole_index)
  Doublet_t.doublet Tuple_t.tuple ) =
  Tuple_t.Duo
   ((Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal_symbol
            (Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal_constructor
              "he s 2")))),
     [2; 1; 1; 1; 6; 5; 19]),
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal_symbol
            (Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal_constructor
              "he s 1")))),
     [1; 1; 1; 1; 6; 5; 19]))
);;

(** {6 Container_of_tag : Containee Datastructure} *)

let con_pss = container_of_tag tag_pss ;;

test_number 6 (
( con_pss : Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal_symbol_t.skeleton_set_body_centered_aopef_set_for_one_shell_ordinal_symbol Tag_t.tag list ) =
  [(Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal_constructor
     "he s 2",
    [2; 1; 1; 1; 6; 5; 19]);
   (Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal_constructor
     "he s 1",
    [1; 1; 1; 1; 6; 5; 19])]
);;

(** {6 Fence list *)

let fen_pss_l = fence_as_list tag_pss;;

test_number 7 (
(fen_pss_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_set_fence_symbol
     (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
       (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
         (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
           "he s 1 1"))),
    [1; 1; 1; 1; 1; 6; 5; 19]);
   (Skeleton_symbol_t.Skeleton_set_fence_symbol
     (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
       (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
         (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
           "he s 1 2"))),
    [2; 1; 1; 1; 1; 6; 5; 19]);
   (Skeleton_symbol_t.Skeleton_set_fence_symbol
     (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
       (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
         (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
           "he s 2 1"))),
    [1; 2; 1; 1; 1; 6; 5; 19])]
);;

let fen_pss_t = fence_as_tuple tag_pss;;

test_number 8 (
(fen_pss_t : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list Tuple_t.tuple ) =
  Tuple_t.Duo
   ([(Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
         (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
           (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
             "he s 2 1"))),
      [1; 2; 1; 1; 1; 6; 5; 19])],
    [(Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
         (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
           (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
             "he s 1 1"))),
      [1; 1; 1; 1; 1; 6; 5; 19]);
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
         (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
           (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
             "he s 1 2"))),
      [2; 1; 1; 1; 1; 6; 5; 19])])
);;

let fen_pss_tl = fence_as_tuple_list tag_pss;;

test_number 9 (
(fen_pss_tl :
  Skeleton_symbol_t.skeleton_symbol Tag_t.tag list Tuple_t.tuple list) =
  [Tuple_t.Uno
    [(Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
         (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
           (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
             "he s 2 1"))),
      [1; 2; 1; 1; 1; 6; 5; 19])];
   Tuple_t.Duo
    ([(Skeleton_symbol_t.Skeleton_set_fence_symbol
        (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
          (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
            (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
              "he s 1 1"))),
       [1; 1; 1; 1; 1; 6; 5; 19])],
     [(Skeleton_symbol_t.Skeleton_set_fence_symbol
        (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
          (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
            (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
              "he s 1 2"))),
       [2; 1; 1; 1; 1; 6; 5; 19])])]
);;

