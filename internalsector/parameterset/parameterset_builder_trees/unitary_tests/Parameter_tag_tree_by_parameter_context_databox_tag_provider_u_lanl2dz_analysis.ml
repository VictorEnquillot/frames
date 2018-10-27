open Make_test_v;;

testing "Parameter_tag_tree_by_parameter_context_databox_tag_provider_v with
    Parameter_tag_tree_by_parameter_context_databox_tag_provider_u_lanl2dz_analysis.ml";;

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
   #use "Parameter_tag_tree_by_parameter_context_databox_tag_provider_u_lanl2dz_analysis.ml";; 

*)

(* Database file *)

let nam_dbo = "LANL2DZ";;
 
(* Analysis *)

let tag_pbo = Parameter_context_databox_tag_by_databox_name_n_database_name_provider_v.provide nam_dbo;;

test_number 1 ( 
( tag_pbo : Parameter_context_databox_symbol_t.parameter_context_databox_symbol Tag_t.tag ) =
  (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor "LANL2DZ",
   [5; 5; 3])
);;

let fno_nwc = Parameter_fullnameoffile_by_parameter_context_databox_tag_provider_v.provide tag_pbo;;

test_number 2 (
(fno_nwc : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_parameter_lanl2dz.nwc"
);;


let tag_nwc_t = Parameter_tag_tree_by_parameter_context_databox_tag_provider_v.provide tag_pbo;;
let tag_nwc_l = Parameter_tag_all_list_by_parameter_context_databox_tag_provider_v.provide tag_pbo;;

(* dgn_body_node_aoset_block *)

let tag_dgn_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree (fun (s, i) ->
  Parameter_symbol_v.is_parameter_set_body_node_aoset_block s) 
    tag_nwc_t;; 

test_number 3 (
(tag_dgn_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_block "LANL2DZ")),
    [2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_definition "LANL2DZ")),
    [1; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_anycenter_block
         "LANL2DZ")),
    [2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_directive_symbol
       Parameter_set_body_directive_symbol_t.Parameter_set_body_directive_end),
    [3; 2; 2; 5; 5; 3])]
);;

(* dgn_body_node_aoset_anycenter_block *)

let tag_dgn_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree (fun (s, i) ->
  Parameter_symbol_v.is_parameter_set_body_node_aoset_anycenter_block s) 
    tag_nwc_t;; 

test_number 4 (
(tag_dgn_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
 [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_anycenter_block
         "LANL2DZ")),
    [2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_onecenter_block "Ne")),
    [1; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_onecenter_block "Au")),
    [2; 2; 2; 2; 5; 5; 3])]
);;

(* dgn_body_node_aoset_onecenter_block "Ne" *)

let tag_dgn_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Parameter_symbol_v.is_parameter_set_body_node_aoset_onecenter_block s)
	&& 
      (Parameter_symbol_v.string_off s = "Ne")
    ) 
    tag_nwc_t;; 

test_number 5 (
(tag_dgn_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_onecenter_block "Ne")),
    [1; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_center_contraction_scheme
         "Ne")),
    [1; 1; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_anyshell_block "Ne")),
    [2; 1; 2; 2; 2; 5; 5; 3])]
);;

(* dgn_body_node_aoset_anyshell_block "Ne" *)

let tag_dgn_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Parameter_symbol_v.is_parameter_set_body_node_aoset_anyshell_block s)
	&& 
      (Parameter_symbol_v.string_off s = "Ne")
    ) 
    tag_nwc_t;; 

test_number 6 (
(tag_dgn_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_anyshell_block "Ne")),
    [2; 1; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_oneshell_block
         "Ne S 1 GAUSSIAN")),
    [1; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_oneshell_block
         "Ne S 2 GAUSSIAN")),
    [2; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_oneshell_block
         "Ne S 3 GAUSSIAN")),
    [3; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_oneshell_block
         "Ne P 4 GAUSSIAN")),
    [4; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_oneshell_block
         "Ne P 5 GAUSSIAN")),
    [5; 2; 1; 2; 2; 2; 5; 5; 3])]
);;

let tag_dgn_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Parameter_symbol_v.is_parameter_set_body_node_aoset_oneshell_block s)
	&& 
      (Parameter_symbol_v.string_off s = "Ne P 4 GAUSSIAN")
    ) 
    tag_nwc_t;; 

test_number 7 (
(tag_dgn_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_oneshell_block
         "Ne P 4 GAUSSIAN")),
    [4; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_center_and_shell_name
         "Ne P 4 GAUSSIAN")),
    [1; 4; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues_block
         "Ne P 4 GAUSSIAN")),
    [2; 4; 2; 1; 2; 2; 2; 5; 5; 3])]
);;

(* dgn_body_node_aoset_numericalvalues_block *)

let tag_nwc_l = Tree_v.node_list_of_node_predicate_off_tree (fun (s, i) -> 
  Parameter_symbol_v.is_parameter_set_body_node_aoset_numericalvalues_block s) 
    tag_nwc_t;;

test_number 8 (
( tag_nwc_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues_block
         "Ne S 1 GAUSSIAN")),
    [2; 1; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues_block
         "Ne S 2 GAUSSIAN")),
    [2; 2; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues_block
         "Ne S 3 GAUSSIAN")),
    [2; 3; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues_block
         "Ne P 4 GAUSSIAN")),
    [2; 4; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues_block
         "Ne P 5 GAUSSIAN")),
    [2; 5; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues_block
         "Au S 1 GAUSSIAN")),
    [2; 1; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues_block
         "Au S 2 GAUSSIAN")),
    [2; 2; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues_block
         "Au P 3 GAUSSIAN")),
    [2; 3; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues_block
         "Au P 4 GAUSSIAN")),
    [2; 4; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues_block
         "Au P 5 GAUSSIAN")),
    [2; 5; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues_block
         "Au D 6 GAUSSIAN")),
    [2; 6; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues_block
         "Au D 7 GAUSSIAN")),
    [2; 7; 2; 2; 2; 2; 2; 5; 5; 3])]
);;

(* dgn_body_node_aoset_numericalvalues_block *)

let tag_dgn_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Parameter_symbol_v.is_parameter_set_body_node_aoset_numericalvalues_block s)
	&& 
      (Parameter_symbol_v.string_off s = "Au P 4 GAUSSIAN")
    ) 
    tag_nwc_t;; 


test_number 9 (
( tag_nwc_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues_block
         "Au P 4 GAUSSIAN")),
    [2; 4; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues
         "Au P 4 GAUSSIAN 1")),
    [1; 2; 4; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues
         "Au P 4 GAUSSIAN 2")),
    [2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 3])]
);;

(* dgn_body_node_aoset_numericalvalues *)

let tag_dgn_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Parameter_symbol_v.is_parameter_set_body_node_aoset_numericalvalues s)
	&& 
      (Parameter_symbol_v.string_off s = "Au P 4 GAUSSIAN 2")
    ) 
    tag_nwc_t;; 


test_number 10 (
( tag_nwc_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
[(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues
          "Au P 4 GAUSSIAN 2")),
  [2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 3]);
 (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
    (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "0.0977000"),
  [1; 2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 3]);
 (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
    (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "1.0299147"),
  [2; 2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 3])]
);;

let tag_dgn_nva = List.find (fun (s, i) -> Parameter_symbol_v.string_off s = "Au P 4 GAUSSIAN 2") tag_nwc_l;;

test_number 11 (
(tag_dgn_nva : Parameter_symbol_t.parameter_symbol Tag_t.tag ) =
  (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
      (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues
        "Au P 4 GAUSSIAN 2")),
   [2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 3])
);;

let tag_dgn_tso_l = Parameter_son_tag_list_by_parameter_father_tag_provider_v.provide tag_dgn_nva;;

test_number 12 (
(tag_dgn_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "0.0977000"),
    [1; 2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "1.0299147"),
    [2; 2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 3])]
);;
