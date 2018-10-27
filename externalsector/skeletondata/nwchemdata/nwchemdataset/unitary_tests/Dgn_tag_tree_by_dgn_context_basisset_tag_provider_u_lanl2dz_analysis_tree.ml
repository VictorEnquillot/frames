open Make_test_v;;

testing "Dgn_tag_tree_by_dgn_context_basisset_tag_provider_v with
    Dgn_tag_tree_by_dgn_context_basisset_tag_provider_u_lanl2dz_analysis_tree.ml";;

(* Deleting Registers *)

Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;

(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Dgn_tag_tree_by_dgn_context_basisset_tag_provider_u_lanl2dz_analysis_tree.ml";; 

*)

(* Database file *)

let nam_bas = "lanl2dz";;
let nam_dba = "gaussian_nwchem";;
Parameters_general_register_v.store "basisset-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

(* Analysis_tree *)

let tag_dcb = Dgn_context_basisset_tag_by_basisset_name_provider_v.provide nam_bas;;

test_number 1 ( 
( tag_dcb : Dgn_context_basisset_symbol_t.nwchem_context_basisset_symbol Tag_t.tag ) =
  (Dgn_context_basisset_symbol_t.Dgn_context_basisset_constructor "lanl2dz",
   [5; 5; 3])
);;

let fno_nwc = Dgn_fullnameoffile_by_dgn_context_basisset_tag_provider_v.provide tag_dcb;;

test_number 2 (
(fno_nwc : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchem_lanl2dz.nwc"
);;

let tag_nwc_t = Dgn_tag_tree_by_dgn_context_basisset_tag_provider_v.provide tag_dcb;;

(* Top *)

let tag_dgn_tso_l = Tree_v.node_filter_of_node_predicate_off_tree (fun (s, i) -> List.length i < 5) tag_nwc_t;; 

test_number 3 ( 
(tag_dgn_tso_l : Dgn_symbol_t.nwchem_symbol Tag_t.tag list ) =
  [(Dgn_symbol_t.Dgn_context_symbol
     (Dgn_context_symbol_t.Dgn_context_domain_symbol
       (Dgn_context_domain_symbol_t.Dgn_context_domain_constructor "nwc")),
    [3]);
   (Dgn_symbol_t.Dgn_context_symbol
     (Dgn_context_symbol_t.Dgn_context_database_symbol
       (Dgn_context_database_symbol_t.Dgn_context_database_constructor
         "gaussian_nwchem")),
    [5; 3]);
   (Dgn_symbol_t.Dgn_context_symbol
     (Dgn_context_symbol_t.Dgn_context_basisset_symbol
       (Dgn_context_basisset_symbol_t.Dgn_context_basisset_constructor
         "LANL2DZ")),
    [5; 5; 3]);
   (Dgn_symbol_t.Dgn_context_symbol
     (Dgn_context_symbol_t.Dgn_context_version_symbol
       (Dgn_context_version_symbol_t.Dgn_context_version_constructor "v1.2.2")),
    [1; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_basis_block "LANL2DZ")),
    [2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ecp_basis_block "LANL2DZ")),
    [3; 5; 5; 3])]
);;

(* dgn_body_node_ao_set_block *)

let tag_dgn_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree (fun (s, i) ->
  Dgn_symbol_v.is_nwchem_body_node_ao_set_block s) 
    tag_nwc_t;; 

test_number 4 (
(tag_dgn_tso_l : Dgn_symbol_t.nwchem_symbol Tag_t.tag list ) =
  [(Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_block "LANL2DZ")),
    [2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_definition "LANL2DZ")),
    [1; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_for_any_center_block
         "LANL2DZ")),
    [2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_directive_symbol
       Dgn_body_directive_symbol_t.Dgn_body_directive_end),
    [3; 2; 2; 5; 5; 3])]
);;

(* dgn_body_node_ao_set_for_any_center_block *)

let tag_dgn_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree (fun (s, i) ->
  Dgn_symbol_v.is_nwchem_body_node_ao_set_for_any_center_block s) 
    tag_nwc_t;; 

test_number 5 (
(tag_dgn_tso_l : Dgn_symbol_t.nwchem_symbol Tag_t.tag list ) =
 [(Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_for_any_center_block
         "LANL2DZ")),
    [2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_for_a_center_block "Ne")),
    [1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_for_a_center_block "Au")),
    [2; 2; 2; 2; 5; 5; 3])]
);;

(* dgn_body_node_ao_set_for_a_center_block "Ne" *)

let tag_dgn_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Dgn_symbol_v.is_nwchem_body_node_ao_set_for_a_center_block s)
	&& 
      (Dgn_symbol_v.string_off s = "Ne")
    ) 
    tag_nwc_t;; 

test_number 6 (
(tag_dgn_tso_l : Dgn_symbol_t.nwchem_symbol Tag_t.tag list ) =
  [(Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_for_a_center_block "Ne")),
    [1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_center_contraction_scheme
         "Ne")),
    [1; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_for_any_shell_block "Ne")),
    [2; 1; 2; 2; 2; 5; 5; 3])]
);;

(* dgn_body_node_ao_set_for_any_shell_block "Ne" *)

let tag_dgn_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Dgn_symbol_v.is_nwchem_body_node_ao_set_for_any_shell_block s)
	&& 
      (Dgn_symbol_v.string_off s = "Ne")
    ) 
    tag_nwc_t;; 

test_number 7 (
(tag_dgn_tso_l : Dgn_symbol_t.nwchem_symbol Tag_t.tag list ) =
  [(Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_for_any_shell_block "Ne")),
    [2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_for_a_shell_block
         "Ne S 1 GAUSSIAN")),
    [1; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_for_a_shell_block
         "Ne S 2 GAUSSIAN")),
    [2; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_for_a_shell_block
         "Ne S 3 GAUSSIAN")),
    [3; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_for_a_shell_block
         "Ne P 4 GAUSSIAN")),
    [4; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_for_a_shell_block
         "Ne P 5 GAUSSIAN")),
    [5; 2; 1; 2; 2; 2; 5; 5; 3])]
);;

let tag_dgn_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Dgn_symbol_v.is_nwchem_body_node_ao_set_for_a_shell_block s)
	&& 
      (Dgn_symbol_v.string_off s = "Ne P 4 GAUSSIAN")
    ) 
    tag_nwc_t;; 

test_number 8 (
(tag_dgn_tso_l : Dgn_symbol_t.nwchem_symbol Tag_t.tag list ) =
  [(Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_for_a_shell_block
         "Ne P 4 GAUSSIAN")),
    [4; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_center_and_shell_name
         "Ne P 4 GAUSSIAN")),
    [1; 4; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_numerical_values_block
         "Ne P 4 GAUSSIAN")),
    [2; 4; 2; 1; 2; 2; 2; 5; 5; 3])]
);;

(* dgn_body_node_center_and_shell_name *)

let tag_nwc_l = Tree_v.node_list_of_node_predicate_off_tree 
    (fun (s, i) -> 
      (Dgn_symbol_v.is_nwchem_body_node_center_and_shell_name s) 
	&& 
      (List_v.is_substring_of_string_of_string "GAUSSIAN" (Dgn_symbol_v.string_off s))
    )
    tag_nwc_t;;

test_number 9 (
( tag_nwc_l : Dgn_symbol_t.nwchem_symbol Tag_t.tag list ) =
  [(Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_center_and_shell_name
         "Ne S 1 GAUSSIAN")),
    [1; 1; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_center_and_shell_name
         "Ne S 2 GAUSSIAN")),
    [1; 2; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_center_and_shell_name
         "Ne S 3 GAUSSIAN")),
    [1; 3; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_center_and_shell_name
         "Ne P 4 GAUSSIAN")),
    [1; 4; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_center_and_shell_name
         "Ne P 5 GAUSSIAN")),
    [1; 5; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_center_and_shell_name
         "Au S 1 GAUSSIAN")),
    [1; 1; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_center_and_shell_name
         "Au S 2 GAUSSIAN")),
    [1; 2; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_center_and_shell_name
         "Au P 3 GAUSSIAN")),
    [1; 3; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_center_and_shell_name
         "Au P 4 GAUSSIAN")),
    [1; 4; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_center_and_shell_name
         "Au P 5 GAUSSIAN")),
    [1; 5; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_center_and_shell_name
         "Au D 6 GAUSSIAN")),
    [1; 6; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_center_and_shell_name
         "Au D 7 GAUSSIAN")),
    [1; 7; 2; 2; 2; 2; 2; 5; 5; 3])]
);;

(* dgn_body_node_ao_set_numerical_values_block *)

let tag_nwc_l = Tree_v.node_list_of_node_predicate_off_tree (fun (s, i) -> 
  Dgn_symbol_v.is_nwchem_body_node_ao_set_numerical_values_block s) 
    tag_nwc_t;;

test_number 10 (
( tag_nwc_l : Dgn_symbol_t.nwchem_symbol Tag_t.tag list ) =
  [(Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_numerical_values_block
         "Ne S 1 GAUSSIAN")),
    [2; 1; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_numerical_values_block
         "Ne S 2 GAUSSIAN")),
    [2; 2; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_numerical_values_block
         "Ne S 3 GAUSSIAN")),
    [2; 3; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_numerical_values_block
         "Ne P 4 GAUSSIAN")),
    [2; 4; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_numerical_values_block
         "Ne P 5 GAUSSIAN")),
    [2; 5; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_numerical_values_block
         "Au S 1 GAUSSIAN")),
    [2; 1; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_numerical_values_block
         "Au S 2 GAUSSIAN")),
    [2; 2; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_numerical_values_block
         "Au P 3 GAUSSIAN")),
    [2; 3; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_numerical_values_block
         "Au P 4 GAUSSIAN")),
    [2; 4; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_numerical_values_block
         "Au P 5 GAUSSIAN")),
    [2; 5; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_numerical_values_block
         "Au D 6 GAUSSIAN")),
    [2; 6; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_numerical_values_block
         "Au D 7 GAUSSIAN")),
    [2; 7; 2; 2; 2; 2; 2; 5; 5; 3])]
);;

(* dgn_body_node_ao_set_numerical_values_block *)

let tag_dgn_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Dgn_symbol_v.is_nwchem_body_node_ao_set_numerical_values_block s)
	&& 
      (Dgn_symbol_v.string_off s = "Au P 4 GAUSSIAN")
    ) 
    tag_nwc_t;; 

test_number 11 (
( tag_dgn_tso_l : Dgn_symbol_t.nwchem_symbol Tag_t.tag list ) =
  [(Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_numerical_values_block
         "Au P 4 GAUSSIAN")),
    [2; 4; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_numerical_values
         "Au P 4 GAUSSIAN 1")),
    [1; 2; 4; 2; 2; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_numerical_values
         "Au P 4 GAUSSIAN 2")),
    [2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 3])]
);;

(* dgn_body_node_ao_set_numerical_values *)

let tag_dgn_tso_l = Tree_v.root_topson_node_list_of_subtree_node_predicate_off_tree 
    (fun (s, i) ->
      (Dgn_symbol_v.is_nwchem_body_node_ao_set_numerical_values s)
	&& 
      (Dgn_symbol_v.string_off s = "Au P 4 GAUSSIAN 2")
    ) 
    tag_nwc_t;; 


test_number 12 (
( tag_dgn_tso_l : Dgn_symbol_t.nwchem_symbol Tag_t.tag list ) =
[(Dgn_symbol_t.Dgn_body_symbol
    (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_numerical_values
          "Au P 4 GAUSSIAN 2")),
  [2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 3]);
 (Dgn_symbol_t.Dgn_closure_symbol
    (Dgn_closure_symbol_t.Dgn_closure_float_positive "0.0977000"),
  [1; 2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 3]);
 (Dgn_symbol_t.Dgn_closure_symbol
    (Dgn_closure_symbol_t.Dgn_closure_float_positive "1.0299147"),
  [2; 2; 2; 4; 2; 2; 2; 2; 2; 5; 5; 3])]
);;

