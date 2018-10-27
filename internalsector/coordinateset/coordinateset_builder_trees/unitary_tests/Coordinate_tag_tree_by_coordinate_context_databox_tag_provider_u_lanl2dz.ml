open Make_test_v;;

testing "Coordinate_tag_tree_by_coordinate_context_databox_tag_provider_v with
    Coordinate_tag_tree_by_coordinate_context_databox_tag_provider_u_lanl2dz.ml";;

(* Deleting Registers *)



(* Tracing *)

(* toplevel 
   #use "Coordinate_tag_tree_by_coordinate_context_databox_tag_provider_u_lanl2dz.ml";; 

*)

(* Database file *)

let nam_nbo = "lanl2dz";;
let nam_dba = "db1points";;
let nam_mod = "Coordinate_tag_tree_by_coordinate_context_databox_tag_provider_u_lanl2dz";;

 
let tag_nbo = Coordinate_context_databox_tag_by_databox_name_n_database_name_provider_v.provide nam_nbo;;

test_number 1 ( 
( tag_nbo : Coordinate_context_databox_symbol_t.coordinate_context_databox_symbol Tag_t.tag ) =
  (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
    "lanl2dz",
   [5; 5; 22; 6])
);;

open Coordinate_tag_tree_by_coordinate_context_databox_tag_provider_v;;

let soi_nbo = Tag_v.sole_index_off_tag tag_nbo;;

test_number 2 (
(soi_nbo : Sole_index_t.sole_index) = 
[5; 5; 22; 6]
);;

let tag_dba = Coordinate_context_database_tag_by_unit_provider_v.provide ();;
let tag_db1_dba = Tag_v.map_entity 
      Coordinate_symbol_v.coordinate_symbol_of_coordinate_context_database_symbol 
      tag_dba ;;

test_number 3 (
(tag_db1_dba : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Coordinate_context_symbol
    (Coordinate_context_symbol_t.Coordinate_context_database_symbol
      (Coordinate_context_database_symbol_t.Coordinate_context_database_constructor
        "db1points")),
   [5; 22; 6])
);;

let tag_ddd = Coordinate_context_domaindata_tag_by_unit_provider_v.provide () ;;
let tag_db1_ddd = Tag_v.map_entity 
      Coordinate_symbol_v.coordinate_symbol_of_coordinate_context_domaindata_symbol 
      tag_ddd;;

test_number 4 (
(tag_db1_ddd : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Coordinate_context_symbol
    (Coordinate_context_symbol_t.Coordinate_context_domaindata_symbol
      (Coordinate_context_domaindata_symbol_t.Coordinate_context_domaindata_constructor
        "skeleton")),
   [22; 6])
);;

let tag_dcd = Coordinate_context_domain_tag_by_unit_provider_v.provide ();;
let tag_db1_dcd = Tag_v.map_entity 
      Coordinate_symbol_v.coordinate_symbol_of_coordinate_context_domain_symbol 
      tag_dcd;;

test_number 5 (
( tag_db1_dcd : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Coordinate_context_symbol
    (Coordinate_context_symbol_t.Coordinate_context_domain_symbol
      (Coordinate_context_domain_symbol_t.Coordinate_context_domain_constructor
        "database")),
   [6])
);;

let sym_db1_nbo_st = 
    Coordinate_symbol_subtree_by_coordinate_context_databox_tag_provider_v.provide 
      tag_nbo ;;

let sym_rtn_l = Tree_v.root_topson_node_list_off_tree sym_db1_nbo_st;;

test_number 6 (
( sym_rtn_l : Coordinate_symbol_t.coordinate_symbol list ) =
 [Coordinate_symbol_t.Coordinate_context_symbol
    (Coordinate_context_symbol_t.Coordinate_context_databox_symbol
      (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
        "lanl2dz"));
   Coordinate_symbol_t.Coordinate_context_symbol
    (Coordinate_context_symbol_t.Coordinate_context_version_symbol
      (Coordinate_context_version_symbol_t.Coordinate_context_version_constructor "v1.2.2"));
   Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
    (Coordinate_body_symbol_t.Coordinate_body_node_symbol
      (Coordinate_body_node_symbol_t.Coordinate_body_node_aobasis_block "lanl2dz"));
   Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
    (Coordinate_body_symbol_t.Coordinate_body_node_symbol
      (Coordinate_body_node_symbol_t.Coordinate_body_node_ecpbasis_block "lanl2dz"))]
);;

let soi_db1_nbo_st = Sole_index_v.sole_index_tree_of_tree_of_root_sole_index sym_db1_nbo_st soi_nbo;;

let tag_db1_nbo_st = Tree_v.map2 Tag_v.make sym_db1_nbo_st soi_db1_nbo_st;;
let tag_db1_dba_st = Tree_v.make_of_node tag_db1_dba [tag_db1_nbo_st];;
let tag_db1_ddd_st = Tree_v.make_of_node tag_db1_ddd [tag_db1_dba_st];;

let tag_db1_t = Tree_v.make_of_node tag_db1_dcd [tag_db1_ddd_st];;

test_number 7 (
tag_db1_t = provide tag_nbo
);;

(* Analysis *)

let tag_rtn_l = Tree_v.root_topson_node_list_off_tree tag_db1_t;;

let tag_top_l = Tree_v.node_list_of_node_predicate_off_tree (fun (s, i) -> List.length i <= 5) tag_db1_t;;

test_number 8 (
(tag_top_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_domain_symbol
       (Coordinate_context_domain_symbol_t.Coordinate_context_domain_constructor
         "database")),
    [6]);
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_domaindata_symbol
       (Coordinate_context_domaindata_symbol_t.Coordinate_context_domaindata_constructor
         "skeleton")),
    [22; 6]);
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_database_symbol
       (Coordinate_context_database_symbol_t.Coordinate_context_database_constructor
         "db1points")),
    [5; 22; 6]);
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_databox_symbol
       (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
         "lanl2dz")),
    [5; 5; 22; 6]);
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_version_symbol
       (Coordinate_context_version_symbol_t.Coordinate_context_version_constructor
         "v1.2.2")),
    [1; 5; 5; 22; 6]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aobasis_block "lanl2dz")),
    [2; 5; 5; 22; 6]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_ecpbasis_block "lanl2dz")),
    [3; 5; 5; 22; 6])]
);;

let tag_lea_l = Tree_v.leaf_node_list_off_tree tag_db1_t;;
let tag_lea_l = List.filter (fun (s, i) -> not (
  (Coordinate_symbol_v.is_coordinate_comment_reference s) 
|| (Coordinate_symbol_v.is_coordinate_set_body_keyword_symbol_off_coordinate_symbol s) 
|| (Coordinate_symbol_v.is_coordinate_comment_symbol_off_coordinate_symbol s) 
) ) tag_lea_l;;

let tag_clo_l = List.filter (fun (s, i) -> (Coordinate_symbol_v.is_coordinate_set_fence_symbol_off_coordinate_symbol s) )  tag_lea_l;;


let soi_nfe = [1; 3; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6];;
let tag_nfe = Coordinate_any_category_by_sole_index_extractor_v.coordinate_set_fence_tag_off_sole_index soi_nfe;;
let tag_db1_fen = Tag_v.map_entity Coordinate_symbol_v.coordinate_symbol_of_coordinate_fence_symbol tag_nfe;;

test_number 9 (
(tag_db1_fen : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
    (Coordinate_fence_symbol_t.Coordinate_fence_float_positive "43.7700000"),
   [1; 3; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6])
);;

let tag_pat = List.rev (Tree_v.path_of_node_predicate_off_tree (fun t -> t = tag_db1_fen) tag_db1_t);;

test_number 10 (
(tag_pat : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_domain_symbol
       (Coordinate_context_domain_symbol_t.Coordinate_context_domain_constructor
         "database")),
    [6]);
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_domaindata_symbol
       (Coordinate_context_domaindata_symbol_t.Coordinate_context_domaindata_constructor
         "skeleton")),
    [22; 6]);
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_database_symbol
       (Coordinate_context_database_symbol_t.Coordinate_context_database_constructor
         "db1points")),
    [5; 22; 6]);
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_databox_symbol
       (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
         "lanl2dz")),
    [5; 5; 22; 6]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aobasis_block "lanl2dz")),
    [2; 5; 5; 22; 6]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_block "lanl2dz")),
    [2; 2; 5; 5; 22; 6]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_anycenter_block
         "lanl2dz")),
    [2; 2; 2; 5; 5; 22; 6]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_onecenter_block "ne")),
    [1; 2; 2; 2; 5; 5; 22; 6]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_anyshell_block "ne")),
    [2; 1; 2; 2; 2; 5; 5; 22; 6]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_oneshell_block
         "ne s 1 gaussian")),
    [1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values_block
         "ne s 1 gaussian")),
    [2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values
         "ne s 1 gaussian 3")),
    [3; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
     (Coordinate_fence_symbol_t.Coordinate_fence_float_positive "43.7700000"),
    [1; 3; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6])]
);;
