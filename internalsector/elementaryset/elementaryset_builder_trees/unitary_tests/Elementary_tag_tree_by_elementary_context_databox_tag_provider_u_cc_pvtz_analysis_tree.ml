open Make_test_v;;

testing "Elementary_tag_tree_by_elementary_context_databox_tag_provider_v with
    Elementary_tag_tree_by_elementary_context_databox_tag_provider_u_cc_pVTZ_analysis_tree.ml";;

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
   #use "Elementary_tag_tree_by_elementary_context_databox_tag_provider_u_cc_pVTZ_analysis_tree.ml";; 

*)

(* Database file *)

let nam_bas = "cc_pVTZ";;
let nam_dfi = "nwchem";;

(* Analysis_tree *)

let tag_ncb = Elementary_context_databox_tag_by_databox_name_n_database_name_provider_v.provide nam_bas;;

test_number 1 ( 
( tag_ncb : Elementary_context_databox_symbol_t.elementary_context_databox_symbol Tag_t.tag ) =
  (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor "cc_pVTZ",
   [4; 5; 19; 5])
);;

let fno_nwc = Elementary_fullnameoffile_by_elementary_context_databox_tag_provider_v.provide tag_ncb;;

test_number 2 (
(fno_nwc : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/databaseset/skeletondata/nwchem/files/cc_pVTZ.nwc"
);;

let tag_nwc_t = Elementary_tag_tree_by_elementary_context_databox_tag_provider_v.provide tag_ncb;;

(* Top *)

let tag_nwc_tso_l = Tree_v.node_filter_of_node_predicate_off_tree (fun (s, i) -> List.length i < 5) tag_nwc_t;; 

test_number 3 ( 
(tag_nwc_tso_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_domain_symbol
       (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor
         "database")),
    [5]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_domaindata_symbol
       (Elementary_context_domaindata_symbol_t.Elementary_context_domaindata_constructor
         "skeleton")),
    [19; 5]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_database_symbol
       (Elementary_context_database_symbol_t.Elementary_context_database_constructor
         "nwchem")),
    [5; 19; 5]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_databox_symbol
       (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
         "cc-pvtz")),
    [4; 5; 19; 5])]
);;

(* Elementary_body_node_aoset_block *)

let tag_nwc_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree (fun (s, i) ->
  Elementary_symbol_v.is_elementary_body_node_aoset_block s) 
    tag_nwc_t;; 

test_number 4 (
(tag_nwc_tso_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_block "cc-pvtz")),
    [2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_definition
         "cc-pvtz")),
    [1; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_anycenter_block
         "cc-pvtz")),
    [2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_directive_symbol
       Elementary_body_directive_symbol_t.Elementary_body_directive_end),
    [3; 2; 2; 4; 5; 19; 5])]
);;

(* Elementary_body_node_aoset_anycenter_block *)

let tag_nwc_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree (fun (s, i) ->
  Elementary_symbol_v.is_elementary_body_node_aoset_anycenter_block s) 
    tag_nwc_t;; 

test_number 5 (
(tag_nwc_tso_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_anycenter_block
         "cc-pvtz")),
    [2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_onecenter_block
         "H")),
    [1; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_onecenter_block
         "He")),
    [2; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_onecenter_block
         "li")),
    [3; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_onecenter_block
         "be")),
    [4; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_onecenter_block
         "b")),
    [5; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_onecenter_block
         "c")),
    [6; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_onecenter_block
         "n")),
    [7; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_onecenter_block
         "o")),
    [8; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_onecenter_block
         "f")),
    [9; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_onecenter_block
         "ne")),
    [10; 2; 2; 2; 4; 5; 19; 5])]
);;

(* Elementary_body_node_aoset_onecenter_block "ne" *)

let tag_nwc_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Elementary_symbol_v.is_elementary_body_node_aoset_onecenter_block s)
	&& 
      (Elementary_symbol_v.string_off s = "ne")
    ) 
    tag_nwc_t;; 

test_number 6 (
(tag_nwc_tso_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_onecenter_block
         "ne")),
    [10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_center_contraction_scheme
         "ne")),
    [1; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_anyshell_block
         "ne")),
    [2; 10; 2; 2; 2; 4; 5; 19; 5])]
);;

(* Elementary_body_node_aoset_anyshell_block "ne" *)

let tag_nwc_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Elementary_symbol_v.is_elementary_body_node_aoset_anyshell_block s)
	&& 
      (Elementary_symbol_v.string_off s = "ne")
    ) 
    tag_nwc_t;; 

test_number 7 (
(tag_nwc_tso_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_anyshell_block
         "ne")),
    [2; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_oneshell_block
         "ne s 1 gaussian")),
    [1; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_oneshell_block
         "ne s 2 gaussian")),
    [2; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_oneshell_block
         "ne s 3 gaussian")),
    [3; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_oneshell_block
         "ne p 4 gaussian")),
    [4; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_oneshell_block
         "ne p 5 gaussian")),
    [5; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_oneshell_block
         "ne p 6 gaussian")),
    [6; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_oneshell_block
         "ne d 7 gaussian")),
    [7; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_oneshell_block
         "ne d 8 gaussian")),
    [8; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_oneshell_block
         "ne f 9 gaussian")),
    [9; 2; 10; 2; 2; 2; 4; 5; 19; 5])]
);;

let tag_nwc_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Elementary_symbol_v.is_elementary_body_node_aoset_oneshell_block s)
	&& 
      (Elementary_symbol_v.string_off s = "ne p 4 gaussian")
    ) 
    tag_nwc_t;; 

test_number 8 (
(tag_nwc_tso_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_oneshell_block
         "ne p 4 gaussian")),
    [4; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_center_and_shell_name
         "ne p 4 gaussian")),
    [1; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_numerical_values_block
         "ne p 4 gaussian")),
    [2; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5])]
);;

(* Elementary_body_node_center_and_shell_name *)

let tag_nwc_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Elementary_symbol_v.is_elementary_body_node_center_and_shell_name s) 
	&& 
      (Elementary_symbol_v.string_off s = "ne p 4 gaussian")
    ) 
    tag_nwc_t;; 

test_number 9 (
( tag_nwc_tso_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_center_and_shell_name
         "ne p 4 gaussian")),
    [1; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_variable_symbol
       (Elementary_body_variable_symbol_t.Elementary_body_variable_center_name "ne")),
    [1; 1; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_variable_symbol
       (Elementary_body_variable_symbol_t.Elementary_body_variable_shell_name "P")),
    [2; 1; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5])]
);;

(* Elementary_body_node_aoset_numerical_values_block *)

let tag_nwc_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Elementary_symbol_v.is_elementary_body_node_aoset_numerical_values_block s) 
	&& 
      (Elementary_symbol_v.string_off s = "ne p 4 gaussian")
    ) 
    tag_nwc_t;; 

test_number 10 (
( tag_nwc_tso_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_numerical_values_block
         "ne p 4 gaussian")),
    [2; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_numerical_values
         "ne p 4 gaussian 1")),
    [1; 2; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_numerical_values
         "ne p 4 gaussian 2")),
    [2; 2; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_numerical_values
         "ne p 4 gaussian 3")),
    [3; 2; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5])]

);;

(* Elementary_body_node_aoset_numerical_values_block *)

let tag_nwc_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Elementary_symbol_v.is_elementary_body_node_aoset_numerical_values_block s)
	&& 
      (Elementary_symbol_v.string_off s = "ne p 4 gaussian")
    ) 
    tag_nwc_t;; 

test_number 11 (
( tag_nwc_tso_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_numerical_values_block
         "ne p 4 gaussian")),
    [2; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_numerical_values
         "ne p 4 gaussian 1")),
    [1; 2; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_numerical_values
         "ne p 4 gaussian 2")),
    [2; 2; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_numerical_values
         "ne p 4 gaussian 3")),
    [3; 2; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5])]
);;

(* Elementary_body_node_aoset_numerical_values "ne p 4 gaussian 1" <=> "ne p 2 1" *)

let tag_nwc_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Elementary_symbol_v.is_elementary_body_node_aoset_numerical_values s)
	&& 
      (Elementary_symbol_v.string_off s = "ne p 4 gaussian 1")
    ) 
    tag_nwc_t;; 

test_number 12 (
( tag_nwc_tso_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_numerical_values
         "ne p 4 gaussian 1")),
    [1; 2; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_float_positive "54.7000000"),
    [1; 1; 2; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_float_positive "0.0171510"),
    [2; 1; 2; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5])]
);;

let tag_nwc_nep4_st = Tree_v.subtree_find_of_node_predicate_off_tree 
    (fun (s, i) ->
      (Elementary_symbol_v.is_elementary_body_node_aoset_numerical_values s)
	&& 
      (Elementary_symbol_v.string_off s = "ne p 4 gaussian 1")
    ) 
    tag_nwc_t;; 

test_number 13 (
(tag_nwc_nep4_st : Elementary_symbol_t.elementary_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Elementary_symbol_t.Elementary_body_symbol
      (Elementary_body_symbol_t.Elementary_body_node_symbol
        (Elementary_body_node_symbol_t.Elementary_body_node_aoset_numerical_values
          "ne p 4 gaussian 1")),
     [1; 2; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5]),
   [Tree_t.Leaf
     (Elementary_symbol_t.Elementary_fence_symbol
       (Elementary_fence_symbol_t.Elementary_fence_float_positive "54.7000000"),
      [1; 1; 2; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
    Tree_t.Leaf
     (Elementary_symbol_t.Elementary_fence_symbol
       (Elementary_fence_symbol_t.Elementary_fence_float_positive "0.0171510"),
      [2; 1; 2; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5])])
);;

let tag_fen = Tree_v.leaf_node_list_off_tree tag_nwc_nep4_st;;

test_number 14 (
(tag_fen : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_float_positive "54.7000000"),
    [1; 1; 2; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_float_positive "0.0171510"),
    [2; 1; 2; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5])]
);;

let str_flo_fen = List.map Elementary_tag_v.string_off tag_fen;;

test_number 15 (
(str_flo_fen : string list ) = 
["54.7000000"; "0.0171510"]
);;
