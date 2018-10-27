open Make_test_v;;

testing "Parameter_tag_tree_by_parameter_context_databox_tag_provider_v with
    Parameter_tag_tree_by_parameter_context_databox_tag_provider_u_lanl2dz_analysis_tree.ml";;

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
   #use "Parameter_tag_tree_by_parameter_context_databox_tag_provider_u_lanl2dz_analysis_tree.ml";; 

*)

(* Database file *)

let nam_dbo = "LANL2DZ";;
let nam_dba = "nwchem";;

(* Analysis_tree *)

let tag_ncb = Parameter_context_databox_tag_by_databox_name_n_database_name_provider_v.provide nam_dbo;;

test_number 1 ( 
( tag_ncb : Parameter_context_databox_symbol_t.parameter_context_databox_symbol Tag_t.tag ) =
  (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor "LANL2DZ",
   [9; 5; 6; 5])
);;

let fno_nwc = Parameter_fullnameoffile_by_parameter_context_databox_tag_provider_v.provide tag_ncb;;

test_number 2 (
(fno_nwc : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/databaseset/skeletondata/nwchem/files/LANL2DZ.nwc"
);;

let tag_nwc_t = Parameter_tag_tree_by_parameter_context_databox_tag_provider_v.provide tag_ncb;;

(* Top *)

let tag_nwc_tso_l = Tree_v.node_filter_of_node_predicate_off_tree (fun (s, i) -> List.length i < 5) tag_nwc_t;; 

test_number 3 ( 
(tag_nwc_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_domain_symbol
       (Parameter_context_domain_symbol_t.Parameter_context_domain_constructor
         "database")),
    [5]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_domaindata_symbol
       (Parameter_context_domaindata_symbol_t.Parameter_context_domaindata_constructor
         "skeleton")),
    [19; 5]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_database_symbol
       (Parameter_context_database_symbol_t.Parameter_context_database_constructor
         "nwchem")),
    [5; 19; 5]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_databox_symbol
       (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
         "LANL2DZ")),
    [9; 5; 6; 5])]
);;

(* Parameter_set_body_node_aoset_block *)

let tag_nwc_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree (fun (s, i) ->
  Parameter_symbol_v.is_parameter_set_body_node_aoset_block s) 
    tag_nwc_t;; 

test_number 4 (
(tag_nwc_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_block "LANL2DZ")),
    [2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_definition
         "LANL2DZ")),
    [1; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_anycenter_block
         "LANL2DZ")),
    [2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_directive_symbol
       Parameter_set_body_directive_symbol_t.Parameter_set_body_directive_end),
    [3; 2; 2; 9; 5; 6; 5])]
);;

(* Parameter_set_body_node_aoset_anycenter_block *)

let tag_nwc_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree (fun (s, i) ->
  Parameter_symbol_v.is_parameter_set_body_node_aoset_anycenter_block s) 
    tag_nwc_t;; 

test_number 5 (
(tag_nwc_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_anycenter_block
         "LANL2DZ")),
    [2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_onecenter_block
         "ne")),
    [1; 2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_onecenter_block
         "au")),
    [2; 2; 2; 2; 9; 5; 6; 5])]
);;

(* Parameter_set_body_node_aoset_onecenter_block "ne" *)

let tag_nwc_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Parameter_symbol_v.is_parameter_set_body_node_aoset_onecenter_block s)
	&& 
      (Parameter_symbol_v.string_off s = "ne")
    ) 
    tag_nwc_t;; 

test_number 6 (
(tag_nwc_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_onecenter_block
         "ne")),
    [1; 2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_center_contraction_scheme
         "ne")),
    [1; 1; 2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_anyshell_block
         "ne")),
    [2; 1; 2; 2; 2; 9; 5; 6; 5])]
);;

(* Parameter_set_body_node_aoset_anyshell_block "ne" *)

let tag_nwc_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Parameter_symbol_v.is_parameter_set_body_node_aoset_anyshell_block s)
	&& 
      (Parameter_symbol_v.string_off s = "ne")
    ) 
    tag_nwc_t;; 

test_number 7 (
(tag_nwc_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_anyshell_block
         "ne")),
    [2; 1; 2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_oneshell_block
         "ne s 1 gaussian")),
    [1; 2; 1; 2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_oneshell_block
         "ne s 2 gaussian")),
    [2; 2; 1; 2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_oneshell_block
         "ne s 3 gaussian")),
    [3; 2; 1; 2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_oneshell_block
         "ne p 4 gaussian")),
    [4; 2; 1; 2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_oneshell_block
         "ne p 5 gaussian")),
    [5; 2; 1; 2; 2; 2; 9; 5; 6; 5])]
);;

let tag_nwc_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Parameter_symbol_v.is_parameter_set_body_node_aoset_oneshell_block s)
	&& 
      (Parameter_symbol_v.string_off s = "ne p 4 gaussian")
    ) 
    tag_nwc_t;; 

test_number 8 (
(tag_nwc_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_oneshell_block
         "ne p 4 gaussian")),
    [4; 2; 1; 2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_center_and_shell_name
         "ne p 4 gaussian")),
    [1; 4; 2; 1; 2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues_block
         "ne p 4 gaussian")),
    [2; 4; 2; 1; 2; 2; 2; 9; 5; 6; 5])]
);;

(* Parameter_set_body_node_center_and_shell_name *)

let tag_nwc_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Parameter_symbol_v.is_parameter_set_body_node_center_and_shell_name s) 
	&& 
      (Parameter_symbol_v.string_off s = "ne p 4 gaussian")
    ) 
    tag_nwc_t;; 

test_number 9 (
( tag_nwc_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_center_and_shell_name
         "ne p 4 gaussian")),
    [1; 4; 2; 1; 2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_variable_symbol
       (Parameter_set_body_variable_symbol_t.Parameter_set_body_variable_center_name "ne")),
    [1; 1; 4; 2; 1; 2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_variable_symbol
       (Parameter_set_body_variable_symbol_t.Parameter_set_body_variable_shell_name "P")),
    [2; 1; 4; 2; 1; 2; 2; 2; 9; 5; 6; 5])]
);;

(* Parameter_set_body_node_aoset_numericalvalues_block *)

let tag_nwc_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Parameter_symbol_v.is_parameter_set_body_node_aoset_numericalvalues_block s) 
	&& 
      (Parameter_symbol_v.string_off s = "ne p 4 gaussian")
    ) 
    tag_nwc_t;; 

test_number 10 (
( tag_nwc_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues_block
         "ne p 4 gaussian")),
    [2; 4; 2; 1; 2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues
         "ne p 4 gaussian 1")),
    [1; 2; 4; 2; 1; 2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues
         "ne p 4 gaussian 2")),
    [2; 2; 4; 2; 1; 2; 2; 2; 9; 5; 6; 5])]
);;

(* Parameter_set_body_node_aoset_numericalvalues_block *)

let tag_nwc_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Parameter_symbol_v.is_parameter_set_body_node_aoset_numericalvalues_block s)
	&& 
      (Parameter_symbol_v.string_off s = "au p 4 gaussian")
    ) 
    tag_nwc_t;; 

test_number 11 (
( tag_nwc_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues_block
         "au p 4 gaussian")),
    [2; 4; 2; 2; 2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues
         "au p 4 gaussian 1")),
    [1; 2; 4; 2; 2; 2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues
         "au p 4 gaussian 2")),
    [2; 2; 4; 2; 2; 2; 2; 2; 9; 5; 6; 5])]
);;

(* Parameter_set_body_node_aoset_numericalvalues *)

let tag_nwc_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Parameter_symbol_v.is_parameter_set_body_node_aoset_numericalvalues s)
	&& 
      (Parameter_symbol_v.string_off s = "au p 4 gaussian 2")
    ) 
    tag_nwc_t;; 

test_number 12 (
( tag_nwc_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues
         "au p 4 gaussian 2")),
    [2; 2; 4; 2; 2; 2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "0.0977000"),
    [1; 2; 2; 4; 2; 2; 2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "1.0299147"),
    [2; 2; 2; 4; 2; 2; 2; 2; 2; 9; 5; 6; 5])]
);;

let tag_nwc_st = Tree_v.subtree_list_of_node_predicate_off_tree 
    (fun (s, i) ->
      (Parameter_symbol_v.is_parameter_set_body_node_aoset_numericalvalues s)
	&& 
      (Parameter_symbol_v.string_off s = "au p 4 gaussian 2")
    ) 
    tag_nwc_t;; 

test_number 13 (
(tag_nwc_st : Parameter_symbol_t.parameter_symbol Tag_t.tag Tree_t.tree list ) =
  [Tree_t.Inner
    ((Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
       (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
         (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues
           "au p 4 gaussian 2")),
      [2; 2; 4; 2; 2; 2; 2; 2; 9; 5; 6; 5]),
    [Tree_t.Leaf
      (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
        (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "0.0977000"),
       [1; 2; 2; 4; 2; 2; 2; 2; 2; 9; 5; 6; 5]);
     Tree_t.Leaf
      (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
        (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "1.0299147"),
       [2; 2; 2; 4; 2; 2; 2; 2; 2; 9; 5; 6; 5])])]
);;
