open Make_test_v;;

testing "Skeleton_tag_tree_by_unit_provider_v with
    Skeleton_tag_tree_by_unit_provider_u_any_debug.ml";;

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
   #use "Skeleton_tag_tree_by_unit_provider_u_any_debug.ml";; 

*)

(* Database file *)

let nam_bas = "lanl2dz";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "datafile-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

(* Debug *)

open Skeleton_tag_tree_by_unit_provider_v;;

let tag_prt_t = provide ();;

(* Top *)

let tag_prt_tso_l = Tree_v.node_filter_of_node_predicate_off_tree (fun (s, i) -> List.length i < 5) tag_prt_t;; 

test_number 1 (
( tag_prt_tso_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
 [(Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
       (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
         "")),
    [14]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_database_symbol
       (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
         "nwchem")),
    [5; 14]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_datafile_symbol
       (Skeleton_context_datafile_symbol_t.Skeleton_context_datafile_constructor
         "lanl2dz")),
    [5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_symbol
           (Skeleton_set_body_centered_aopef_symbol_t.Skeleton_set_body_centered_aopef_set_for_any_center
             "lanl2dz")))),
    [1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_ecppef
           "lanl2dz"))),
    [2; 5; 5; 14])]
);;

let tag_lea_l = Tree_v.leaf_node_list_off_tree tag_prt_t;;
let tag_fen_l = List.filter 
    (fun (s, i) -> 
      (Skeleton_symbol_v.is_skeleton_set_fence_symbol_off_skeleton_symbol s) 
	&&
      (List_v.is_substring_of_string_of_string (Skeleton_symbol_v.string_off s) "ne")
    )
    tag_lea_l;;

test_number 2 (
( tag_fen_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "ne s 1 1")),
    [1; 1; 1; 1; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "ne s 1 2")),
    [2; 1; 1; 1; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "ne s 1 3")),
    [3; 1; 1; 1; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "ne s 1 4")),
    [4; 1; 1; 1; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "ne s 2 1")),
    [1; 2; 1; 1; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "ne s 2 2")),
    [2; 2; 1; 1; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "ne s 2 3")),
    [3; 2; 1; 1; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "ne s 3 1")),
    [1; 3; 1; 1; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "ne p 2 1")),
    [1; 1; 2; 1; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "ne p 2 2")),
    [2; 1; 2; 1; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "ne p 3 1")),
    [1; 2; 2; 1; 1; 5; 5; 14])]
);;

let tag_fen_l = List.filter 
    (fun (s, i) -> 
      (Skeleton_symbol_v.is_skeleton_set_fence_symbol_off_skeleton_symbol s) 
	&&
      (List_v.is_substring_of_string_of_string (Skeleton_symbol_v.string_off s) "au")
    )
    tag_lea_l;;

test_number 3 (
( tag_fen_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "au s 1 1")),
    [1; 1; 1; 2; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "au s 1 2")),
    [2; 1; 1; 2; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "au s 1 3")),
    [3; 1; 1; 2; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "au s 2 1")),
    [1; 2; 1; 2; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "au p 2 1")),
    [1; 1; 2; 2; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "au p 2 2")),
    [2; 1; 2; 2; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "au p 3 1")),
    [1; 2; 2; 2; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "au p 3 2")),
    [2; 2; 2; 2; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "au p 4 1")),
    [1; 3; 2; 2; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "au d 3 1")),
    [1; 1; 3; 2; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "au d 3 2")),
    [2; 1; 3; 2; 1; 5; 5; 14]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
         "au d 4 1")),
    [1; 2; 3; 2; 1; 5; 5; 14])]
);;
