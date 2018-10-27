open Make_test_v;;

testing "Skeleton_tag_tree_by_skeleton_context_databox_tag_provider_v with
    Skeleton_tag_tree_by_skeleton_context_databox_tag_provider_u_any.ml";;

(* Deleting Registers *)





(* Tracing *)


(* toplevel 
   #use "Skeleton_tag_tree_by_skeleton_context_databox_tag_provider_u_any.ml";; 

*)

let nam_dba = "nwchem";;
let nam_bas = "lanl2dz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_bas;;
 
open Skeleton_tag_tree_by_skeleton_context_databox_tag_provider_v;;

let tag_pcb = Skeleton_context_databox_tag_by_parameters_general_provider_v.provide () ;;

test_number 1 ( 
( tag_pcb : Skeleton_context_databox_symbol_t.skeleton_context_databox_symbol Tag_t.tag ) =
  (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
    "lanl2dz",
   [5; 5; 19])
);;

let soi_pcb = Tag_v.sole_index_off_tag tag_pcb;;

test_number 2 (
(soi_pcb : Sole_index_t.sole_index) = 
[5; 5; 19]
);;

let sym_ske_bas_st =
    Skeleton_symbol_subtree_by_skeleton_context_databox_tag_provider_v.provide
    tag_pcb
;;

let sym_ske_bas_tso_l = Tree_v.root_topson_node_list_off_tree sym_ske_bas_st;;

test_number 3 (
(sym_ske_bas_tso_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
      (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
        "lanl2dz"));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_body_symbol
      (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
        (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
          (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_anycenter
            "lanl2dz"))));
   Skeleton_symbol_t.Skeleton_symbol
    (Skeleton_symbol_t.Skeleton_body_symbol
      (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
        (Skeleton_body_centered_symbol_t.Skeleton_body_centered_ecppef
          "lanl2dz")))]
);;
  
let tag_ske_dom = Skeleton_as_context_domain_tag_by_unit_provider_v.provide ();;

test_number 4 (
(tag_ske_dom : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
(Skeleton_symbol_t.Skeleton_context_symbol
  (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
    (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
      "skeleton")),
 [19])
);;

let tag_ske_dba = Skeleton_as_context_database_tag_by_parameters_general_provider_v.provide ();;

test_number 5 (
(tag_ske_dba: Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
(Skeleton_symbol_t.Skeleton_context_symbol
   (Skeleton_context_symbol_t.Skeleton_context_database_symbol
      (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
	 "nwchem")),
 [5; 19])
);;

let tag_ske_bas = Tag_v.map_entity 
      Skeleton_symbol_v.skeleton_symbol_of_skeleton_context_databox_symbol
      tag_pcb
;;

test_number 6 (
(tag_ske_bas : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
      (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
        "lanl2dz")),
   [5; 5; 19])
);;

let soi_bas = Tag_v.sole_index_off_tag tag_ske_bas;;

test_number 7 (
(soi_bas : Sole_index_t.sole_index ) = 
[5; 5; 19]
);;

let soi_ske_bas_st = 
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
      sym_ske_bas_st 
      soi_bas 
;;

let soi_ske_tso_l = Tree_v.root_topson_node_list_off_tree soi_ske_bas_st;;

test_number 8 (
(soi_ske_tso_l : Sole_index_t.sole_index list ) =
  [[5; 5; 19]; [1; 5; 5; 19]; [2; 5; 5; 19]]
);;

let tag_ske_bas_st = Tree_v.map2 Tag_v.make sym_ske_bas_st soi_ske_bas_st;;

let tag_ske_bas_tso_l = Tree_v.root_topson_node_list_off_tree tag_ske_bas_st;;

test_number 9 (
(tag_ske_bas_tso_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
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

let tag_ske_dba_st = Tree_v.make_of_node tag_ske_dba [tag_ske_bas_st];;
  
let tag_ske_dba_tso_l = Tree_v.root_topson_node_list_off_tree tag_ske_dba_st;;

test_number 10 (
(tag_ske_dba_tso_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_database_symbol
       (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
         "nwchem")),
    [5; 19]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
       (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
         "lanl2dz")),
    [5; 5; 19])]
);;

let tag_ske_t = Tree_v.make_of_node tag_ske_dom [tag_ske_dba_st];;

let tag_ske_tso_l = Tree_v.root_topson_node_list_off_tree tag_ske_t;;

test_number 11 (
(tag_ske_tso_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
       (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
         "skeleton")),
    [19]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_database_symbol
       (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
         "nwchem")),
    [5; 19])]
);;
