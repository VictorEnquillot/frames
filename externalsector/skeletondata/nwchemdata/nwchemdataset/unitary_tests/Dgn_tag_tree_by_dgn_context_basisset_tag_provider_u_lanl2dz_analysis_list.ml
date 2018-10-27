open Make_test_v;;

testing "Dgn_tag_tree_by_dgn_context_basisset_tag_provider_v with
    Dgn_tag_tree_by_dgn_context_basisset_tag_provider_u_lanl2dz_analysis_list.ml";;

(* Deleting Registers *)

Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;

(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Dgn_tag_tree_by_dgn_context_basisset_tag_provider_u_lanl2dz_analysis_list.ml";; 

*)

(* Database file *)

let nam_bas = "lanl2dz";;
let nam_dba = "gaussian_nwchem";;
Parameters_general_register_v.store "basisset-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;
 
(* Analysis_list *)

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

let tag_nwc_l = Dgn_tag_all_list_by_dgn_context_basisset_tag_provider_v.provide tag_dcb;;

(* dgn_body_node_ao_set_block *)

let tag_dgn_aos = List.find 
    (fun (s, i) -> 
      Dgn_symbol_v.is_nwchem_body_node_ao_set_block s)
    tag_nwc_l
;;

test_number 3 (
(tag_dgn_aos : Dgn_symbol_t.nwchem_symbol Tag_t.tag ) =
  (Dgn_symbol_t.Dgn_body_symbol
    (Dgn_body_symbol_t.Dgn_body_node_symbol
      (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_block "LANL2DZ")),
   [2; 2; 5; 5; 3])
);;

let tag_dgn_tso_l = Son_dgn_tag_list_by_father_dgn_tag_provider_v.provide tag_dgn_aos;;

test_number 4 (
(tag_dgn_tso_l : Dgn_symbol_t.nwchem_symbol Tag_t.tag list ) =
  [(Dgn_symbol_t.Dgn_body_symbol
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

let tag_dgn_any_cen = List.find 
    (fun (s, i) -> 
      Dgn_symbol_v.is_nwchem_body_node_ao_set_for_any_center_block s)
    tag_nwc_l
;;

test_number 5 (
(tag_dgn_any_cen : Dgn_symbol_t.nwchem_symbol Tag_t.tag) =
  (Dgn_symbol_t.Dgn_body_symbol
    (Dgn_body_symbol_t.Dgn_body_node_symbol
      (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_for_any_center_block
        "LANL2DZ")),
   [2; 2; 2; 5; 5; 3])
);;

let tag_dgn_tso_l = Son_dgn_tag_list_by_father_dgn_tag_provider_v.provide tag_dgn_any_cen;;

test_number 6 (
(tag_dgn_tso_l : Dgn_symbol_t.nwchem_symbol Tag_t.tag list ) =
  [(Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_for_a_center_block "Ne")),
    [1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_for_a_center_block "Au")),
    [2; 2; 2; 2; 5; 5; 3])]
);;

(* dgn_body_node_ao_set_for_a_center_block "Ne" *)

let tag_dgn_cen = List.find 
    (fun (s, i) -> 
      (Dgn_symbol_v.is_nwchem_body_node_ao_set_for_a_center_block s)
	&& 
      (Dgn_symbol_v.string_off s = "Ne")
    )
    tag_nwc_l
;;

test_number 7 (
(tag_dgn_cen : Dgn_symbol_t.nwchem_symbol Tag_t.tag) =
  (Dgn_symbol_t.Dgn_body_symbol
    (Dgn_body_symbol_t.Dgn_body_node_symbol
      (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_for_a_center_block
        "Ne")),
   [1; 2; 2; 2; 5; 5; 3])
);;

let tag_dgn_tso_l = Son_dgn_tag_list_by_father_dgn_tag_provider_v.provide tag_dgn_cen;;

test_number 8 (
(tag_dgn_tso_l : Dgn_symbol_t.nwchem_symbol Tag_t.tag list ) =
  [(Dgn_symbol_t.Dgn_body_symbol
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

let tag_dgn_any_she = List.find 
    (fun (s, i) -> 
      (Dgn_symbol_v.is_nwchem_body_node_ao_set_for_any_shell_block s)
	&& 
      (Dgn_symbol_v.string_off s = "Ne")
    )
    tag_nwc_l
;;

test_number 9 (
(tag_dgn_any_she : Dgn_symbol_t.nwchem_symbol Tag_t.tag) =
  (Dgn_symbol_t.Dgn_body_symbol
    (Dgn_body_symbol_t.Dgn_body_node_symbol
      (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_for_any_shell_block
        "Ne")),
   [2; 1; 2; 2; 2; 5; 5; 3])
);;

let tag_dgn_tso_l = Son_dgn_tag_list_by_father_dgn_tag_provider_v.provide tag_dgn_any_she;;

test_number 10 (
(tag_dgn_tso_l : Dgn_symbol_t.nwchem_symbol Tag_t.tag list ) =
  [(Dgn_symbol_t.Dgn_body_symbol
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

let tag_dgn_she = List.find 
    (fun (s, i) ->
      (Dgn_symbol_v.is_nwchem_body_node_ao_set_for_a_shell_block s)
	&& 
      (Dgn_symbol_v.string_off s = "Ne P 5 GAUSSIAN")
    ) 
    tag_nwc_l;; 

test_number 11 (
(tag_dgn_she : Dgn_symbol_t.nwchem_symbol Tag_t.tag) =
  (Dgn_symbol_t.Dgn_body_symbol
    (Dgn_body_symbol_t.Dgn_body_node_symbol
      (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_for_a_shell_block
         "Ne P 5 GAUSSIAN")),
    [5; 2; 1; 2; 2; 2; 5; 5; 3])
);;

let tag_dgn_tso_l = Son_dgn_tag_list_by_father_dgn_tag_provider_v.provide tag_dgn_she;;

test_number 12 (
(tag_dgn_tso_l : Dgn_symbol_t.nwchem_symbol Tag_t.tag list ) =
  [(Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_center_and_shell_name
         "Ne P 5 GAUSSIAN")),
    [1; 5; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_numerical_values_block
         "Ne P 5 GAUSSIAN")),
    [2; 5; 2; 1; 2; 2; 2; 5; 5; 3])]
);;

(* dgn_body_node_center_and_shell_name *)

let tag_dgn_cns = List.find 
    (fun (s, i) ->
      (Dgn_symbol_v.is_nwchem_body_node_center_and_shell_name s)
	&& 
      (Dgn_symbol_v.string_off s = "Ne P 5 GAUSSIAN")
    ) 
    tag_nwc_l;; 

test_number 13 (
(tag_dgn_cns : Dgn_symbol_t.nwchem_symbol Tag_t.tag) =
  (Dgn_symbol_t.Dgn_body_symbol
    (Dgn_body_symbol_t.Dgn_body_node_symbol
      (Dgn_body_node_symbol_t.Dgn_body_node_center_and_shell_name
         "Ne P 5 GAUSSIAN")),
    [1; 5; 2; 1; 2; 2; 2; 5; 5; 3])
);;

let tag_dgn_tso_l = Son_dgn_tag_list_by_father_dgn_tag_provider_v.provide tag_dgn_cns;;

test_number 14 (
(tag_dgn_tso_l : Dgn_symbol_t.nwchem_symbol Tag_t.tag list ) =
  [(Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_variable_symbol
       (Dgn_body_variable_symbol_t.Dgn_body_variable_center_name "Ne")),
    [1; 1; 5; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_variable_symbol
       (Dgn_body_variable_symbol_t.Dgn_body_variable_shell_name "P")),
    [2; 1; 5; 2; 1; 2; 2; 2; 5; 5; 3])]
);;

(* dgn_body_node_ao_set_numerical_values_block *)

let tag_dgn_nvb = List.find 
    (fun (s, i) ->
      (Dgn_symbol_v.is_nwchem_body_node_ao_set_numerical_values_block s) 
	&& 
      (Dgn_symbol_v.string_off s = "Ne P 5 GAUSSIAN")
    ) 
    tag_nwc_l;; 

test_number 15 (
(tag_dgn_nvb : Dgn_symbol_t.nwchem_symbol Tag_t.tag) =
  (Dgn_symbol_t.Dgn_body_symbol
    (Dgn_body_symbol_t.Dgn_body_node_symbol
      (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_numerical_values_block
        "Ne P 5 GAUSSIAN")),
   [2; 5; 2; 1; 2; 2; 2; 5; 5; 3])
);;

let tag_dgn_tso_l = Son_dgn_tag_list_by_father_dgn_tag_provider_v.provide tag_dgn_nvb;;

test_number 16 (
(tag_dgn_tso_l : Dgn_symbol_t.nwchem_symbol Tag_t.tag list ) =
  [(Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_numerical_values
         "Ne P 5 GAUSSIAN 1")),
    [1; 2; 5; 2; 1; 2; 2; 2; 5; 5; 3])]
);;

(* dgn_body_node_ao_set_numerical_values_block *)

let tag_dgn_nva = List.find 
    (fun (s, i) ->
      (Dgn_symbol_v.is_nwchem_body_node_ao_set_numerical_values s) 
	&& 
      (Dgn_symbol_v.string_off s = "Ne P 5 GAUSSIAN 1")
    ) 
    tag_nwc_l;; 

test_number 17 (
(tag_dgn_nva : Dgn_symbol_t.nwchem_symbol Tag_t.tag) =
  (Dgn_symbol_t.Dgn_body_symbol
    (Dgn_body_symbol_t.Dgn_body_node_symbol
      (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_numerical_values
        "Ne P 5 GAUSSIAN 1")),
   [1; 2; 5; 2; 1; 2; 2; 2; 5; 5; 3])
);;

let tag_dgn_tso_l = Son_dgn_tag_list_by_father_dgn_tag_provider_v.provide tag_dgn_nva;;

test_number 18 (
( tag_dgn_tso_l : Dgn_symbol_t.nwchem_symbol Tag_t.tag list ) =
  [(Dgn_symbol_t.Dgn_closure_symbol
     (Dgn_closure_symbol_t.Dgn_closure_float_positive "0.3444000"),
    [1; 1; 2; 5; 2; 1; 2; 2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_closure_symbol
     (Dgn_closure_symbol_t.Dgn_closure_float_positive "1.0000000"),
    [2; 1; 2; 5; 2; 1; 2; 2; 2; 5; 5; 3])]
);;

