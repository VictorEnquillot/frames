open Make_test_v;;

testing "Coordinate_tag_tree_by_coordinate_context_databox_tag_provider_v with
    Coordinate_tag_tree_by_coordinate_context_databox_tag_provider_u_lanl2dz_analysis.ml";;

(* Deleting Registers *)




(* Tracing *)


(* toplevel 
   #use "Coordinate_tag_tree_by_coordinate_context_databox_tag_provider_u_lanl2dz_analysis.ml";; 

*)

(* Database file *)

let nam_bas = "lanl2dz";;
 
(* Analysis *)

let tag_dcb = Coordinate_context_databox_tag_by_databox_name_n_database_name_provider_v.provide nam_bas;;

test_number 1 ( 
( tag_dcb : Coordinate_context_databox_symbol_t.coordinate_context_databox_symbol Tag_t.tag ) =
  (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor "lanl2dz",
   [5; 5; 3])
);;

let fno_db1 = Coordinate_fullnameoffile_by_coordinate_context_databox_tag_provider_v.provide tag_dcb;;

test_number 2 (
(fno_db1 : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_db1points/files/gaussian_coordinate_lanl2dz.db1"
);;


let tag_db1_t = Coordinate_tag_tree_by_coordinate_context_databox_tag_provider_v.provide tag_dcb;;
let tag_db1_l = Coordinate_tag_all_list_by_coordinate_context_databox_tag_provider_v.provide tag_dcb;;

(* dgn_body_node_aoset_block *)

let tag_dgn_rtn_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree (fun (s, i) ->
  Coordinate_symbol_v.is_coordinate_set_body_node_aoset_block s) 
    tag_db1_t;; 

test_number 3 (
(tag_dgn_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_block "LANL2DZ")),
    [2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_definition "LANL2DZ")),
    [1; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_anycenter_block
         "LANL2DZ")),
    [2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_directive_symbol
       Coordinate_body_directive_symbol_t.Coordinate_body_directive_end),
    [3; 2; 2; 5; 5; 3])]
);;

(* dgn_body_node_aoset_anycenter_block *)

let tag_dgn_rtn_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree (fun (s, i) ->
  Coordinate_symbol_v.is_coordinate_set_body_node_aoset_anycenter_block s) 
    tag_db1_t;; 

test_number 4 (
(tag_dgn_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
 [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_anycenter_block
         "LANL2DZ")),
    [2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_onecenter_block "Ne")),
    [1; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_onecenter_block "Au")),
    [2; 2; 2; 2; 5; 5; 3])]
);;

(* dgn_body_node_aoset_onecenter_block "Ne" *)

let tag_dgn_rtn_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Coordinate_symbol_v.is_coordinate_set_body_node_aoset_onecenter_block s)
	&& 
      (Coordinate_symbol_v.string_off s = "Ne")
    ) 
    tag_db1_t;; 

test_number 5 (
(tag_dgn_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_onecenter_block "Ne")),
    [1; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_center_contraction_scheme
         "Ne")),
    [1; 1; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_anyshell_block "Ne")),
    [2; 1; 2; 2; 2; 5; 5; 3])]
);;

(* dgn_body_node_aoset_anyshell_block "Ne" *)

let tag_dgn_rtn_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Coordinate_symbol_v.is_coordinate_set_body_node_aoset_anyshell_block s)
	&& 
      (Coordinate_symbol_v.string_off s = "Ne")
    ) 
    tag_db1_t;; 

test_number 6 (
(tag_dgn_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_anyshell_block "Ne")),
    [2; 1; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_oneshell_block
         "Ne S 1 GAUSSIAN")),
    [1; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_oneshell_block
         "Ne S 2 GAUSSIAN")),
    [2; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_oneshell_block
         "Ne S 3 GAUSSIAN")),
    [3; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_oneshell_block
         "Ne P 4 GAUSSIAN")),
    [4; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_oneshell_block
         "Ne P 5 GAUSSIAN")),
    [5; 2; 1; 2; 2; 2; 5; 5; 3])]
);;

let tag_dgn_rtn_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Coordinate_symbol_v.is_coordinate_set_body_node_aoset_oneshell_block s)
	&& 
      (Coordinate_symbol_v.string_off s = "Ne P 4 GAUSSIAN")
    ) 
    tag_db1_t;; 

test_number 7 (
(tag_dgn_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_oneshell_block
         "Ne P 4 GAUSSIAN")),
    [4; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_center_and_shell_name
         "Ne P 4 GAUSSIAN")),
    [1; 4; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values_block
         "Ne P 4 GAUSSIAN")),
    [2; 4; 2; 1; 2; 2; 2; 5; 5; 3])]
);;

(* dgn_body_node_aoset_numerical_values_block *)

let tag_db1_l = Tree_v.node_list_of_node_predicate_off_tree (fun (s, i) -> 
  Coordinate_symbol_v.is_coordinate_set_body_node_aoset_numerical_values_block s) 
    tag_db1_t;;

test_number 8 (
( tag_db1_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values_block
         "Ne S 1 GAUSSIAN")),
    [2; 1; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values_block
         "Ne S 2 GAUSSIAN")),
    [2; 2; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values_block
         "Ne S 3 GAUSSIAN")),
    [2; 3; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values_block
         "Ne P 4 GAUSSIAN")),
    [2; 4; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values_block
         "Ne P 5 GAUSSIAN")),
    [2; 5; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values_block
         "Au S 1 GAUSSIAN")),
    [2; 1; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values_block
         "Au S 2 GAUSSIAN")),
    [2; 2; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values_block
         "Au P 3 GAUSSIAN")),
    [2; 3; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values_block
         "Au P 4 GAUSSIAN")),
    [2; 4; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values_block
         "Au P 5 GAUSSIAN")),
    [2; 5; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values_block
         "Au D 6 GAUSSIAN")),
    [2; 6; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values_block
         "Au D 7 GAUSSIAN")),
    [2; 7; 2; 2; 2; 2; 2; 5; 5; 3])]
);;

(* dgn_body_node_aoset_numerical_values_block *)

let tag_dgn_rtn_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Coordinate_symbol_v.is_coordinate_set_body_node_aoset_numerical_values_block s)
	&& 
      (Coordinate_symbol_v.string_off s = "Au P 4 GAUSSIAN")
    ) 
    tag_db1_t;; 


test_number 9 (
( tag_db1_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values_block
         "Au P 4 GAUSSIAN")),
    [2; 4; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values
         "Au P 4 GAUSSIAN 1")),
    [1; 2; 4; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values
         "Au P 4 GAUSSIAN 2")),
    [2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 3])]
);;

(* dgn_body_node_aoset_numerical_values *)

let tag_dgn_rtn_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Coordinate_symbol_v.is_coordinate_set_body_node_aoset_numerical_values s)
	&& 
      (Coordinate_symbol_v.string_off s = "Au P 4 GAUSSIAN 2")
    ) 
    tag_db1_t;; 


test_number 10 (
( tag_db1_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
[(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
    (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values
          "Au P 4 GAUSSIAN 2")),
  [2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 3]);
 (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
    (Coordinate_fence_symbol_t.Coordinate_fence_float_positive "0.0977000"),
  [1; 2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 3]);
 (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
    (Coordinate_fence_symbol_t.Coordinate_fence_float_positive "1.0299147"),
  [2; 2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 3])]
);;

let tag_dgn_nva = List.find (fun (s, i) -> Coordinate_symbol_v.string_off s = "Au P 4 GAUSSIAN 2") tag_db1_l;;

test_number 11 (
(tag_dgn_nva : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
    (Coordinate_body_symbol_t.Coordinate_body_node_symbol
      (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values
        "Au P 4 GAUSSIAN 2")),
   [2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 3])
);;

let tag_dgn_rtn_l = Coordinate_son_tag_list_by_coordinate_father_tag_provider_v.provide tag_dgn_nva;;

test_number 12 (
(tag_dgn_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
     (Coordinate_fence_symbol_t.Coordinate_fence_float_positive "0.0977000"),
    [1; 2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
     (Coordinate_fence_symbol_t.Coordinate_fence_float_positive "1.0299147"),
    [2; 2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 3])]
);;
