open Make_test_v;;

testing "Elementary_tag_tree_by_elementary_context_databox_tag_provider_v with
    Elementary_tag_tree_by_elementary_context_databox_tag_provider_u_lanl2dz_analysis_tree.ml";;

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
   #use "Elementary_tag_tree_by_elementary_context_databox_tag_provider_u_lanl2dz_analysis_tree.ml";; 

*)

(* Database file *)

let nam_bas = "lanl2dz";;
let nam_dfi = "nwchem";;

(* Analysis_tree *)

let tag_ncb = Elementary_context_databox_tag_by_databox_name_n_database_name_provider_v.provide nam_bas;;

test_number 1 ( 
( tag_ncb : Elementary_context_databox_symbol_t.elementary_context_databox_symbol Tag_t.tag ) =
  (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor "lanl2dz",
   [5; 5; 19; 5])
);;

let fno_nwc = Elementary_fullnameoffile_by_elementary_context_databox_tag_provider_v.provide tag_ncb;;

test_number 2 (
(fno_nwc : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/databaseset/skeletondata/nwchem/files/lanl2dz.nwc"
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
         "lanl2dz")),
    [5; 5; 19; 5])]
);;

(* Elementary_body_node_aoset_block *)

let tag_nwc_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree (fun (s, i) ->
  Elementary_symbol_v.is_elementary_body_node_aoset_block s) 
    tag_nwc_t;; 

test_number 4 (
(tag_nwc_tso_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_block "lanl2dz")),
    [2; 2; 5; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_definition
         "lanl2dz")),
    [1; 2; 2; 5; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_anycenter_block
         "lanl2dz")),
    [2; 2; 2; 5; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_directive_symbol
       Elementary_body_directive_symbol_t.Elementary_body_directive_end),
    [3; 2; 2; 5; 5; 19; 5])]
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
         "lanl2dz")),
    [2; 2; 2; 5; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_onecenter_block
         "ne")),
    [1; 2; 2; 2; 5; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_onecenter_block
         "au")),
    [2; 2; 2; 2; 5; 5; 19; 5])]
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
    [1; 2; 2; 2; 5; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_center_contraction_scheme
         "ne")),
    [1; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_anyshell_block
         "ne")),
    [2; 1; 2; 2; 2; 5; 5; 19; 5])]
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
    [2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_oneshell_block
         "ne s 1 gaussian")),
    [1; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_oneshell_block
         "ne s 2 gaussian")),
    [2; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_oneshell_block
         "ne s 3 gaussian")),
    [3; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_oneshell_block
         "ne p 4 gaussian")),
    [4; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_oneshell_block
         "ne p 5 gaussian")),
    [5; 2; 1; 2; 2; 2; 5; 5; 19; 5])]
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
    [4; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_center_and_shell_name
         "ne p 4 gaussian")),
    [1; 4; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_numerical_values_block
         "ne p 4 gaussian")),
    [2; 4; 2; 1; 2; 2; 2; 5; 5; 19; 5])]
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
    [1; 4; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_variable_symbol
       (Elementary_body_variable_symbol_t.Elementary_body_variable_center_name "ne")),
    [1; 1; 4; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_variable_symbol
       (Elementary_body_variable_symbol_t.Elementary_body_variable_shell_name "P")),
    [2; 1; 4; 2; 1; 2; 2; 2; 5; 5; 19; 5])]
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
    [2; 4; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_numerical_values
         "ne p 4 gaussian 1")),
    [1; 2; 4; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_numerical_values
         "ne p 4 gaussian 2")),
    [2; 2; 4; 2; 1; 2; 2; 2; 5; 5; 19; 5])]
);;

(* Elementary_body_node_aoset_numerical_values_block *)

let tag_nwc_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Elementary_symbol_v.is_elementary_body_node_aoset_numerical_values_block s)
	&& 
      (Elementary_symbol_v.string_off s = "au p 4 gaussian")
    ) 
    tag_nwc_t;; 

test_number 11 (
( tag_nwc_tso_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_numerical_values_block
         "au p 4 gaussian")),
    [2; 4; 2; 2; 2; 2; 2; 5; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_numerical_values
         "au p 4 gaussian 1")),
    [1; 2; 4; 2; 2; 2; 2; 2; 5; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_numerical_values
         "au p 4 gaussian 2")),
    [2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 19; 5])]
);;

(* Elementary_body_node_aoset_numerical_values *)

let tag_nwc_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Elementary_symbol_v.is_elementary_body_node_aoset_numerical_values s)
	&& 
      (Elementary_symbol_v.string_off s = "au p 4 gaussian 2")
    ) 
    tag_nwc_t;; 

test_number 12 (
( tag_nwc_tso_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aoset_numerical_values
         "au p 4 gaussian 2")),
    [2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_float_positive "0.0977000"),
    [1; 2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 19; 5]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_float_positive "1.0299147"),
    [2; 2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 19; 5])]
);;

let tag_nwc_st = Tree_v.subtree_list_of_node_predicate_off_tree 
    (fun (s, i) ->
      (Elementary_symbol_v.is_elementary_body_node_aoset_numerical_values s)
	&& 
      (Elementary_symbol_v.string_off s = "au p 4 gaussian 2")
    ) 
    tag_nwc_t;; 

test_number 13 (
(tag_nwc_st : Elementary_symbol_t.elementary_symbol Tag_t.tag Tree_t.tree list ) =
  [Tree_t.Inner
    ((Elementary_symbol_t.Elementary_body_symbol
       (Elementary_body_symbol_t.Elementary_body_node_symbol
         (Elementary_body_node_symbol_t.Elementary_body_node_aoset_numerical_values
           "au p 4 gaussian 2")),
      [2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 19; 5]),
    [Tree_t.Leaf
      (Elementary_symbol_t.Elementary_fence_symbol
        (Elementary_fence_symbol_t.Elementary_fence_float_positive "0.0977000"),
       [1; 2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 19; 5]);
     Tree_t.Leaf
      (Elementary_symbol_t.Elementary_fence_symbol
        (Elementary_fence_symbol_t.Elementary_fence_float_positive "1.0299147"),
       [2; 2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 19; 5])])]
);;
