open Make_test_v;;

testing "Skeleton_tag_tree_by_basicname_databox_n_basicname_database_provider_v with
    Skeleton_tag_tree_by_basicname_databox_n_basicname_database_provider_u_cc_pvtz.ml";;

(* Deleting Registers *)


(* Tracing *)


(* toplevel 
   #use "Skeleton_tag_tree_by_basicname_databox_n_basicname_database_provider_u_cc_pvtz.ml";; 

*)

open Skeleton_tag_tree_by_basicname_databox_n_basicname_database_provider_v;; 

let nam_dbo = "cc_pVTZ";;
let nam_dba = "nwchem";;

let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo;;
let bna_dba = Basicname_v.basicname_database_of_string nam_dba;;

(* Argument (nam_dbo, nam_dba) *)

let tag_ske_qua  =  Skeleton_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v.provide
      (bna_dbo, bna_dba);;

test_number 1 (
 (tag_ske_qua :
  Skeleton_symbol_t.skeleton_symbol Tag_t.tag Quatuor_t.quatuor) =
  ((Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
       (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
         "cc_pVTZ")),
    [16; 5; 19; 5]),
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_database_symbol
       (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
         "nwchem")),
    [5; 19; 5]),
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
       (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
         "skeleton")),
    [19; 5]),
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_sector_symbol
       (Skeleton_context_sector_symbol_t.Skeleton_context_sector_constructor
         "internal")),
    [5]))
);;

let (tag_ske_sbo, tag_ske_sba, tag_ske_scd, tag_ske_scs) = tag_ske_qua;;

let sym_ske_sbo_st =
  Skeleton_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v.provide
    (bna_dbo, bna_dba);;

let sym_ske_he_p_st = Tree_v.subtree_of_node_predicate_off_tree (fun s ->
  Skeleton_symbol_v.skeleton_set_body_centered_aopefset_shellsymmetry_constructor "he p" = s)
    sym_ske_sbo_st;;

test_number 2(
( sym_ske_he_p_st : Skeleton_symbol_t.skeleton_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Skeleton_symbol_t.Skeleton_set_symbol
     (Skeleton_set_symbol_t.Skeleton_set_body_symbol
       (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
         (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol
           (Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_shellsymmetry_symbol
             (Skeleton_set_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_set_body_centered_aopefset_shellsymmetry_constructor
               "he p"))))),
   [Tree_t.Inner
     (Skeleton_symbol_t.Skeleton_set_symbol
       (Skeleton_set_symbol_t.Skeleton_set_body_symbol
         (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
           (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol
             (Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_shellordinal_symbol
               (Skeleton_set_body_centered_aopefset_shellordinal_symbol_t.Skeleton_set_body_centered_aopefset_shellordinal_constructor
                 "he p 2"))))),
     [Tree_t.Leaf
       (Skeleton_symbol_t.Skeleton_set_symbol
         (Skeleton_set_symbol_t.Skeleton_set_fence_symbol
           (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
             (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
               (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
                 "he p 2 1")))))]);
    Tree_t.Inner
     (Skeleton_symbol_t.Skeleton_set_symbol
       (Skeleton_set_symbol_t.Skeleton_set_body_symbol
         (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
           (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol
             (Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_shellordinal_symbol
               (Skeleton_set_body_centered_aopefset_shellordinal_symbol_t.Skeleton_set_body_centered_aopefset_shellordinal_constructor
                 "he p 3"))))),
     [Tree_t.Leaf
       (Skeleton_symbol_t.Skeleton_set_symbol
         (Skeleton_set_symbol_t.Skeleton_set_fence_symbol
           (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
             (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
               (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
                 "he p 3 1")))))])])
);;
  
let soi_ske_sbo = Tag_v.sole_index_off_tag tag_ske_sbo;;

test_number 3 (
(soi_ske_sbo : Sole_index_t.sole_index ) = 
[16; 5; 19; 5]
);;

let soi_ske_sbo_st = 
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
      sym_ske_sbo_st 
      soi_ske_sbo;;


let soi_ske_he_p_st = Tree_v.subtree_of_node_predicate_off_tree (fun s  -> s = [2; 2; 1; 16; 5; 19; 5])
    soi_ske_sbo_st;;

test_number 4 (
(soi_ske_he_p_st : Sole_index_t.sole_index Tree_t.tree ) =
Tree_t.Inner ([2; 2; 1; 16; 5; 19; 5],
	      [Tree_t.Inner ([1; 2; 2; 1; 16; 5; 19; 5],
			     [Tree_t.Leaf [1; 1; 2; 2; 1; 16; 5; 19; 5]]);
	       Tree_t.Inner ([2; 2; 2; 1; 16; 5; 19; 5],
			     [Tree_t.Leaf [1; 2; 2; 2; 1; 16; 5; 19; 5]])])
);;

let tag_ske_sbo_st = Tree_v.map2 Tag_v.make sym_ske_sbo_st soi_ske_sbo_st;;

let tag_ske_he_p_st = Tree_v.subtree_of_node_predicate_off_tree (fun (s, i)  ->
  Skeleton_symbol_v.skeleton_set_body_centered_aopefset_shellsymmetry_constructor "he p" = s)
    tag_ske_sbo_st;;

test_number 5 (
( tag_ske_he_p_st : Skeleton_symbol_t.skeleton_symbol Tag_t.tag Tree_t.tree ) =
Tree_t.Inner
   ((Skeleton_symbol_t.Skeleton_set_symbol
      (Skeleton_set_symbol_t.Skeleton_set_body_symbol
        (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
          (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol
            (Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_shellsymmetry_symbol
              (Skeleton_set_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_set_body_centered_aopefset_shellsymmetry_constructor
                "he p"))))),
     [2; 2; 1; 16; 5; 19; 5]),
   [Tree_t.Inner
     ((Skeleton_symbol_t.Skeleton_set_symbol
        (Skeleton_set_symbol_t.Skeleton_set_body_symbol
          (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
            (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol
              (Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_shellordinal_symbol
                (Skeleton_set_body_centered_aopefset_shellordinal_symbol_t.Skeleton_set_body_centered_aopefset_shellordinal_constructor
                  "he p 2"))))),
       [1; 2; 2; 1; 16; 5; 19; 5]),
     [Tree_t.Leaf
       (Skeleton_symbol_t.Skeleton_set_symbol
         (Skeleton_set_symbol_t.Skeleton_set_fence_symbol
           (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
             (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
               (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
                 "he p 2 1")))),
        [1; 1; 2; 2; 1; 16; 5; 19; 5])]);
    Tree_t.Inner
     ((Skeleton_symbol_t.Skeleton_set_symbol
        (Skeleton_set_symbol_t.Skeleton_set_body_symbol
          (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
            (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol
              (Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_shellordinal_symbol
                (Skeleton_set_body_centered_aopefset_shellordinal_symbol_t.Skeleton_set_body_centered_aopefset_shellordinal_constructor
                  "he p 3"))))),
       [2; 2; 2; 1; 16; 5; 19; 5]),
     [Tree_t.Leaf
       (Skeleton_symbol_t.Skeleton_set_symbol
         (Skeleton_set_symbol_t.Skeleton_set_fence_symbol
           (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
             (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
               (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
                 "he p 3 1")))),
        [1; 2; 2; 2; 1; 16; 5; 19; 5])])])
);;

let tag_ske_sba_st = Tree_v.make_of_node tag_ske_sba [tag_ske_sbo_st];;
let tag_ske_scd_st = Tree_v.make_of_node tag_ske_scd [tag_ske_sba_st];;

let tag_ske_t = Tree_v.make_of_node tag_ske_scs [tag_ske_scd_st];;

test_number 6 (
tag_ske_he_p_st = Tree_v.subtree_of_node_predicate_off_tree (fun (s, i)  ->
  Skeleton_symbol_v.skeleton_set_body_centered_aopefset_shellsymmetry_constructor "he p" = s)
    tag_ske_t
);;

test_number 7 (
tag_ske_t = provide (bna_dbo, bna_dba)
);;

