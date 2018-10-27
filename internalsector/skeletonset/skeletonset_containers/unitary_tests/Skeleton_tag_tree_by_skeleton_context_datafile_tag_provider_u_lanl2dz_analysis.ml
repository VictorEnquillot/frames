open Make_test_v;;

testing "Skeleton_tag_tree_by_skeleton_context_datafile_tag_provider_v with
    Skeleton_tag_tree_by_skeleton_context_datafile_tag_provider_u_lanl2dz_analysis.ml";;

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
   #use "Skeleton_tag_tree_by_skeleton_context_datafile_tag_provider_u_lanl2dz_analysis.ml";; 

*)

(* Database file *)

let nam_dba = "nwchem";;
let nam_bas = "lanl2dz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "datafile-name" nam_bas;;

(* Basisset *)

let tag_pcb = Skeleton_context_datafile_tag_by_parameters_general_provider_v.provide ();;

test_number 1 (
(tag_pcb : Skeleton_context_datafile_symbol_t.skeleton_context_datafile_symbol Tag_t.tag ) =
  (Skeleton_context_datafile_symbol_t.Skeleton_context_datafile_constructor "lanl2dz",
   [5; 5; 19])
);;


(* Analysis *)

open Skeleton_tag_tree_by_skeleton_context_datafile_tag_provider_v;;

let tag_prt_t = provide tag_pcb;;

let tag_prt_tso_1l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) -> Skeleton_symbol_v.is_skeleton_context_datafile_constructor s)
    tag_prt_t;;

test_number 2 (
(tag_prt_tso_1l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_datafile_symbol
       (Skeleton_context_datafile_symbol_t.Skeleton_context_datafile_constructor
         "lanl2dz")),
    [5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_any_center
             "lanl2dz")))),
    [1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_ecppef
           "lanl2dz"))),
    [2; 5; 5; 19])]
);;

let tag_prt_tso_2l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) -> Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_any_center s)
    tag_prt_t;;

test_number 3 (
(tag_prt_tso_2l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_any_center
             "lanl2dz")))),
    [1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_center
             "ne")))),
    [1; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_center
             "au")))),
    [2; 1; 5; 5; 19])]
);;

(* Center "ne" *)

let tag_prt_tso_3l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    ( fun (s, i) -> 
      (Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_one_center s) 
	&&
      (Skeleton_symbol_v.string_off s = "ne")
     )
    tag_prt_t;;

test_number 4 ( 
(tag_prt_tso_3l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) = 
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_center
             "ne")))),
    [1; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry
             "ne s")))),
    [1; 1; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry
             "ne p")))),
    [2; 1; 1; 5; 5; 19])]
);;

(* Shell Symmetry "ne s" *)

let tag_prt_tso_4l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) -> (Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_one_shell_symmetry s) 
	&&
      (Skeleton_symbol_v.string_off s = "ne s")
    )
    tag_prt_t;;

test_number 5 ( 
(tag_prt_tso_4l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) = 
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry
             "ne s")))),
    [1; 1; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
             "ne s 1")))),
    [1; 1; 1; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
             "ne s 2")))),
    [2; 1; 1; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
             "ne s 3")))),
    [3; 1; 1; 1; 5; 5; 19])]
);;

(* Shell Ordinal "ne s 2" *)

let tag_prt_tso_5l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) -> ( Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_one_shell_ordinal s) 
	&&
      (Skeleton_symbol_v.string_off s = "ne s 2")
    )
    tag_prt_t;;

test_number 6 ( 
(tag_prt_tso_5l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) = 
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
             "ne s 2")))),
    [2; 1; 1; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
         (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
           (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_symbol
             (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
               "ne s 2 1"))))),
    [1; 2; 1; 1; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
         (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
           (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_symbol
             (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
               "ne s 2 2"))))),
    [2; 2; 1; 1; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
         (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
           (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_symbol
             (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
               "ne s 2 3"))))),
    [3; 2; 1; 1; 1; 5; 5; 19])]
);;

(* Center "au" *)

let tag_prt_tso_6l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) -> (Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_one_center s) 
	&&
      (Skeleton_symbol_v.string_off s = "au")
    )
    tag_prt_t;;

test_number 7 ( 
(tag_prt_tso_6l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) = 
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_center
             "au")))),
    [2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry
             "au s")))),
    [1; 2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry
             "au p")))),
    [2; 2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry
             "au d")))),
    [3; 2; 1; 5; 5; 19])]
);;

(* Shell Symmetry "au s" *)

let tag_prt_tso_7l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) -> (Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_one_shell_symmetry s) 
	&&
      (Skeleton_symbol_v.string_off s = "au s")
    )
    tag_prt_t;;

test_number 8 ( 
(tag_prt_tso_7l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) = 
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry
             "au s")))),
    [1; 2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
             "au s 1")))),
    [1; 1; 2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
             "au s 2")))),
    [2; 1; 2; 1; 5; 5; 19])]
);;

(* Shell Ordinal "au s 2" *)

let tag_prt_tso_8l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) -> (Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_one_shell_ordinal s) 
	&&
      (Skeleton_symbol_v.string_off s = "au s 2")
    )
    tag_prt_t;;

test_number 9 ( 
(tag_prt_tso_8l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) = 
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
             "au s 2")))),
    [2; 1; 2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
         (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
           (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_symbol
             (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
               "au s 2 1"))))),
    [1; 2; 1; 2; 1; 5; 5; 19])]
);;

(* Shell Symmetry "au p" *)

let tag_prt_tso_9l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) -> (Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_one_shell_symmetry s) 
	&&
      (Skeleton_symbol_v.string_off s = "au p")
    )
    tag_prt_t;;

test_number 10 ( 
(tag_prt_tso_9l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) = 
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry
             "au p")))),
    [2; 2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
             "au p 2")))),
    [1; 2; 2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
             "au p 3")))),
    [2; 2; 2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
             "au p 4")))),
    [3; 2; 2; 1; 5; 5; 19])]
);;

(* Shell Ordinal "au p 2" *)

let tag_prt_tso_10l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) -> (Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_one_shell_ordinal s) 
	&&
      (Skeleton_symbol_v.string_off s = "au p 2")
    )
    tag_prt_t;;

test_number 11 ( 
(tag_prt_tso_10l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) = 
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
           (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
             "au p 2")))),
    [1; 2; 2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
         (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
           (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_symbol
             (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
               "au p 2 1"))))),
    [1; 1; 2; 2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_set_fence_symbol
       (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
         (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
           (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_symbol
             (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
               "au p 2 2"))))),
    [2; 1; 2; 2; 1; 5; 5; 19])]
);;

(* Shell Ordinal "au p 2" *)

let tag_prt_tso_11l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) -> (Skeleton_symbol_v.is_skeleton_set_fence_centered_aopef_symbol_off_skeleton_symbol s) 
	&&
      (Skeleton_symbol_v.string_off s = "au p 2")
    )
    tag_prt_t;;

test_number 12 (
(tag_prt_tso_11l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) = 
[]
);;
