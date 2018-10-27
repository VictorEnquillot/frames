open Make_test_v;;

testing "Skeleton_tag_subtree_by_skeleton_context_datafile_tag_provider_v with
    Skeleton_tag_subtree_by_skeleton_context_datafile_tag_provider_u_lanl2dz.ml";;

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
   #use "Skeleton_tag_subtree_by_skeleton_tag_provider_u_lanl2dz.ml";; 

*)

(* Database file *)

let nam_bas = "lanl2dz";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "datafile-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

(* Debug *)

open Skeleton_tag_subtree_by_skeleton_tag_provider_v;;

let tag_prt_l = Skeleton_tag_all_list_by_basisset_name_provider_v.provide nam_bas;;

let tag_prt_sor = List.find 
    (fun (s, i) -> 
      (Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_one_shell_ordinal s)
	&&
      (Skeleton_symbol_v.string_off s = "ne p 3")
    )
    tag_prt_l
;; 

test_number 1 ( 
(tag_prt_sor : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_symbol
          (Skeleton_set_body_centered_aopef_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
            "ne p 3")))),
   [2; 2; 1; 1; 5; 5; 14])
);;

let tag_prt_sor_st = provide tag_prt_sor;;

test_number 2 (
( tag_prt_sor_st :
  Skeleton_symbol_t.skeleton_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Skeleton_symbol_t.Skeleton_symbol
      (Skeleton_symbol_t.Skeleton_set_body_symbol
        (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
          (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_symbol
            (Skeleton_set_body_centered_aopef_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
              "ne p 3")))),
     [2; 2; 1; 1; 5; 5; 14]),
   [Tree_t.Leaf
     (Skeleton_symbol_t.Skeleton_symbol
       (Skeleton_symbol_t.Skeleton_set_fence_symbol
         (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_aopef_constructor
           "ne p 3 1")),
      [1; 2; 2; 1; 1; 5; 5; 14])])
);;
