open Make_test_v;;

testing "Skeleton_tag_tree_by_basicname_databox_n_basicname_database_provider_v with
    Skeleton_tag_tree_by_basicname_databox_n_basicname_database_provider_u_lanl2dz_analysis.ml";;

(* Deleting Registers *)
Register_v.delete Basicname_databox_n_basicname_database_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Skeleton_fence_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_son_tag_list_by_skeleton_father_tag_register_v.register;;
Register_v.delete Skeleton_symbol_by_sole_index_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_subtree_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;





(* Tracing *)


(* toplevel 
   #use "Skeleton_tag_tree_by_basicname_databox_n_basicname_database_provider_u_lanl2dz_analysis.ml";; 

*)

(* Database file *)

let nam_dba = "nwchem";;
let nam_bas = "lanl2dz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_bas;;

(* Databox *)

let tag_pcb = Skeleton_context_databox_tag_by_parameters_general_provider_v.provide ();;

test_number 1 (
(tag_pcb : Skeleton_context_databox_symbol_t.skeleton_context_databox_symbol Tag_t.tag ) =
  (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor "lanl2dz",
   [5; 5; 19])
);;


(* Analysis *)

open Skeleton_tag_tree_by_basicname_databox_n_basicname_database_provider_v;;

let tag_ske_t = provide tag_pcb;;

let tag_ske_tso_1l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) -> Skeleton_symbol_v.is_skeleton_context_databox_constructor s)
    tag_ske_t;;

test_number 2 (
(tag_ske_tso_1l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
       (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
         "lanl2dz")),
    [5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_anycenter
             "lanl2dz")))),
    [1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_ecppef
           "lanl2dz"))),
    [2; 5; 5; 19])]
);;

let tag_ske_tso_2l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) -> Skeleton_symbol_v.is_skeleton_body_centered_aopefset_anycenter s)
    tag_ske_t;;

test_number 3 (
(tag_ske_tso_2l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_anycenter
             "lanl2dz")))),
    [1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_onecenter
             "ne")))),
    [1; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_onecenter
             "au")))),
    [2; 1; 5; 5; 19])]
);;

(* Center "ne" *)

let tag_ske_tso_3l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    ( fun (s, i) -> 
      (Skeleton_symbol_v.is_skeleton_body_centered_aopefset_onecenter s) 
	&&
      (Skeleton_symbol_v.string_off s = "ne")
     )
    tag_ske_t;;

test_number 4 ( 
(tag_ske_tso_3l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) = 
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_onecenter
             "ne")))),
    [1; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry
             "ne s")))),
    [1; 1; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry
             "ne p")))),
    [2; 1; 1; 5; 5; 19])]
);;

(* Shell Symmetry "ne s" *)

let tag_ske_tso_4l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) -> (Skeleton_symbol_v.is_skeleton_body_centered_aopefset_shellsymmetry s) 
	&&
      (Skeleton_symbol_v.string_off s = "ne s")
    )
    tag_ske_t;;

test_number 5 ( 
(tag_ske_tso_4l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) = 
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry
             "ne s")))),
    [1; 1; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal
             "ne s 1")))),
    [1; 1; 1; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal
             "ne s 2")))),
    [2; 1; 1; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal
             "ne s 3")))),
    [3; 1; 1; 1; 5; 5; 19])]
);;

(* Shell Ordinal "ne s 2" *)

let tag_ske_tso_5l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) -> ( Skeleton_symbol_v.is_skeleton_body_centered_aopefset_shellordinal s) 
	&&
      (Skeleton_symbol_v.string_off s = "ne s 2")
    )
    tag_ske_t;;

test_number 6 ( 
(tag_ske_tso_5l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) = 
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal
             "ne s 2")))),
    [2; 1; 1; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
         (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
           (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_single_scaled_symbol
             (Skeleton_fence_centered_aopef_single_scaled_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
               "ne s 2 1"))))),
    [1; 2; 1; 1; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
         (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
           (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_single_scaled_symbol
             (Skeleton_fence_centered_aopef_single_scaled_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
               "ne s 2 2"))))),
    [2; 2; 1; 1; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
         (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
           (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_single_scaled_symbol
             (Skeleton_fence_centered_aopef_single_scaled_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
               "ne s 2 3"))))),
    [3; 2; 1; 1; 1; 5; 5; 19])]
);;

(* Center "au" *)

let tag_ske_tso_6l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) -> (Skeleton_symbol_v.is_skeleton_body_centered_aopefset_onecenter s) 
	&&
      (Skeleton_symbol_v.string_off s = "au")
    )
    tag_ske_t;;

test_number 7 ( 
(tag_ske_tso_6l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) = 
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_onecenter
             "au")))),
    [2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry
             "au s")))),
    [1; 2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry
             "au p")))),
    [2; 2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry
             "au d")))),
    [3; 2; 1; 5; 5; 19])]
);;

(* Shell Symmetry "au s" *)

let tag_ske_tso_7l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) -> (Skeleton_symbol_v.is_skeleton_body_centered_aopefset_shellsymmetry s) 
	&&
      (Skeleton_symbol_v.string_off s = "au s")
    )
    tag_ske_t;;

test_number 8 ( 
(tag_ske_tso_7l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) = 
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry
             "au s")))),
    [1; 2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal
             "au s 1")))),
    [1; 1; 2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal
             "au s 2")))),
    [2; 1; 2; 1; 5; 5; 19])]
);;

(* Shell Ordinal "au s 2" *)

let tag_ske_tso_8l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) -> (Skeleton_symbol_v.is_skeleton_body_centered_aopefset_shellordinal s) 
	&&
      (Skeleton_symbol_v.string_off s = "au s 2")
    )
    tag_ske_t;;

test_number 9 ( 
(tag_ske_tso_8l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) = 
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal
             "au s 2")))),
    [2; 1; 2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
         (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
           (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_single_scaled_symbol
             (Skeleton_fence_centered_aopef_single_scaled_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
               "au s 2 1"))))),
    [1; 2; 1; 2; 1; 5; 5; 19])]
);;

(* Shell Symmetry "au p" *)

let tag_ske_tso_9l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) -> (Skeleton_symbol_v.is_skeleton_body_centered_aopefset_shellsymmetry s) 
	&&
      (Skeleton_symbol_v.string_off s = "au p")
    )
    tag_ske_t;;

test_number 10 ( 
(tag_ske_tso_9l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) = 
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry
             "au p")))),
    [2; 2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal
             "au p 2")))),
    [1; 2; 2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal
             "au p 3")))),
    [2; 2; 2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal
             "au p 4")))),
    [3; 2; 2; 1; 5; 5; 19])]
);;

(* Shell Ordinal "au p 2" *)

let tag_ske_tso_10l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) -> (Skeleton_symbol_v.is_skeleton_body_centered_aopefset_shellordinal s) 
	&&
      (Skeleton_symbol_v.string_off s = "au p 2")
    )
    tag_ske_t;;

test_number 11 ( 
(tag_ske_tso_10l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) = 
  [(Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_body_symbol
       (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
         (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
           (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal
             "au p 2")))),
    [1; 2; 2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
         (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
           (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_single_scaled_symbol
             (Skeleton_fence_centered_aopef_single_scaled_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
               "au p 2 1"))))),
    [1; 1; 2; 2; 1; 5; 5; 19]);
   (Skeleton_symbol_t.Skeleton_symbol
     (Skeleton_symbol_t.Skeleton_fence_symbol
       (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
         (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
           (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_single_scaled_symbol
             (Skeleton_fence_centered_aopef_single_scaled_symbol_t.Skeleton_fence_centered_aopef_single_scaled_constructor
               "au p 2 2"))))),
    [2; 1; 2; 2; 1; 5; 5; 19])]
);;

(* Shell Ordinal "au p 2" *)

let tag_ske_tso_11l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) -> (Skeleton_symbol_v.is_skeleton_fence_centered_aopef_single_scaled_symbol_off_skeleton_symbol s) 
	&&
      (Skeleton_symbol_v.string_off s = "au p 2")
    )
    tag_ske_t;;

test_number 12 (
(tag_ske_tso_11l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) = 
[]
);;
