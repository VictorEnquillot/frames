open Make_test_v;;

testing "Skeleton_symbol_subtree_by_skeleton_context_datafile_tag_provider_v with
    Skeleton_symbol_subtree_by_skeleton_context_datafile_tag_provider_u_lanl2dz_analysis.ml";;

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
   #use "Skeleton_symbol_subtree_by_skeleton_context_datafile_tag_provider_u_lanl2dz_analysis.ml";; 

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

open Skeleton_symbol_subtree_by_skeleton_context_datafile_tag_provider_v;;

let sym_prt_st = provide tag_pcb;;

let sym_prt_tso_1l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree Skeleton_symbol_v.is_skeleton_context_datafile_constructor sym_prt_st;;

test_number 2 (
(sym_prt_tso_1l : Skeleton_symbol_t.skeleton_symbol list ) =
[Skeleton_symbol_t.Skeleton_context_symbol
   (Skeleton_context_symbol_t.Skeleton_context_datafile_symbol
      (Skeleton_context_datafile_symbol_t.Skeleton_context_datafile_constructor
         "lanl2dz"));
 Skeleton_symbol_t.Skeleton_symbol
   (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
            (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_any_center
               "lanl2dz"))));
 Skeleton_symbol_t.Skeleton_symbol
   (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_ecppef
            "lanl2dz")))]
);;

let sym_prt_tso_2l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_any_center 
    sym_prt_st;;

test_number 3 (
(sym_prt_tso_2l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_any_center
            "lanl2dz"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_center
            "ne"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_center
            "au"))))]
);;

(* Center "ne" *)

let sym_prt_tso_3l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun s -> (Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_one_center s) 
	&&
      (Skeleton_symbol_v.string_off s = "ne")
    )
    sym_prt_st;;

test_number 4 ( 
(sym_prt_tso_3l : Skeleton_symbol_t.skeleton_symbol list ) = 
  [Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_center
            "ne"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry
            "ne s"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry
            "ne p"))))]
);;

(* Shell Symmetry "ne s" *)

let sym_prt_tso_4l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun s -> (Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_one_shell_symmetry s) 
	&&
      (Skeleton_symbol_v.string_off s = "ne s")
    )
    sym_prt_st;;

test_number 5 ( 
(sym_prt_tso_4l : Skeleton_symbol_t.skeleton_symbol list ) = 
  [Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry
            "ne s"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
            "ne s 1"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
            "ne s 2"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
            "ne s 3"))))]
);;

(* Shell Ordinal "ne s 2" *)

let sym_prt_tso_5l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun s -> (Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_one_shell_ordinal s) 
	&&
      (Skeleton_symbol_v.string_off s = "ne s 2")
    )
    sym_prt_st;;

test_number 6 ( 
(sym_prt_tso_5l : Skeleton_symbol_t.skeleton_symbol list ) = 
  [Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
            "ne s 2"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_fence_symbol
      (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
        (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
          (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_symbol
            (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
              "ne s 2 1")))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_fence_symbol
      (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
        (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
          (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_symbol
            (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
              "ne s 2 2")))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_fence_symbol
      (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
        (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
          (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_symbol
            (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
              "ne s 2 3")))))]
);;

(* Center "au" *)

let sym_prt_tso_6l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun s -> (Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_one_center s) 
	&&
      (Skeleton_symbol_v.string_off s = "au")
    )
    sym_prt_st;;

test_number 7 ( 
(sym_prt_tso_6l : Skeleton_symbol_t.skeleton_symbol list ) = 
  [Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_center
            "au"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry
            "au s"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry
            "au p"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry
            "au d"))))]
);;

(* Shell Symmetry "au s" *)

let sym_prt_tso_7l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun s -> (Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_one_shell_symmetry s) 
	&&
      (Skeleton_symbol_v.string_off s = "au s")
    )
    sym_prt_st;;

test_number 8 ( 
(sym_prt_tso_7l : Skeleton_symbol_t.skeleton_symbol list ) = 
  [Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry
            "au s"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
            "au s 1"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
            "au s 2"))))]
);;

(* Shell Ordinal "au s 2" *)

let sym_prt_tso_8l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun s -> (Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_one_shell_ordinal s) 
	&&
      (Skeleton_symbol_v.string_off s = "au s 2")
    )
    sym_prt_st;;

test_number 9 ( 
(sym_prt_tso_8l : Skeleton_symbol_t.skeleton_symbol list ) = 
  [Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
            "au s 2"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_fence_symbol
      (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
        (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
          (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_symbol
            (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
              "au s 2 1")))))]
);;

(* Shell Symmetry "au p" *)

let sym_prt_tso_9l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun s -> (Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_one_shell_symmetry s) 
	&&
      (Skeleton_symbol_v.string_off s = "au p")
    )
    sym_prt_st;;

test_number 10 ( 
(sym_prt_tso_9l : Skeleton_symbol_t.skeleton_symbol list ) = 
  [Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry
            "au p"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
            "au p 2"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
            "au p 3"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
            "au p 4"))))]
);;

(* Shell Ordinal "au p 2" *)

let sym_prt_tso_10l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun s -> (Skeleton_symbol_v.is_skeleton_set_body_centered_aopef_set_for_one_shell_ordinal s) 
	&&
      (Skeleton_symbol_v.string_off s = "au p 2")
    )
    sym_prt_st;;

test_number 11 ( 
(sym_prt_tso_10l : Skeleton_symbol_t.skeleton_symbol list ) = 
  [Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopef_set_symbol
          (Skeleton_set_body_centered_aopef_set_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal
            "au p 2"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_fence_symbol
      (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
        (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
          (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_symbol
            (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
              "au p 2 1")))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_set_fence_symbol
      (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
        (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
          (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_symbol
            (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
              "au p 2 2")))))]
);;

(* Shell Ordinal "au p 2" *)

let sym_prt_tso_11l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun s -> (Skeleton_symbol_v.is_skeleton_set_fence_centered_aopef_symbol_off_skeleton_symbol s) 
	&&
      (Skeleton_symbol_v.string_off s = "au p 2")
    )
    sym_prt_st;;

test_number 12 (
(sym_prt_tso_11l : Skeleton_symbol_t.skeleton_symbol list ) = 
[]
);;

let sym_prt_l = Tree_v.node_list_off_tree sym_prt_st;;

let nam_prt_l = List.map Skeleton_symbol_v.fullname sym_prt_l;;

test_number 13 (
(nam_prt_l : string list ) =
  ["Skeleton_symbol_t.Skeleton_context_datafile_constructor \"lanl2dz\"";
   "Skeleton_symbol_t.Skeleton_set_body_centered_aopef_set_for_any_center \"lanl2dz\"";
   "Skeleton_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_center \"ne\"";
   "Skeleton_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry \"ne s\"";
   "Skeleton_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal \"ne s 1\"";
   "Skeleton_symbol_t.Skeleton_set_fence_centered_aopef_constructor \"ne s 1 1\"";
   "Skeleton_symbol_t.Skeleton_set_fence_centered_aopef_constructor \"ne s 1 2\"";
   "Skeleton_symbol_t.Skeleton_set_fence_centered_aopef_constructor \"ne s 1 3\"";
   "Skeleton_symbol_t.Skeleton_set_fence_centered_aopef_constructor \"ne s 1 4\"";
   "Skeleton_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal \"ne s 2\"";
   "Skeleton_symbol_t.Skeleton_set_fence_centered_aopef_constructor \"ne s 2 1\"";
   "Skeleton_symbol_t.Skeleton_set_fence_centered_aopef_constructor \"ne s 2 2\"";
   "Skeleton_symbol_t.Skeleton_set_fence_centered_aopef_constructor \"ne s 2 3\"";
   "Skeleton_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal \"ne s 3\"";
   "Skeleton_symbol_t.Skeleton_set_fence_centered_aopef_constructor \"ne s 3 1\"";
   "Skeleton_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry \"ne p\"";
   "Skeleton_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal \"ne p 2\"";
   "Skeleton_symbol_t.Skeleton_set_fence_centered_aopef_constructor \"ne p 2 1\"";
   "Skeleton_symbol_t.Skeleton_set_fence_centered_aopef_constructor \"ne p 2 2\"";
   "Skeleton_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal \"ne p 3\"";
   "Skeleton_symbol_t.Skeleton_set_fence_centered_aopef_constructor \"ne p 3 1\"";
   "Skeleton_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_center \"au\"";
   "Skeleton_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry \"au s\"";
   "Skeleton_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal \"au s 1\"";
   "Skeleton_symbol_t.Skeleton_set_fence_centered_aopef_constructor \"au s 1 1\"";
   "Skeleton_symbol_t.Skeleton_set_fence_centered_aopef_constructor \"au s 1 2\"";
   "Skeleton_symbol_t.Skeleton_set_fence_centered_aopef_constructor \"au s 1 3\"";
   "Skeleton_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal \"au s 2\"";
   "Skeleton_symbol_t.Skeleton_set_fence_centered_aopef_constructor \"au s 2 1\"";
   "Skeleton_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry \"au p\"";
   "Skeleton_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal \"au p 2\"";
   "Skeleton_symbol_t.Skeleton_set_fence_centered_aopef_constructor \"au p 2 1\"";
   "Skeleton_symbol_t.Skeleton_set_fence_centered_aopef_constructor \"au p 2 2\"";
   "Skeleton_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal \"au p 3\"";
   "Skeleton_symbol_t.Skeleton_set_fence_centered_aopef_constructor \"au p 3 1\"";
   "Skeleton_symbol_t.Skeleton_set_fence_centered_aopef_constructor \"au p 3 2\"";
   "Skeleton_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal \"au p 4\"";
   "Skeleton_symbol_t.Skeleton_set_fence_centered_aopef_constructor \"au p 4 1\"";
   "Skeleton_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_symmetry \"au d\"";
   "Skeleton_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal \"au d 3\"";
   "Skeleton_symbol_t.Skeleton_set_fence_centered_aopef_constructor \"au d 3 1\"";
   "Skeleton_symbol_t.Skeleton_set_fence_centered_aopef_constructor \"au d 3 2\"";
   "Skeleton_symbol_t.Skeleton_set_body_centered_aopef_set_for_one_shell_ordinal \"au d 4\"";
   "Skeleton_symbol_t.Skeleton_set_fence_centered_aopef_constructor \"au d 4 1\"";
   "Skeleton_symbol_t.Skeleton_set_body_centered_ecppef \"lanl2dz\""]
);;

let sof_prt_l = List.map Skeleton_symbol_v.string_off sym_prt_l;;

test_number 14 (
(sof_prt_l : string list ) =
["lanl2dz";
   "lanl2dz";
   "ne";
   "ne s";
   "ne s 1";
   "ne s 1 1";
   "ne s 1 2";
   "ne s 1 3";
   "ne s 1 4";
   "ne s 2";
   "ne s 2 1";
   "ne s 2 2";
   "ne s 2 3";
   "ne s 3";
   "ne s 3 1";
   "ne p";
   "ne p 2";
   "ne p 2 1";
   "ne p 2 2";
   "ne p 3";
   "ne p 3 1";
   "au";
   "au s";
   "au s 1";
   "au s 1 1";
   "au s 1 2";
   "au s 1 3";
   "au s 2";
   "au s 2 1";
   "au p";
   "au p 2";
   "au p 2 1";
   "au p 2 2";
   "au p 3";
   "au p 3 1";
   "au p 3 2";
   "au p 4";
   "au p 4 1";
   "au d";
   "au d 3";
   "au d 3 1";
   "au d 3 2";
   "au d 4";
   "au d 4 1";
   "lanl2dz"]
);;
