open Make_test_v;;

testing "Coordinate_tag_tree_by_coordinate_context_databox_tag_provider_v with
    Coordinate_tag_tree_by_coordinate_context_databox_tag_provider_u_lanl2dz_analysis_tree.ml";;

(* Deleting Registers *)




(* Tracing *)


(* toplevel 
   #use "Coordinate_tag_tree_by_coordinate_context_databox_tag_provider_u_lanl2dz_analysis_tree.ml";; 

*)

(* Database file *)

let nam_bas = "lanl2dz";;
let nam_dfi = "db1points";;

(* Analysis_tree *)

let tag_ncb = Coordinate_context_databox_tag_by_databox_name_n_database_name_provider_v.provide nam_bas;;

test_number 1 ( 
( tag_ncb : Coordinate_context_databox_symbol_t.coordinate_context_databox_symbol Tag_t.tag ) =
  (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor "lanl2dz",
   [5; 5; 19; 5])
);;

let fno_db1 = Coordinate_fullnameoffile_by_coordinate_context_databox_tag_provider_v.provide tag_ncb;;

test_number 2 (
(fno_db1 : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/databaseset/skeletondata/db1points/files/lanl2dz.db1"
);;

let tag_db1_t = Coordinate_tag_tree_by_coordinate_context_databox_tag_provider_v.provide tag_ncb;;

(* Top *)

let tag_db1_rtn_l = Tree_v.node_filter_of_node_predicate_off_tree (fun (s, i) -> List.length i < 5) tag_db1_t;; 

test_number 3 ( 
(tag_db1_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_domain_symbol
       (Coordinate_context_domain_symbol_t.Coordinate_context_domain_constructor
         "database")),
    [5]);
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_domaindata_symbol
       (Coordinate_context_domaindata_symbol_t.Coordinate_context_domaindata_constructor
         "skeleton")),
    [19; 5]);
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_database_symbol
       (Coordinate_context_database_symbol_t.Coordinate_context_database_constructor
         "db1points")),
    [5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_databox_symbol
       (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
         "lanl2dz")),
    [5; 5; 19; 5])]
);;

(* Coordinate_body_node_aoset_block *)

let tag_db1_rtn_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree (fun (s, i) ->
  Coordinate_symbol_v.is_coordinate_set_body_node_aoset_block s) 
    tag_db1_t;; 

test_number 4 (
(tag_db1_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_block "lanl2dz")),
    [2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_definition
         "lanl2dz")),
    [1; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_anycenter_block
         "lanl2dz")),
    [2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_directive_symbol
       Coordinate_body_directive_symbol_t.Coordinate_body_directive_end),
    [3; 2; 2; 5; 5; 19; 5])]
);;

(* Coordinate_body_node_aoset_anycenter_block *)

let tag_db1_rtn_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree (fun (s, i) ->
  Coordinate_symbol_v.is_coordinate_set_body_node_aoset_anycenter_block s) 
    tag_db1_t;; 

test_number 5 (
(tag_db1_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_anycenter_block
         "lanl2dz")),
    [2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_onecenter_block
         "ne")),
    [1; 2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_onecenter_block
         "au")),
    [2; 2; 2; 2; 5; 5; 19; 5])]
);;

(* Coordinate_body_node_aoset_onecenter_block "ne" *)

let tag_db1_rtn_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Coordinate_symbol_v.is_coordinate_set_body_node_aoset_onecenter_block s)
	&& 
      (Coordinate_symbol_v.string_off s = "ne")
    ) 
    tag_db1_t;; 

test_number 6 (
(tag_db1_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_onecenter_block
         "ne")),
    [1; 2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_center_contraction_scheme
         "ne")),
    [1; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_anyshell_block
         "ne")),
    [2; 1; 2; 2; 2; 5; 5; 19; 5])]
);;

(* Coordinate_body_node_aoset_anyshell_block "ne" *)

let tag_db1_rtn_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Coordinate_symbol_v.is_coordinate_set_body_node_aoset_anyshell_block s)
	&& 
      (Coordinate_symbol_v.string_off s = "ne")
    ) 
    tag_db1_t;; 

test_number 7 (
(tag_db1_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_anyshell_block
         "ne")),
    [2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_oneshell_block
         "ne s 1 gaussian")),
    [1; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_oneshell_block
         "ne s 2 gaussian")),
    [2; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_oneshell_block
         "ne s 3 gaussian")),
    [3; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_oneshell_block
         "ne p 4 gaussian")),
    [4; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_oneshell_block
         "ne p 5 gaussian")),
    [5; 2; 1; 2; 2; 2; 5; 5; 19; 5])]
);;

let tag_db1_rtn_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Coordinate_symbol_v.is_coordinate_set_body_node_aoset_oneshell_block s)
	&& 
      (Coordinate_symbol_v.string_off s = "ne p 4 gaussian")
    ) 
    tag_db1_t;; 

test_number 8 (
(tag_db1_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_oneshell_block
         "ne p 4 gaussian")),
    [4; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_center_and_shell_name
         "ne p 4 gaussian")),
    [1; 4; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values_block
         "ne p 4 gaussian")),
    [2; 4; 2; 1; 2; 2; 2; 5; 5; 19; 5])]
);;

(* Coordinate_body_node_center_and_shell_name *)

let tag_db1_rtn_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Coordinate_symbol_v.is_coordinate_set_body_node_center_and_shell_name s) 
	&& 
      (Coordinate_symbol_v.string_off s = "ne p 4 gaussian")
    ) 
    tag_db1_t;; 

test_number 9 (
( tag_db1_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_center_and_shell_name
         "ne p 4 gaussian")),
    [1; 4; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_variable_symbol
       (Coordinate_body_variable_symbol_t.Coordinate_body_variable_center_name "ne")),
    [1; 1; 4; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_variable_symbol
       (Coordinate_body_variable_symbol_t.Coordinate_body_variable_shell_name "P")),
    [2; 1; 4; 2; 1; 2; 2; 2; 5; 5; 19; 5])]
);;

(* Coordinate_body_node_aoset_numerical_values_block *)

let tag_db1_rtn_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Coordinate_symbol_v.is_coordinate_set_body_node_aoset_numerical_values_block s) 
	&& 
      (Coordinate_symbol_v.string_off s = "ne p 4 gaussian")
    ) 
    tag_db1_t;; 

test_number 10 (
( tag_db1_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values_block
         "ne p 4 gaussian")),
    [2; 4; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values
         "ne p 4 gaussian 1")),
    [1; 2; 4; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values
         "ne p 4 gaussian 2")),
    [2; 2; 4; 2; 1; 2; 2; 2; 5; 5; 19; 5])]
);;

(* Coordinate_body_node_aoset_numerical_values_block *)

let tag_db1_rtn_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Coordinate_symbol_v.is_coordinate_set_body_node_aoset_numerical_values_block s)
	&& 
      (Coordinate_symbol_v.string_off s = "au p 4 gaussian")
    ) 
    tag_db1_t;; 

test_number 11 (
( tag_db1_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values_block
         "au p 4 gaussian")),
    [2; 4; 2; 2; 2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values
         "au p 4 gaussian 1")),
    [1; 2; 4; 2; 2; 2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values
         "au p 4 gaussian 2")),
    [2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 19; 5])]
);;

(* Coordinate_body_node_aoset_numerical_values *)

let tag_db1_rtn_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Coordinate_symbol_v.is_coordinate_set_body_node_aoset_numerical_values s)
	&& 
      (Coordinate_symbol_v.string_off s = "au p 4 gaussian 2")
    ) 
    tag_db1_t;; 

test_number 12 (
( tag_db1_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values
         "au p 4 gaussian 2")),
    [2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
     (Coordinate_fence_symbol_t.Coordinate_fence_float_positive "0.0977000"),
    [1; 2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
     (Coordinate_fence_symbol_t.Coordinate_fence_float_positive "1.0299147"),
    [2; 2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 19; 5])]
);;

let tag_db1_st = Tree_v.subtree_list_of_node_predicate_off_tree 
    (fun (s, i) ->
      (Coordinate_symbol_v.is_coordinate_set_body_node_aoset_numerical_values s)
	&& 
      (Coordinate_symbol_v.string_off s = "au p 4 gaussian 2")
    ) 
    tag_db1_t;; 

test_number 13 (
(tag_db1_st : Coordinate_symbol_t.coordinate_symbol Tag_t.tag Tree_t.tree list ) =
  [Tree_t.Inner
    ((Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
       (Coordinate_body_symbol_t.Coordinate_body_node_symbol
         (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values
           "au p 4 gaussian 2")),
      [2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 19; 5]),
    [Tree_t.Leaf
      (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
        (Coordinate_fence_symbol_t.Coordinate_fence_float_positive "0.0977000"),
       [1; 2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 19; 5]);
     Tree_t.Leaf
      (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
        (Coordinate_fence_symbol_t.Coordinate_fence_float_positive "1.0299147"),
       [2; 2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 19; 5])])]
);;
