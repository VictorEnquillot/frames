open Make_test_v;;

testing "Parameter_tag_tree_by_parameter_context_databox_tag_provider_v with
    Parameter_tag_tree_by_parameter_context_databox_tag_provider_u_lanl2dz_analysis_list.ml";;

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
   #use "Parameter_tag_tree_by_parameter_context_databox_tag_provider_u_lanl2dz_analysis_list.ml";; 

*)

(* Database file *)

let nam_dbo = "LANL2DZ";;
let nam_dba = "nwchem";;
 
(* Analysis_list *)

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

let tag_nwc_l = Parameter_tag_all_list_by_parameter_context_databox_tag_provider_v.provide tag_ncb;;

(* nwc_body_node_aoset_block *)

let tag_nwc_aos = List.find 
    (fun (s, i) -> 
      Parameter_symbol_v.is_parameter_set_body_node_aoset_block s)
    tag_nwc_l
;;

test_number 3 (
(tag_nwc_aos : Parameter_symbol_t.parameter_symbol Tag_t.tag ) =
  (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
      (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_block "LANL2DZ")),
   [2; 2; 9; 5; 6; 5])
);;

let tag_nwc_tso_l = Parameter_son_tag_list_by_parameter_father_tag_provider_v.provide tag_nwc_aos;;

test_number 4 (
(tag_nwc_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_definition "LANL2DZ")),
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

(* nwc_body_node_aoset_anycenter_block *)

let tag_nwc_any_cen = List.find 
    (fun (s, i) -> 
      Parameter_symbol_v.is_parameter_set_body_node_aoset_anycenter_block s)
    tag_nwc_l
;;

test_number 5 (
(tag_nwc_any_cen : Parameter_symbol_t.parameter_symbol Tag_t.tag) =
  (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
      (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_anycenter_block
        "LANL2DZ")),
   [2; 2; 2; 9; 5; 6; 5])
);;

let tag_nwc_tso_l = Parameter_son_tag_list_by_parameter_father_tag_provider_v.provide tag_nwc_any_cen;;

test_number 6 (
(tag_nwc_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_onecenter_block "ne")),
    [1; 2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_onecenter_block "au")),
    [2; 2; 2; 2; 9; 5; 6; 5])]
);;

(* nwc_body_node_aoset_onecenter_block "ne" *)

let tag_nwc_cen = List.find 
    (fun (s, i) -> 
      (Parameter_symbol_v.is_parameter_set_body_node_aoset_onecenter_block s)
	&& 
      (Parameter_symbol_v.string_off s = "ne")
    )
    tag_nwc_l
;;

test_number 7 (
(tag_nwc_cen : Parameter_symbol_t.parameter_symbol Tag_t.tag) =
  (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
      (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_onecenter_block
        "ne")),
   [1; 2; 2; 2; 9; 5; 6; 5])
);;

let tag_nwc_tso_l = Parameter_son_tag_list_by_parameter_father_tag_provider_v.provide tag_nwc_cen;;

test_number 8 (
(tag_nwc_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_center_contraction_scheme
         "ne")),
    [1; 1; 2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_anyshell_block "ne")),
    [2; 1; 2; 2; 2; 9; 5; 6; 5])]
);;

(* nwc_body_node_aoset_anyshell_block "ne" *)

let tag_nwc_any_she = List.find 
    (fun (s, i) -> 
      (Parameter_symbol_v.is_parameter_set_body_node_aoset_anyshell_block s)
	&& 
      (Parameter_symbol_v.string_off s = "ne")
    )
    tag_nwc_l
;;

test_number 9 (
(tag_nwc_any_she : Parameter_symbol_t.parameter_symbol Tag_t.tag) =
  (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
      (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_anyshell_block
        "ne")),
   [2; 1; 2; 2; 2; 9; 5; 6; 5])
);;

let tag_nwc_tso_l = Parameter_son_tag_list_by_parameter_father_tag_provider_v.provide tag_nwc_any_she;;

test_number 10 (
(tag_nwc_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
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

let tag_nwc_she = List.find 
    (fun (s, i) ->
      (Parameter_symbol_v.is_parameter_set_body_node_aoset_oneshell_block s)
	&& 
      (Parameter_symbol_v.string_off s = "ne p 5 gaussian")
    ) 
    tag_nwc_l;; 

test_number 11 (
(tag_nwc_she : Parameter_symbol_t.parameter_symbol Tag_t.tag) =
  (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
      (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_oneshell_block
         "ne p 5 gaussian")),
    [5; 2; 1; 2; 2; 2; 9; 5; 6; 5])
);;

let tag_nwc_tso_l = Parameter_son_tag_list_by_parameter_father_tag_provider_v.provide tag_nwc_she;;

test_number 12 (
(tag_nwc_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_center_and_shell_name
         "ne p 5 gaussian")),
    [1; 5; 2; 1; 2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues_block
         "ne p 5 gaussian")),
    [2; 5; 2; 1; 2; 2; 2; 9; 5; 6; 5])]
);;

(* nwc_body_node_center_and_shell_name *)

let tag_nwc_cns = List.find 
    (fun (s, i) ->
      (Parameter_symbol_v.is_parameter_set_body_node_center_and_shell_name s)
	&& 
      (Parameter_symbol_v.string_off s = "ne p 5 gaussian")
    ) 
    tag_nwc_l;; 

test_number 13 (
(tag_nwc_cns : Parameter_symbol_t.parameter_symbol Tag_t.tag) =
  (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
      (Parameter_set_body_node_symbol_t.Parameter_set_body_node_center_and_shell_name
         "ne p 5 gaussian")),
    [1; 5; 2; 1; 2; 2; 2; 9; 5; 6; 5])
);;

let tag_nwc_tso_l = Parameter_son_tag_list_by_parameter_father_tag_provider_v.provide tag_nwc_cns;;

test_number 14 (
(tag_nwc_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_variable_symbol
       (Parameter_set_body_variable_symbol_t.Parameter_set_body_variable_center_name "ne")),
    [1; 1; 5; 2; 1; 2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_variable_symbol
       (Parameter_set_body_variable_symbol_t.Parameter_set_body_variable_shell_name "P")),
    [2; 1; 5; 2; 1; 2; 2; 2; 9; 5; 6; 5])]
);;

(* nwc_body_node_aoset_numericalvalues_block *)

let tag_nwc_nvb = List.find 
    (fun (s, i) ->
      (Parameter_symbol_v.is_parameter_set_body_node_aoset_numericalvalues_block s) 
	&& 
      (Parameter_symbol_v.string_off s = "ne p 5 gaussian")
    ) 
    tag_nwc_l;; 

test_number 15 (
(tag_nwc_nvb : Parameter_symbol_t.parameter_symbol Tag_t.tag) =
  (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
      (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues_block
        "ne p 5 gaussian")),
   [2; 5; 2; 1; 2; 2; 2; 9; 5; 6; 5])
);;

let tag_nwc_tso_l = Parameter_son_tag_list_by_parameter_father_tag_provider_v.provide tag_nwc_nvb;;

test_number 16 (
(tag_nwc_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues
         "ne p 5 gaussian 1")),
    [1; 2; 5; 2; 1; 2; 2; 2; 9; 5; 6; 5])]
);;

(* nwc_body_node_aoset_numericalvalues_block *)

let tag_nwc_nva = List.find 
    (fun (s, i) ->
      (Parameter_symbol_v.is_parameter_set_body_node_aoset_numericalvalues s) 
	&& 
      (Parameter_symbol_v.string_off s = "ne p 5 gaussian 1")
    ) 
    tag_nwc_l;; 

test_number 17 (
(tag_nwc_nva : Parameter_symbol_t.parameter_symbol Tag_t.tag) =
  (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
      (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aoset_numericalvalues
        "ne p 5 gaussian 1")),
   [1; 2; 5; 2; 1; 2; 2; 2; 9; 5; 6; 5])
);;

let tag_nwc_tso_l = Parameter_son_tag_list_by_parameter_father_tag_provider_v.provide tag_nwc_nva;;

test_number 18 (
( tag_nwc_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "0.3444000"),
    [1; 1; 2; 5; 2; 1; 2; 2; 2; 9; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "1.0000000"),
    [2; 1; 2; 5; 2; 1; 2; 2; 2; 9; 5; 6; 5])]
);;

