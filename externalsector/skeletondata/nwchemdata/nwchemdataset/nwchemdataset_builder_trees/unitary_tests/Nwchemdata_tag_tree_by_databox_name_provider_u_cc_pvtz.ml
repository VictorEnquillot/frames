open Make_test_v;;

testing "Nwchemdata_tag_tree_by_databox_name_provider_v with
    Nwchemdata_tag_tree_by_databox_name_provider_u_cc_pvtz.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_nwchemdata_context_databox_tag_register_v.register;;
Register_v.delete Nwchemdata_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Nwchemdata_set_fence_by_nwchemdata_tag_register_v.register;;
Register_v.delete Nwchemdata_son_tag_list_by_nwchemdata_father_tag_register_v.register;;
Register_v.delete Nwchemdata_symbol_by_sole_index_register_v.register;;
Register_v.delete Nwchemdata_symbol_subtree_by_databox_name_register_v.register;;
Register_v.delete Nwchemdata_tag_all_list_by_databox_name_register_v.register;;
Register_v.delete Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_register_v.register;;
Register_v.delete Nwchemdata_tag_subtree_by_nwchemdata_tag_register_v.register;;
Register_v.delete Nwchemdata_tag_tree_by_databox_name_register_v.register;;

(* Tracing *)

(* toplevel 
   #use "Nwchemdata_tag_tree_by_databox_name_provider_u_cc_pvtz.ml";; 

*)

open Nwchemdata_tag_tree_by_databox_name_provider_v;;

let nam_dbo = "cc_pVTZ";;
let nam_mod = "Nwchemdata_tag_tree_by_databox_name_provider_u_cc_pvtz";;

let (tag_nwc_nbo, tag_nwc_nba, tag_nwc_ncd, tag_nwc_ncs) =
    Nwchemdata_as_context_tag_quatuor_by_databox_name_provider_v.provide
      nam_dbo;;

let tag_nwc_qua = (tag_nwc_nbo, tag_nwc_nba, tag_nwc_ncd, tag_nwc_ncs);;

test_number 1 (
(tag_nwc_qua :
  Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag *
  Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag *
  Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag *
  Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag ) =
  ((Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_databox_symbol
       (Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
         "cc_pVTZ")),
    [13; 5; 20; 2]),
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_database_symbol
       (Nwchemdata_context_database_symbol_t.Nwchemdata_context_database_constructor
         "nwchem")),
    [5; 20; 2]),
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_domain_symbol
       (Nwchemdata_context_domain_symbol_t.Nwchemdata_context_domain_constructor
         "skeleton")),
    [20; 2]),
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_sector_symbol
       (Nwchemdata_context_sector_symbol_t.Nwchemdata_context_sector_constructor
         "external")),
    [2]))
);;

let sym_nwc_nbo_st =
  Nwchemdata_symbol_subtree_by_databox_name_provider_v.provide
    nam_dbo;;

let sym_nwc_tso_l = Tree_v.root_topson_node_list_off_tree sym_nwc_nbo_st;;

test_number 2 (
( sym_nwc_tso_l : Nwchemdata_symbol_t.nwchemdata_symbol list ) =
  [Nwchemdata_symbol_t.Nwchemdata_context_symbol
    (Nwchemdata_context_symbol_t.Nwchemdata_context_databox_symbol
      (Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
        "cc_pVTZ"));
   Nwchemdata_symbol_t.Nwchemdata_set_symbol
    (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
      (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_variable_symbol
        (Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_version_symbol
          (Nwchemdata_set_body_variable_version_symbol_t.Nwchemdata_set_body_variable_version_constructor
            "v1.2.2"))));
   Nwchemdata_symbol_t.Nwchemdata_set_symbol
    (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
      (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
        (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aobasis_block_symbol
          (Nwchemdata_set_body_node_aobasis_block_symbol_t.Nwchemdata_set_body_node_aobasis_block_constructor
            "cc_pVTZ"))))]
);;

let soi_nwc_nbo = Tag_v.sole_index_off_tag tag_nwc_nbo;;

test_number 3 (
(soi_nwc_nbo : Sole_index_t.sole_index ) = 
[13; 5; 20; 2]
);;

let soi_nwc_nbo_st =
  Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
    sym_nwc_nbo_st 
    soi_nwc_nbo 
;;

let soi_nwc_tso_l = Tree_v.root_topson_node_list_off_tree soi_nwc_nbo_st;;

test_number 4 (
(soi_nwc_tso_l : Sole_index_t.sole_index list ) =
[[13; 5; 20; 2]; 
 [1; 13; 5; 20; 2]; 
 [2; 13; 5; 20; 2]]
);;

let tag_nwc_nbo_st = Tree_v.map2 Tag_v.make sym_nwc_nbo_st soi_nwc_nbo_st;;
  
let tag_nwc_nba_st = Tree_v.make_of_node tag_nwc_nba [tag_nwc_nbo_st];;
  
let tag_nwc_ncd_st = Tree_v.make_of_node tag_nwc_ncd [tag_nwc_nba_st];;
 
let tag_nwc_t = Tree_v.make_of_node tag_nwc_ncs [tag_nwc_ncd_st];;

(* Analysis *)

let tag_nwc_tso_l = Tree_v.root_topson_node_list_off_tree tag_nwc_t;;

test_number 5 (
(tag_nwc_tso_l : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_sector_symbol
       (Nwchemdata_context_sector_symbol_t.Nwchemdata_context_sector_constructor
         "external")),
    [2]);
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_domain_symbol
       (Nwchemdata_context_domain_symbol_t.Nwchemdata_context_domain_constructor
         "skeleton")),
    [20; 2])]
);;

let tag_nwc_top_l = Tree_v.node_list_of_node_predicate_off_tree 
    (fun (s, i) -> List.length i <= 5) 
    tag_nwc_t;;

test_number 6 (
(tag_nwc_top_l : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
 [(Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_sector_symbol
       (Nwchemdata_context_sector_symbol_t.Nwchemdata_context_sector_constructor
         "external")),
    [2]);
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_domain_symbol
       (Nwchemdata_context_domain_symbol_t.Nwchemdata_context_domain_constructor
         "skeleton")),
    [20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_database_symbol
       (Nwchemdata_context_database_symbol_t.Nwchemdata_context_database_constructor
         "nwchem")),
    [5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_databox_symbol
       (Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
         "cc_pVTZ")),
    [13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_variable_symbol
         (Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_version_symbol
           (Nwchemdata_set_body_variable_version_symbol_t.Nwchemdata_set_body_variable_version_constructor
             "v1.2.2")))),
    [1; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aobasis_block_symbol
           (Nwchemdata_set_body_node_aobasis_block_symbol_t.Nwchemdata_set_body_node_aobasis_block_constructor
             "cc_pVTZ")))),
    [2; 13; 5; 20; 2])]
);;

let tag_nwc_st = Tree_v.only_subtree_of_node_predicate_off_tree
    (fun (s,i) -> s = Nwchemdata_symbol_v.nwchemdata_set_body_node_aoset_numericalvalues_constructor "Ne P 4 GAUSSIAN 1")
    tag_nwc_t;;

test_number 7 (
(tag_nwc_st : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Nwchemdata_symbol_t.Nwchemdata_set_symbol
      (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
        (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
          (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol
            (Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_symbol
              (Nwchemdata_set_body_node_aoset_numericalvalues_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_constructor
                "Ne P 4 GAUSSIAN 1"))))),
     [1; 2; 4; 2; 10; 2; 2; 2; 13; 5; 20; 2]),
   [Tree_t.Leaf
     (Nwchemdata_symbol_t.Nwchemdata_set_symbol
       (Nwchemdata_set_symbol_t.Nwchemdata_set_fence_symbol
         (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_symbol
           (Nwchemdata_set_fence_float_symbol_t.Nwchemdata_set_fence_float_positive_symbol
             (Nwchemdata_set_fence_float_positive_symbol_t.Nwchemdata_set_fence_float_positive_constructor
               "54.7000000")))),
      [1; 1; 2; 4; 2; 10; 2; 2; 2; 13; 5; 20; 2]);
    Tree_t.Leaf
     (Nwchemdata_symbol_t.Nwchemdata_set_symbol
       (Nwchemdata_set_symbol_t.Nwchemdata_set_fence_symbol
         (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_symbol
           (Nwchemdata_set_fence_float_symbol_t.Nwchemdata_set_fence_float_positive_symbol
             (Nwchemdata_set_fence_float_positive_symbol_t.Nwchemdata_set_fence_float_positive_constructor
               "0.0171510")))),
      [2; 1; 2; 4; 2; 10; 2; 2; 2; 13; 5; 20; 2])])
);;

let tag_nwc_exp = Tree_v.only_node_of_node_predicate_off_tree 
    (fun t -> Nwchemdata_tag_v.string_off t = "54.7000000")
    tag_nwc_st;;

test_number 8 (
(tag_nwc_exp : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag ) =
  (Nwchemdata_symbol_t.Nwchemdata_set_symbol
    (Nwchemdata_set_symbol_t.Nwchemdata_set_fence_symbol
      (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_symbol
        (Nwchemdata_set_fence_float_symbol_t.Nwchemdata_set_fence_float_positive_symbol
          (Nwchemdata_set_fence_float_positive_symbol_t.Nwchemdata_set_fence_float_positive_constructor
            "54.7000000")))),
   [1; 1; 2; 4; 2; 10; 2; 2; 2; 13; 5; 20; 2])
);;

let tag_pat_exp = List.rev (Tree_v.path_of_node_predicate_off_tree (fun t -> t = tag_nwc_exp) tag_nwc_t);;

test_number 9 (
( tag_pat_exp : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_sector_symbol
       (Nwchemdata_context_sector_symbol_t.Nwchemdata_context_sector_constructor
         "external")),
    [2]);
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_domain_symbol
       (Nwchemdata_context_domain_symbol_t.Nwchemdata_context_domain_constructor
         "skeleton")),
    [20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_database_symbol
       (Nwchemdata_context_database_symbol_t.Nwchemdata_context_database_constructor
         "nwchem")),
    [5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_databox_symbol
       (Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
         "cc_pVTZ")),
    [13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aobasis_block_symbol
           (Nwchemdata_set_body_node_aobasis_block_symbol_t.Nwchemdata_set_body_node_aobasis_block_constructor
             "cc_pVTZ")))),
    [2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol
           (Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_block_symbol
             (Nwchemdata_set_body_node_aoset_block_symbol_t.Nwchemdata_set_body_node_aoset_block_constructor
               "cc_pVTZ"))))),
    [2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol
           (Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_anycenter_block_symbol
             (Nwchemdata_set_body_node_aoset_anycenter_block_symbol_t.Nwchemdata_set_body_node_aoset_anycenter_block_constructor
               "cc_pVTZ"))))),
    [2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol
           (Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_onecenter_block_symbol
             (Nwchemdata_set_body_node_aoset_onecenter_block_symbol_t.Nwchemdata_set_body_node_aoset_onecenter_block_constructor
               "Ne"))))),
    [10; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol
           (Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_anyshell_block_symbol
             (Nwchemdata_set_body_node_aoset_anyshell_block_symbol_t.Nwchemdata_set_body_node_aoset_anyshell_block_constructor
               "Ne"))))),
    [2; 10; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol
           (Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_oneshell_block_symbol
             (Nwchemdata_set_body_node_aoset_oneshell_block_symbol_t.Nwchemdata_set_body_node_aoset_oneshell_block_constructor
               "Ne P 4 GAUSSIAN"))))),
    [4; 2; 10; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol
           (Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_block_symbol
             (Nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_block_constructor
               "Ne P 4 GAUSSIAN"))))),
    [2; 4; 2; 10; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol
           (Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_symbol
             (Nwchemdata_set_body_node_aoset_numericalvalues_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_constructor
               "Ne P 4 GAUSSIAN 1"))))),
    [1; 2; 4; 2; 10; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_fence_symbol
       (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_symbol
         (Nwchemdata_set_fence_float_symbol_t.Nwchemdata_set_fence_float_positive_symbol
           (Nwchemdata_set_fence_float_positive_symbol_t.Nwchemdata_set_fence_float_positive_constructor
             "54.7000000")))),
    [1; 1; 2; 4; 2; 10; 2; 2; 2; 13; 5; 20; 2])]
);;

let tag_nwc_coe = Tree_v.only_node_of_node_predicate_off_tree 
    (fun t -> Nwchemdata_tag_v.string_off t = "0.0171510")
    tag_nwc_st;;

test_number 10 (
(tag_nwc_coe : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag ) =
  (Nwchemdata_symbol_t.Nwchemdata_set_symbol
    (Nwchemdata_set_symbol_t.Nwchemdata_set_fence_symbol
      (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_symbol
        (Nwchemdata_set_fence_float_symbol_t.Nwchemdata_set_fence_float_positive_symbol
          (Nwchemdata_set_fence_float_positive_symbol_t.Nwchemdata_set_fence_float_positive_constructor
            "0.0171510")))),
   [2; 1; 2; 4; 2; 10; 2; 2; 2; 13; 5; 20; 2])
);;

let tag_pat_coe = List.rev (Tree_v.path_of_node_predicate_off_tree (fun t -> t = tag_nwc_coe) tag_nwc_t);;

test_number 11 (
( tag_pat_coe : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
 [(Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_sector_symbol
       (Nwchemdata_context_sector_symbol_t.Nwchemdata_context_sector_constructor
         "external")),
    [2]);
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_domain_symbol
       (Nwchemdata_context_domain_symbol_t.Nwchemdata_context_domain_constructor
         "skeleton")),
    [20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_database_symbol
       (Nwchemdata_context_database_symbol_t.Nwchemdata_context_database_constructor
         "nwchem")),
    [5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_databox_symbol
       (Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
         "cc_pVTZ")),
    [13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aobasis_block_symbol
           (Nwchemdata_set_body_node_aobasis_block_symbol_t.Nwchemdata_set_body_node_aobasis_block_constructor
             "cc_pVTZ")))),
    [2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol
           (Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_block_symbol
             (Nwchemdata_set_body_node_aoset_block_symbol_t.Nwchemdata_set_body_node_aoset_block_constructor
               "cc_pVTZ"))))),
    [2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol
           (Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_anycenter_block_symbol
             (Nwchemdata_set_body_node_aoset_anycenter_block_symbol_t.Nwchemdata_set_body_node_aoset_anycenter_block_constructor
               "cc_pVTZ"))))),
    [2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol
           (Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_onecenter_block_symbol
             (Nwchemdata_set_body_node_aoset_onecenter_block_symbol_t.Nwchemdata_set_body_node_aoset_onecenter_block_constructor
               "Ne"))))),
    [10; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol
           (Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_anyshell_block_symbol
             (Nwchemdata_set_body_node_aoset_anyshell_block_symbol_t.Nwchemdata_set_body_node_aoset_anyshell_block_constructor
               "Ne"))))),
    [2; 10; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol
           (Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_oneshell_block_symbol
             (Nwchemdata_set_body_node_aoset_oneshell_block_symbol_t.Nwchemdata_set_body_node_aoset_oneshell_block_constructor
               "Ne P 4 GAUSSIAN"))))),
    [4; 2; 10; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol
           (Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_block_symbol
             (Nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_block_constructor
               "Ne P 4 GAUSSIAN"))))),
    [2; 4; 2; 10; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_symbol
           (Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_symbol
             (Nwchemdata_set_body_node_aoset_numericalvalues_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_constructor
               "Ne P 4 GAUSSIAN 1"))))),
    [1; 2; 4; 2; 10; 2; 2; 2; 13; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_fence_symbol
       (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_symbol
         (Nwchemdata_set_fence_float_symbol_t.Nwchemdata_set_fence_float_positive_symbol
           (Nwchemdata_set_fence_float_positive_symbol_t.Nwchemdata_set_fence_float_positive_constructor
             "0.0171510")))),
    [2; 1; 2; 4; 2; 10; 2; 2; 2; 13; 5; 20; 2])]
);;

test_number 12 (
tag_nwc_t = provide nam_dbo
);;
