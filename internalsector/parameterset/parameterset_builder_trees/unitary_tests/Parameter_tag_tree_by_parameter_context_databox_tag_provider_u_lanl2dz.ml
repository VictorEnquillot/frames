open Make_test_v;;

testing "Parameter_tag_tree_by_parameter_context_databox_tag_provider_v with
    Parameter_tag_tree_by_parameter_context_databox_tag_provider_u_lanl2dz.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_parameter_context_databox_tag_register_v.register;;
Register_v.delete Parameter_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Parameter_fence_by_parameter_tag_register_v.register;;
Register_v.delete Parameter_son_tag_list_by_parameter_father_tag_register_v.register;;
Register_v.delete Parameter_symbol_by_sole_index_register_v.register;;
Register_v.delete Parameter_tag_all_list_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Parameter_tag_all_list_by_parameter_context_databox_tag_register_v.register;;
Register_v.delete Parameter_tag_subtree_by_parameter_tag_register_v.register;;
Register_v.delete Parameter_tag_tree_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Parameter_tag_tree_by_parameter_context_databox_tag_register_v.register;;



(* Tracing *)

(* toplevel 
   #use "Parameter_tag_tree_by_parameter_context_databox_tag_provider_u_lanl2dz.ml";; 

*)

(* Database file *)

let nam_dbo = "LANL2DZ";;
let nam_dba = "nwchem";;
let nam_mod = "Parameter_tag_tree_by_parameter_context_databox_tag_provider_u_lanl2dz";;

 
let tag_pbo = Parameter_context_databox_tag_by_databox_name_n_database_name_provider_v.provide nam_dbo;;

test_number 1 ( 
( tag_pbo : Parameter_context_databox_symbol_t.parameter_context_databox_symbol Tag_t.tag ) =
  (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
    "LANL2DZ",
   [5; 5; 22; 6])
);;

open Parameter_tag_tree_by_parameter_context_databox_tag_provider_v;;

let soi_pbo = Tag_v.sole_index_off_tag tag_pbo;;

test_number 2 (
(soi_pbo : Sole_index_t.sole_index) = 
[5; 5; 22; 6]
);;

let tag_pba = Parameter_context_database_tag_by_unit_provider_v.provide ();;
let tag_nwc_pba = Tag_v.map_entity 
      Parameter_symbol_v.parameter_symbol_of_parameter_context_database_symbol 
      tag_pba ;;

test_number 3 (
(tag_nwc_pba : Parameter_symbol_t.parameter_symbol Tag_t.tag ) =
  (Parameter_symbol_t.Parameter_context_symbol
    (Parameter_context_symbol_t.Parameter_context_database_symbol
      (Parameter_context_database_symbol_t.Parameter_context_database_constructor
        "nwchem")),
   [5; 22; 6])
);;

let tag_ddd = Parameter_context_domaindata_tag_by_unit_provider_v.provide () ;;
let tag_nwc_ddd = Tag_v.map_entity 
      Parameter_symbol_v.parameter_symbol_of_parameter_context_domaindata_symbol 
      tag_ddd;;

test_number 4 (
(tag_nwc_ddd : Parameter_symbol_t.parameter_symbol Tag_t.tag ) =
  (Parameter_symbol_t.Parameter_context_symbol
    (Parameter_context_symbol_t.Parameter_context_domaindata_symbol
      (Parameter_context_domaindata_symbol_t.Parameter_context_domaindata_constructor
        "skeleton")),
   [22; 6])
);;

let tag_dcd = Parameter_context_domain_tag_by_unit_provider_v.provide ();;
let tag_nwc_dcd = Tag_v.map_entity 
      Parameter_symbol_v.parameter_symbol_of_parameter_context_domain_symbol 
      tag_dcd;;

test_number 5 (
( tag_nwc_dcd : Parameter_symbol_t.parameter_symbol Tag_t.tag ) =
  (Parameter_symbol_t.Parameter_context_symbol
    (Parameter_context_symbol_t.Parameter_context_domain_symbol
      (Parameter_context_domain_symbol_t.Parameter_context_domain_constructor
        "database")),
   [6])
);;

let sym_nwc_pbo_st = 
    Parameter_symbol_subtree_by_parameter_context_databox_tag_provider_v.provide 
      tag_pbo ;;

let sym_tso_l = Tree_v.root_topson_node_list_off_tree sym_nwc_pbo_st;;

test_number 6 (
( sym_tso_l : Parameter_symbol_t.parameter_symbol list ) =
 [Parameter_symbol_t.Parameter_context_symbol
    (Parameter_context_symbol_t.Parameter_context_databox_symbol
      (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
        "LANL2DZ"));
   Parameter_symbol_t.Parameter_context_symbol
    (Parameter_context_symbol_t.Parameter_context_version_symbol
      (Parameter_context_version_symbol_t.Parameter_context_version_constructor "v1.2.2"));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
      (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aobasis_block "LANL2DZ"));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
      (Parameter_set_body_node_symbol_t.Parameter_set_body_node_ecpbasis_block "LANL2DZ"))]
);;

let soi_nwc_pbo_st = Sole_index_v.sole_index_tree_of_tree_of_root_sole_index sym_nwc_pbo_st soi_pbo;;

let tag_nwc_pbo_st = Tree_v.map2 Tag_v.make sym_nwc_pbo_st soi_nwc_pbo_st;;
let tag_nwc_pba_st = Tree_v.make_of_node tag_nwc_pba [tag_nwc_pbo_st];;
let tag_nwc_ddd_st = Tree_v.make_of_node tag_nwc_ddd [tag_nwc_pba_st];;

let tag_nwc_t = Tree_v.make_of_node tag_nwc_dcd [tag_nwc_ddd_st];;

test_number 7 (
tag_nwc_t = provide tag_pbo
);;

(* Analysis *)

let tag_tso_l = Tree_v.root_topson_node_list_off_tree tag_nwc_t;;

let tag_top_l = Tree_v.node_list_of_node_predicate_off_tree (fun (s, i) -> List.length i <= 5) tag_nwc_t;;

test_number 8 (
(tag_top_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_domain_symbol
       (Parameter_context_domain_symbol_t.Parameter_context_domain_constructor
         "database")),
    [6]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_domaindata_symbol
       (Parameter_context_domaindata_symbol_t.Parameter_context_domaindata_constructor
         "skeleton")),
    [22; 6]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_database_symbol
       (Parameter_context_database_symbol_t.Parameter_context_database_constructor
         "nwchem")),
    [5; 22; 6]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_databox_symbol
       (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
         "LANL2DZ")),
    [5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_version_symbol
       (Parameter_context_version_symbol_t.Parameter_context_version_constructor
         "v1.2.2")),
    [1; 5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aobasis_block "LANL2DZ")),
    [2; 5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_ecpbasis_block "LANL2DZ")),
    [3; 5; 5; 22; 6])]
);;

let tag_lea_l = Tree_v.leaf_node_list_off_tree tag_nwc_t;;
let tag_lea_l = List.filter (fun (s, i) -> not (
  (Parameter_symbol_v.is_parameter_comment_reference s) 
|| (Parameter_symbol_v.is_parameter_set_body_keyword_symbol_off_parameter_symbol s) 
|| (Parameter_symbol_v.is_parameter_comment_symbol_off_parameter_symbol s) 
) ) tag_lea_l;;

let tag_clo_l = List.filter (fun (s, i) -> (Parameter_symbol_v.is_parameter_set_fence_symbol_off_parameter_symbol s) )  tag_lea_l;;


let soi_nfe = [1; 3; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6];;
let tag_nfe = Parameter_any_category_by_sole_index_extractor_v.parameter_fence_tag_off_sole_index soi_nfe;;
let tag_nwc_fen = Tag_v.map_entity Parameter_symbol_v.parameter_symbol_of_parameter_set_fence_symbol tag_nfe;;

test_number 9 (
(tag_nwc_fen : Parameter_symbol_t.parameter_symbol Tag_t.tag ) =
  (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
    (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "43.7700000"),
   [1; 3; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6])
);;

let tag_pat = List.rev (Tree_v.path_of_node_predicate_off_tree (fun t -> t = tag_nwc_fen) tag_nwc_t);;

test_number 10 (
(tag_pat : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_domain_symbol
       (Parameter_context_domain_symbol_t.Parameter_context_domain_constructor
         "database")),
    [6]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_domaindata_symbol
       (Parameter_context_domaindata_symbol_t.Parameter_context_domaindata_constructor
         "skeleton")),
    [22; 6]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_database_symbol
       (Parameter_context_database_symbol_t.Parameter_context_database_constructor
         "nwchem")),
    [5; 22; 6]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_databox_symbol
       (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
         "LANL2DZ")),
    [5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aobasis_block "LANL2DZ")),
    [2; 5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_block "LANL2DZ")),
    [2; 2; 5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_anycenter_block
         "LANL2DZ")),
    [2; 2; 2; 5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_onecenter_block "ne")),
    [1; 2; 2; 2; 5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_anyshell_block "ne")),
    [2; 1; 2; 2; 2; 5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_oneshell_block
         "ne s 1 gaussian")),
    [1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues_block
         "ne s 1 gaussian")),
    [2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues
         "ne s 1 gaussian 3")),
    [3; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "43.7700000"),
    [1; 3; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6])]
);;
