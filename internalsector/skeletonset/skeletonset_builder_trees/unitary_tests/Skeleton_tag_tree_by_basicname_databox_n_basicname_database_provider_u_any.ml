open Make_test_v;;

testing "Skeleton_tag_tree_by_basicname_databox_n_basicname_database_provider_v with
    Skeleton_tag_tree_by_basicname_databox_n_basicname_database_provider_u_any.ml";;

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

let nam_mod = "Skeleton_tag_tree_by_basicname_databox_n_basicname_database_provider_u_any";;


(* toplevel 
   #use "Skeleton_tag_tree_by_basicname_databox_n_basicname_database_provider_u_any.ml";; 

*)

open Skeleton_tag_tree_by_basicname_databox_n_basicname_database_provider_v;;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;

let tag_ske_qua = Skeleton_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v.provide
      (nam_dbo, nam_dba);;

test_number 1 (
(tag_ske_qua :
  Skeleton_symbol_t.skeleton_symbol Tag_t.tag Quatuor_t.quatuor ) =
  ((Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
       (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
         "try_ao")),
    [16; 5; 20; 5]),
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_database_symbol
       (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
         "nwchem")),
    [5; 20; 5]),
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
       (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
         "skeleton")),
    [20; 5]),
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_sector_symbol
       (Skeleton_context_sector_symbol_t.Skeleton_context_sector_constructor
         "internal")),
    [5]))
);;

 let (tag_ske_dbo, tag_ske_dba, tag_ske_scd, tag_ske_scs) = tag_ske_qua;;

let sym_ske_dbo_st =
  Skeleton_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v.provide
    (nam_dbo, nam_dba)
;;

let sym_ske_tso_l = Tree_v.root_topson_node_list_off_tree sym_ske_dbo_st;;

test_number 2 (
( sym_ske_tso_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
      (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
        "try_ao"));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_anycenter_symbol
          (Skeleton_body_centered_aopefset_anycenter_symbol_t.Skeleton_body_centered_aopefset_anycenter_constructor
            "try_ao"))));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_ecppefset_symbol
        (Skeleton_body_centered_ecppefset_symbol_t.Skeleton_body_centered_ecppefset_constructor
          "try_ao")))]
);;

let soi_ske_dbo = Tag_v.sole_index_off_tag tag_ske_dbo;;

test_number 3 (
(soi_ske_dbo : Sole_index_t.sole_index ) = 
[16; 5; 20; 5]
);;

let soi_ske_dbo_st =
  Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
    sym_ske_dbo_st 
    soi_ske_dbo 
;;

let soi_ske_tso_l = Tree_v.root_topson_node_list_off_tree soi_ske_dbo_st;;

test_number 4 (
(soi_ske_tso_l : Sole_index_t.sole_index list ) =
 [[16; 5; 20; 5]; [1; 16; 5; 20; 5]; [2; 16; 5; 20; 5]]
);;

let tag_ske_dbo_st = Tree_v.map2 Tag_v.make sym_ske_dbo_st soi_ske_dbo_st;;
  
let tag_ske_dba_st = Tree_v.make_of_node tag_ske_dba [tag_ske_dbo_st];;
  
let tag_ske_scd_st = Tree_v.make_of_node tag_ske_scd [tag_ske_dba_st];;
 
let tag_ske_t = Tree_v.make_of_node tag_ske_scs [tag_ske_scd_st];;

(* Analysis *)

let tag_ske_tso_l = Tree_v.root_topson_node_list_off_tree tag_ske_t;;

test_number 5 (
(tag_ske_tso_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_sector_symbol
       (Skeleton_context_sector_symbol_t.Skeleton_context_sector_constructor
         "internal")),
    [5]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
       (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
         "skeleton")),
    [20; 5])]
);;

let tag_ske_top_l = Tree_v.node_list_of_node_predicate_off_tree (fun (s, i) -> List.length i <= 5) tag_ske_t;;

test_number 6 (
(tag_ske_top_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_sector_symbol
       (Skeleton_context_sector_symbol_t.Skeleton_context_sector_constructor
         "internal")),
    [5]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
       (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
         "skeleton")),
    [20; 5]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_database_symbol
       (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
         "nwchem")),
    [5; 20; 5]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
       (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
         "try_ao")),
    [16; 5; 20; 5]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
         (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_anycenter_symbol
           (Skeleton_body_centered_aopefset_anycenter_symbol_t.Skeleton_body_centered_aopefset_anycenter_constructor
             "try_ao")))),
    [1; 16; 5; 20; 5]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
       (Skeleton_body_centered_symbol_t.Skeleton_body_centered_ecppefset_symbol
         (Skeleton_body_centered_ecppefset_symbol_t.Skeleton_body_centered_ecppefset_constructor
           "try_ao"))),
    [2; 16; 5; 20; 5])]
);;

test_number 7 (
tag_ske_t = provide (nam_dbo, nam_dba)
);;
