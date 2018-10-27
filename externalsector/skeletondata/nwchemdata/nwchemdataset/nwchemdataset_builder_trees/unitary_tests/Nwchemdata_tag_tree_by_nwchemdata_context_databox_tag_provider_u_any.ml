open Make_test_v;;

testing "Nwchemdata_tag_tree_by_nwchemdata_context_databox_tag_provider_v with
    Nwchemdata_tag_tree_by_nwchemdata_context_databox_tag_provider_u_any.ml";;

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
   #use "Nwchemdata_tag_tree_by_nwchemdata_context_databox_tag_provider_u_any.ml";; 

*)

open Make_test_v;;

testing "Nwchemdata_tag_tree_by_databox_name_provider_v with
    Nwchemdata_tag_tree_by_databox_name_provider_u_any.ml";;

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
   #use "Nwchemdata_tag_tree_by_nwchemdata_context_databox_tag_provider_u_any.ml";; 

*)

let nam_mod = "Nwchemdata_tag_tree_by_nwchemdata_context_databox_tag_provider_u_any";;

open Nwchemdata_tag_tree_by_nwchemdata_context_databox_tag_provider_v;;

let nam_dbo = "try_ao";;

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
         "try_ao")),
    [22; 5; 20; 2]),
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
    nam_nbo;;

let sym_nwc_tso_l = Tree_v.root_topson_node_list_off_tree sym_nwc_nbo_st;;

test_number 2 (
( sym_nwc_tso_l : Nwchemdata_symbol_t.nwchemdata_symbol list ) =
  [Nwchemdata_symbol_t.Nwchemdata_context_symbol
    (Nwchemdata_context_symbol_t.Nwchemdata_context_databox_symbol
      (Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
        "try_ao"));
   Nwchemdata_symbol_t.Nwchemdata_context_symbol
    (Nwchemdata_context_symbol_t.Nwchemdata_set_body_variable_version_symbol
      (Nwchemdata_set_body_variable_version_symbol_t.Nwchemdata_set_body_variable_version_constructor
        "v1.2.2"));
   Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
    (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
      (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aobasis_block
        "try_ao"))]
);;

let soi_nwc_nbo = Tag_v.sole_index_off_tag tag_nwc_nbo;;

test_number 3 (
(soi_nwc_nbo : Sole_index_t.sole_index ) = 
[22; 5; 20; 2]
);;

let soi_nwc_nbo_st =
  Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
    sym_nwc_nbo_st 
    soi_nwc_nbo 
;;

let soi_nwc_tso_l = Tree_v.root_topson_node_list_off_tree soi_nwc_nbo_st;;

test_number 4 (
(soi_nwc_tso_l : Sole_index_t.sole_index list ) =
[[22; 5; 20; 2]; [1; 22; 5; 20; 2]; [2; 22; 5; 20; 2]]
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

let tag_nwc_top_l = Tree_v.node_list_of_node_predicate_off_tree (fun (s, i) -> List.length i <= 5) tag_nwc_t;;

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
         "try_ao")),
    [22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_set_body_variable_version_symbol
       (Nwchemdata_set_body_variable_version_symbol_t.Nwchemdata_set_body_variable_version_constructor
         "v1.2.2")),
    [1; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aobasis_block
         "try_ao")),
    [2; 22; 5; 20; 2])]
);;

let tag_lea_l = Tree_v.leaf_node_list_off_tree tag_nwc_t;;
let tag_lea_l = List.filter (fun (s, i) -> not (
  (Nwchemdata_symbol_v.is_nwchemdata_comment_reference_constructor s) 
|| (Nwchemdata_symbol_v.is_nwchemdata_set_body_keyword_symbol_off_nwchemdata_symbol s) 
|| (Nwchemdata_symbol_v.is_nwchemdata_comment_symbol_off_nwchemdata_symbol s) 
) ) tag_lea_l;;

let tag_clo_l = List.filter 
    (fun (s, i) -> (Nwchemdata_symbol_v.is_nwchemdata_set_fence_symbol_off_nwchemdata_symbol s) )  
    tag_lea_l;;

test_number 7 (
(tag_clo_l : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_integer_positive "6"),
    [1; 1; 2; 2; 1; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_integer_positive "2"),
    [1; 1; 2; 4; 1; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "13.6267000"),
    [1; 1; 2; 1; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "0.1752300"),
    [2; 1; 2; 1; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "1.9993500"),
    [1; 2; 2; 1; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "0.8934830"),
    [2; 2; 2; 1; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "0.3829930"),
    [1; 1; 2; 2; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "1.0000000"),
    [2; 1; 2; 2; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "2.2818700"),
    [1; 1; 2; 3; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "0.2311520"),
    [2; 1; 2; 3; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "0.4652480"),
    [1; 2; 2; 3; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "0.8667640"),
    [2; 2; 2; 3; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "0.1243280"),
    [1; 1; 2; 4; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "1.0000000"),
    [2; 1; 2; 4; 2; 1; 2; 2; 2; 22; 5; 20; 2])]
);;

let tag_nwc_fen = List_v.only_element_of_predicate_off_list 
    (fun (s,i) -> s = (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
			 (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "13.6267000") )
    )	
    tag_clo_l;;

test_number 8 (
(tag_nwc_fen : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag ) =
  (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
    (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "13.6267000"),
   [1; 1; 2; 1; 2; 1; 2; 2; 2; 22; 5; 20; 2])
);;

let tag_pat = List.rev (Tree_v.path_of_node_predicate_off_tree (fun t -> t = tag_nwc_fen) tag_nwc_t);;

test_number 9 (
( tag_pat : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
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
         "try_ao")),
    [22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aobasis_block
         "try_ao")),
    [2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_block
         "try_ao")),
    [2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_anycenter_block
         "try_ao")),
    [2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_onecenter_block
         "He")),
    [1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_anyshell_block
         "He")),
    [2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_oneshell_block
         "He S 1 GAUSSIAN")),
    [1; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numerical_values_block
         "He S 1 GAUSSIAN")),
    [2; 1; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numerical_values
         "He S 1 GAUSSIAN 1")),
    [1; 2; 1; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "13.6267000"),
    [1; 1; 2; 1; 2; 1; 2; 2; 2; 22; 5; 20; 2])]
);;

let tag_nwc_l = Nwchemdata_tag_all_list_by_databox_name_provider_v.provide nam_nbo;;

let tag_nwc_nan_l = List.filter
    (fun (s,i) -> Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_numerical_values s)
    tag_nwc_l;;

test_number 10 (
( tag_nwc_nan_l : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numerical_values
         "He S 1 GAUSSIAN 1")),
    [1; 2; 1; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numerical_values
         "He S 1 GAUSSIAN 2")),
    [2; 2; 1; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numerical_values
         "He S 2 GAUSSIAN 1")),
    [1; 2; 2; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numerical_values
         "He P 3 GAUSSIAN 1")),
    [1; 2; 3; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numerical_values
         "He P 3 GAUSSIAN 2")),
    [2; 2; 3; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numerical_values
         "He P 4 GAUSSIAN 1")),
    [1; 2; 4; 2; 1; 2; 2; 2; 22; 5; 20; 2])]
);;

let tag_nwc_nan = List_v.only_element_of_predicate_off_list 
    (fun t -> Nwchemdata_tag_v.string_off t = "He S 1 GAUSSIAN 1")
    tag_nwc_nan_l;;

test_number 11 (
(tag_nwc_nan : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag ) =
  (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
    (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
      (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numerical_values
        "He S 1 GAUSSIAN 1")),
   [1; 2; 1; 2; 1; 2; 2; 2; 22; 5; 20; 2])
);;

let tag_nwc_flo_l = Nwchemdata_son_tag_list_by_nwchemdata_father_tag_provider_v.provide tag_nwc_nan;;

test_number 12 (
( tag_nwc_flo_l : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "13.6267000"),
    [1; 1; 2; 1; 2; 1; 2; 2; 2; 22; 5; 20; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "0.1752300"),
    [2; 1; 2; 1; 2; 1; 2; 2; 2; 22; 5; 20; 2])]
);;
