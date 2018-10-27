open Make_test_v;;

testing "Elementary_tag_tree_by_elementary_context_databox_tag_provider_v with
    Elementary_tag_tree_by_elementary_context_databox_tag_provider_u_lanl2dz.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Elementary_fence_by_elementary_tag_register_v.register;;
Register_v.delete Elementary_son_tag_list_by_elementary_father_tag_register_v.register;;
Register_v.delete Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete Elementary_tag_all_list_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Elementary_tag_all_list_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete Elementary_tag_subtree_by_elementary_tag_register_v.register;;
Register_v.delete Elementary_tag_tree_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Elementary_tag_tree_by_elementary_context_databox_tag_register_v.register;;



(* Tracing *)

(* toplevel 
   #use "Elementary_tag_tree_by_elementary_context_databox_tag_provider_u_lanl2dz.ml";; 

*)

(* Database file *)

let nam_nbo = "lanl2dz";;
let nam_eba = "nwchem";;
let nam_mod = "Elementary_tag_tree_by_elementary_context_databox_tag_provider_u_lanl2dz";;

 
let tag_nbo = Elementary_context_databox_tag_by_databox_name_n_database_name_provider_v.provide nam_nbo;;

test_number 1 ( 
( tag_nbo : Elementary_context_databox_symbol_t.elementary_context_databox_symbol Tag_t.tag ) =
  (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
    "lanl2dz",
   [5; 5; 22; 6])
);;

open Elementary_tag_tree_by_elementary_context_databox_tag_provider_v;;

let soi_nbo = Tag_v.sole_index_off_tag tag_nbo;;

test_number 2 (
(soi_nbo : Sole_index_t.sole_index) = 
[5; 5; 22; 6]
);;

let tag_eba = Elementary_context_database_tag_by_unit_provider_v.provide ();;
let tag_nwc_eba = Tag_v.map_entity 
      Elementary_symbol_v.elementary_symbol_of_elementary_context_database_symbol 
      tag_eba ;;

test_number 3 (
(tag_nwc_eba : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_database_symbol
      (Elementary_context_database_symbol_t.Elementary_context_database_constructor
        "nwchem")),
   [5; 22; 6])
);;

let tag_ddd = Elementary_context_domaindata_tag_by_unit_provider_v.provide () ;;
let tag_nwc_ddd = Tag_v.map_entity 
      Elementary_symbol_v.elementary_symbol_of_elementary_context_domaindata_symbol 
      tag_ddd;;

test_number 4 (
(tag_nwc_ddd : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_domaindata_symbol
      (Elementary_context_domaindata_symbol_t.Elementary_context_domaindata_constructor
        "skeleton")),
   [22; 6])
);;

let tag_dcd = Elementary_context_domain_tag_by_unit_provider_v.provide ();;
let tag_nwc_dcd = Tag_v.map_entity 
      Elementary_symbol_v.elementary_symbol_of_elementary_context_domain_symbol 
      tag_dcd;;

test_number 5 (
( tag_nwc_dcd : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_domain_symbol
      (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor
        "database")),
   [6])
);;

let sym_nwc_nbo_st = 
    Elementary_symbol_subtree_by_elementary_context_databox_tag_provider_v.provide 
      tag_nbo ;;

let sym_tso_l = Tree_v.root_topson_node_list_off_tree sym_nwc_nbo_st;;

test_number 6 (
( sym_tso_l : Elementary_symbol_t.elementary_symbol list ) =
 [Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_databox_symbol
      (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
        "lanl2dz"));
   Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_version_symbol
      (Elementary_context_version_symbol_t.Elementary_context_version_constructor "v1.2.2"));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_node_symbol
      (Elementary_body_node_symbol_t.Elementary_body_node_aobasis_block "lanl2dz"));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_node_symbol
      (Elementary_body_node_symbol_t.Elementary_body_node_ecpbasis_block "lanl2dz"))]
);;

let soi_nwc_nbo_st = Sole_index_v.sole_index_tree_of_tree_of_root_sole_index sym_nwc_nbo_st soi_nbo;;

let tag_nwc_nbo_st = Tree_v.map2 Tag_v.make sym_nwc_nbo_st soi_nwc_nbo_st;;
let tag_nwc_eba_st = Tree_v.make_of_node tag_nwc_eba [tag_nwc_nbo_st];;
let tag_nwc_ddd_st = Tree_v.make_of_node tag_nwc_ddd [tag_nwc_eba_st];;

let tag_nwc_t = Tree_v.make_of_node tag_nwc_dcd [tag_nwc_ddd_st];;

test_number 7 (
tag_nwc_t = provide tag_nbo
);;

(* Analysis *)

let tag_tso_l = Tree_v.root_topson_node_list_off_tree tag_nwc_t;;

let tag_top_l = Tree_v.node_list_of_node_predicate_off_tree (fun (s, i) -> List.length i <= 5) tag_nwc_t;;

test_number 8 (
(tag_top_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_domain_symbol
       (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor
         "database")),
    [6]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_domaindata_symbol
       (Elementary_context_domaindata_symbol_t.Elementary_context_domaindata_constructor
         "skeleton")),
    [22; 6]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_database_symbol
       (Elementary_context_database_symbol_t.Elementary_context_database_constructor
         "nwchem")),
    [5; 22; 6]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_databox_symbol
       (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
         "lanl2dz")),
    [5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_version_symbol
       (Elementary_context_version_symbol_t.Elementary_context_version_constructor
         "v1.2.2")),
    [1; 5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aobasis_block "lanl2dz")),
    [2; 5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_ecpbasis_block "lanl2dz")),
    [3; 5; 5; 22; 6])]
);;

let tag_lea_l = Tree_v.leaf_node_list_off_tree tag_nwc_t;;
let tag_lea_l = List.filter (fun (s, i) -> not (
  (Elementary_symbol_v.is_elementary_comment_reference s) 
|| (Elementary_symbol_v.is_elementary_body_keyword_symbol_off_elementary_symbol s) 
|| (Elementary_symbol_v.is_elementary_comment_symbol_off_elementary_symbol s) 
) ) tag_lea_l;;

let tag_clo_l = List.filter (fun (s, i) -> (Elementary_symbol_v.is_elementary_fence_symbol_off_elementary_symbol s) )  tag_lea_l;;


let soi_nfe = [1; 3; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6];;
let tag_nfe = Elementary_any_category_by_sole_index_extractor_v.elementary_fence_tag_off_sole_index soi_nfe;;
let tag_nwc_fen = Tag_v.map_entity Elementary_symbol_v.elementary_symbol_of_elementary_fence_symbol tag_nfe;;

test_number 9 (
(tag_nwc_fen : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_float_positive "43.7700000"),
   [1; 3; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6])
);;

let tag_pat = List.rev (Tree_v.path_of_node_predicate_off_tree (fun t -> t = tag_nwc_fen) tag_nwc_t);;

test_number 10 (
(tag_pat : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_domain_symbol
       (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor
         "database")),
    [6]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_domaindata_symbol
       (Elementary_context_domaindata_symbol_t.Elementary_context_domaindata_constructor
         "skeleton")),
    [22; 6]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_database_symbol
       (Elementary_context_database_symbol_t.Elementary_context_database_constructor
         "nwchem")),
    [5; 22; 6]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_databox_symbol
       (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
         "lanl2dz")),
    [5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aobasis_block "lanl2dz")),
    [2; 5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_block "lanl2dz")),
    [2; 2; 5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_anycenter_block
         "lanl2dz")),
    [2; 2; 2; 5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_onecenter_block "ne")),
    [1; 2; 2; 2; 5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_anyshell_block "ne")),
    [2; 1; 2; 2; 2; 5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_oneshell_block
         "ne s 1 gaussian")),
    [1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_numerical_values_block
         "ne s 1 gaussian")),
    [2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_numerical_values
         "ne s 1 gaussian 3")),
    [3; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_float_positive "43.7700000"),
    [1; 3; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6])]
);;
