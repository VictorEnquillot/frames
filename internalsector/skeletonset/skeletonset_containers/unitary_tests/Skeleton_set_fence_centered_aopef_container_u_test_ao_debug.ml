open Make_test_v;;

testing "Skeleton_set_fence_centered_aopef_container_v with
    Skeleton_set_fence_centered_aopef_container_u_test_ao_debug.ml";;

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
   #use "Skeleton_set_fence_centered_aopef_container_u_test_ao_debug.ml";;

*)

(* Database file *)

let nam_bas = "test_ao";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "datafile-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

(* Debug *)
     
let tag_prt_l = Skeleton_tag_all_list_by_parameters_general_provider_v.provide () ;;

let tag_prt_ass = List.find 
    (fun (s, i) -> Skeleton_symbol_v.is_skeleton_set_fence_centered_aopef_constructor s)
    tag_prt_l;;

test_number 1 (
(tag_prt_ass : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_set_fence_symbol
    (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
      (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
        (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
          "he s 1 1"))),
   [1; 1; 1; 1; 1; 6; 5; 19])
);;

open Skeleton_set_fence_centered_aopef_container_v;;
     
(* Argument *)

let tag_pca = Tag_v.map_entity Skeleton_symbol_v.skeleton_set_fence_centered_aopef_symbol_off_skeleton_symbol tag_prt_ass;;

test_number 2 (  
(tag_pca :
  Skeleton_set_fence_centered_aopef_symbol_t.skeleton_set_fence_centered_aopef_symbol
  Tag_t.tag ) =
  (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
    "he s 1 1",
   [1; 1; 1; 1; 1; 6; 5; 19])
);;

(** {6 Coercing Up Tag} *)

let tag_bui_pca = builder_tag_of_containee_tag tag_pca;;

test_number 3 (
(tag_bui_pca : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_set_fence_symbol
    (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
      (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
        (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
          "he s 1 1"))),
   [1; 1; 1; 1; 1; 6; 5; 19])
);;

let tag_cne = containee_tag_off_builder_tag tag_prt_ass;;

test_number 4 (
(tag_cne :
  Skeleton_set_fence_centered_aopef_symbol_t.skeleton_set_fence_centered_aopef_symbol
  Tag_t.tag ) =
  (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
    "he s 1 1",
   [1; 1; 1; 1; 1; 6; 5; 19])
);;

(** {6 Builder Tag Datastructures : Building} *)

let bug_pca = building_of_tag tag_pca;;

test_number 5 (
( bug_pca : Skeleton_symbol_t.skeleton_symbol Tag_t.tag Uno_t.uno ) =
  (Skeleton_symbol_t.Skeleton_set_fence_symbol
    (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
      (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
        (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
          "he s 1 1"))),
   [1; 1; 1; 1; 1; 6; 5; 19])
);;

let bui_pca_u = builder_tag_uno tag_pca;;

test_number 6 (
(bui_pca_u : Skeleton_symbol_t.skeleton_symbol Tag_t.tag Uno_t.uno ) =
(Skeleton_symbol_t.Skeleton_set_fence_symbol
   (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
      (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
         (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
            "he s 1 1"))),
 [1; 1; 1; 1; 1; 6; 5; 19])
);;

let bui_pca_l = builder_tag_list tag_pca;;

test_number 7 (
(bui_pca_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_set_fence_symbol
     (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
       (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
         (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
           "he s 1 1"))),
    [1; 1; 1; 1; 1; 6; 5; 19])]
);;

let bui_pca_t = builder_tag_tuple tag_pca;;

test_number 8 (
(bui_pca_t :
  Skeleton_symbol_t.skeleton_symbol Tag_t.tag Uno_t.uno Tuple_t.tuple ) =
  Tuple_t.Uno
   (Skeleton_symbol_t.Skeleton_set_fence_symbol
     (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
       (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
         (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
           "he s 1 1"))),
    [1; 1; 1; 1; 1; 6; 5; 19])
);;

(** {6 Container_of_tag : Containee Datastructure} *)

let con_pca = container_of_tag tag_pca;;

test_number 9 (
(con_pca :
  Skeleton_set_fence_centered_aopef_symbol_t.skeleton_set_fence_centered_aopef_symbol
  Tag_t.tag Uno_t.uno ) =
  (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
    "he s 1 1",
   [1; 1; 1; 1; 1; 6; 5; 19])
);;

(** {6 Fence list *)

let fen_pca_l = fence_as_list tag_pca;;

test_number 10 (
(fen_pca_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_set_fence_symbol
     (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
       (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
         (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
           "he s 1 1"))),
    [1; 1; 1; 1; 1; 6; 5; 19])]
);;

let fen_pca_t = fence_as_tuple tag_pca;;

test_number 11 (
(fen_pca_t : Skeleton_symbol_t.skeleton_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Uno
   (Skeleton_symbol_t.Skeleton_set_fence_symbol
     (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
       (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
         (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
           "he s 1 1"))),
    [1; 1; 1; 1; 1; 6; 5; 19])
);;

let fen_pca_tl = fence_as_tuple_list tag_pca;;

test_number 12 (
(fen_pca_tl :
  Skeleton_symbol_t.skeleton_symbol Tag_t.tag Tuple_t.tuple list ) =
  [Tuple_t.Uno
    (Skeleton_symbol_t.Skeleton_set_fence_symbol
      (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
        (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
          (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
            "he s 1 1"))),
     [1; 1; 1; 1; 1; 6; 5; 19])]
);;

