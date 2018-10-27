open Make_test_v;;

testing "Nwchemdata_son_tag_list_by_nwchemdata_father_tag_provider_v with
    Nwchemdata_son_tag_list_by_nwchemdata_father_tag_provider_u_lanl2dz_analysis_list.ml";;

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
   #use "Nwchemdata_son_tag_list_by_nwchemdata_father_tag_provider_u_lanl2dz_analysis_list.ml";; 

*)

(* Database file *)

let nam_bas = "lanl2dz";;
let nam_dfi = "nwchem";;
 
(* Analysis_list *)

let tag_dcb = Nwchemdata_context_databox_tag_by_databox_name_provider_v.provide nam_bas;;

test_number 1 ( 
( tag_dcb : Nwchemdata_context_databox_symbol_t.nwchemdata_context_databox_symbol Tag_t.tag ) =
  (Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor "lanl2dz",
  [5; 5; 19; 5])
);;

let tag_nwc_l = Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_provider_v.provide tag_dcb;;

(* nwc_body_node_aoset_block *)

let tag_nwc_aos = List.find 
    (fun (s, i) -> 
      Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_block s)
    tag_nwc_l
;;

test_number 2 (
(tag_nwc_aos : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag ) =
  (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
    (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
      (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_block "lanl2dz")),
   [2; 2; 5; 5; 19; 5])
);;

let soi_nwc = Tag_v.sole_index_off_tag tag_nwc_aos;;

let tag_dcb_x = Nwchemdata_any_category_by_sole_index_extractor_v.nwchemdata_context_databox_tag_off_sole_index soi_nwc;;

test_number 3 (
tag_dcb_x = tag_dcb
);;

let tag_nwc_tso_l = Nwchemdata_son_tag_list_by_nwchemdata_father_tag_provider_v.provide tag_nwc_aos;;

test_number 4 (
(tag_nwc_tso_l : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_definition "lanl2dz")),
    [1; 2; 2; 5; 5; 19; 5]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_anycenter_block
         "lanl2dz")),
    [2; 2; 2; 5; 5; 19; 5]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_directive_symbol
       Nwchemdata_set_body_directive_symbol_t.Nwchemdata_set_body_directive_end),
    [3; 2; 2; 5; 5; 19; 5])]
);;

(* nwc_body_node_aoset_anycenter_block *)

let tag_nwc_any_cen = List.find 
    (fun (s, i) -> 
      Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_anycenter_block s)
    tag_nwc_l
;;

test_number 5 (
(tag_nwc_any_cen : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag) =
  (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
    (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
      (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_anycenter_block
        "lanl2dz")),
   [2; 2; 2; 5; 5; 19; 5])
);;

let tag_nwc_tso_l = Nwchemdata_son_tag_list_by_nwchemdata_father_tag_provider_v.provide tag_nwc_any_cen;;

test_number 6 (
(tag_nwc_tso_l : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_onecenter_block "ne")),
    [1; 2; 2; 2; 5; 5; 19; 5]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_onecenter_block "au")),
    [2; 2; 2; 2; 5; 5; 19; 5])]
);;

(* nwc_body_node_aoset_onecenter_block "ne" *)

let tag_nwc_cen = List.find 
    (fun (s, i) -> 
      (Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_onecenter_block s)
	&& 
      (Nwchemdata_symbol_v.string_off s = "ne")
    )
    tag_nwc_l
;;

test_number 7 (
(tag_nwc_cen : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag) =
  (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
    (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
      (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_onecenter_block
        "ne")),
   [1; 2; 2; 2; 5; 5; 19; 5])
);;

let tag_nwc_tso_l = Nwchemdata_son_tag_list_by_nwchemdata_father_tag_provider_v.provide tag_nwc_cen;;

test_number 8 (
(tag_nwc_tso_l : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_center_contraction_scheme
         "ne")),
    [1; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_anyshell_block "ne")),
    [2; 1; 2; 2; 2; 5; 5; 19; 5])]
);;

(* nwc_body_node_aoset_anyshell_block "ne" *)

let tag_nwc_any_she = List.find 
    (fun (s, i) -> 
      (Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_anyshell_block s)
	&& 
      (Nwchemdata_symbol_v.string_off s = "ne")
    )
    tag_nwc_l
;;

test_number 9 (
(tag_nwc_any_she : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag) =
  (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
    (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
      (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_anyshell_block
        "ne")),
   [2; 1; 2; 2; 2; 5; 5; 19; 5])
);;

let tag_nwc_tso_l = Nwchemdata_son_tag_list_by_nwchemdata_father_tag_provider_v.provide tag_nwc_any_she;;

test_number 10 (
(tag_nwc_tso_l : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_oneshell_block
         "ne s 1 gaussian")),
    [1; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_oneshell_block
         "ne s 2 gaussian")),
    [2; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_oneshell_block
         "ne s 3 gaussian")),
    [3; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_oneshell_block
         "ne p 4 gaussian")),
    [4; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_oneshell_block
         "ne p 5 gaussian")),
    [5; 2; 1; 2; 2; 2; 5; 5; 19; 5])]
);;

let tag_nwc_she = List.find 
    (fun (s, i) ->
      (Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_oneshell_block s)
	&& 
      (Nwchemdata_symbol_v.string_off s = "ne p 5 gaussian")
    ) 
    tag_nwc_l;; 

test_number 11 (
(tag_nwc_she : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag) =
  (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
    (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
      (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_oneshell_block
         "ne p 5 gaussian")),
    [5; 2; 1; 2; 2; 2; 5; 5; 19; 5])
);;

let tag_nwc_tso_l = Nwchemdata_son_tag_list_by_nwchemdata_father_tag_provider_v.provide tag_nwc_she;;

test_number 12 (
(tag_nwc_tso_l : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_center_and_shell_name
         "ne p 5 gaussian")),
    [1; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numerical_values_block
         "ne p 5 gaussian")),
    [2; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5])]
);;

(* nwc_body_node_center_and_shell_name *)

let tag_nwc_cns = List.find 
    (fun (s, i) ->
      (Nwchemdata_symbol_v.is_nwchemdata_set_body_node_center_and_shell_name s)
	&& 
      (Nwchemdata_symbol_v.string_off s = "ne p 5 gaussian")
    ) 
    tag_nwc_l;; 

test_number 13 (
(tag_nwc_cns : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag) =
  (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
    (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
      (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_center_and_shell_name
         "ne p 5 gaussian")),
    [1; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5])
);;

let tag_nwc_tso_l = Nwchemdata_son_tag_list_by_nwchemdata_father_tag_provider_v.provide tag_nwc_cns;;

test_number 14 (
(tag_nwc_tso_l : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_variable_symbol
       (Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_center_name "ne")),
    [1; 1; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_variable_symbol
       (Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_shell_name "P")),
    [2; 1; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5])]
);;

(* nwc_body_node_aoset_numerical_values_block *)

let tag_nwc_nvb = List.find 
    (fun (s, i) ->
      (Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_numerical_values_block s) 
	&& 
      (Nwchemdata_symbol_v.string_off s = "ne p 5 gaussian")
    ) 
    tag_nwc_l;; 

test_number 15 (
(tag_nwc_nvb : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag) =
  (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
    (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
      (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numerical_values_block
        "ne p 5 gaussian")),
   [2; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5])
);;

let tag_nwc_tso_l = Nwchemdata_son_tag_list_by_nwchemdata_father_tag_provider_v.provide tag_nwc_nvb;;

test_number 16 (
(tag_nwc_tso_l : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
     (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
       (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numerical_values
         "ne p 5 gaussian 1")),
    [1; 2; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5])]
);;

(* nwc_body_node_aoset_numerical_values_block *)

let tag_nwc_nva = List.find 
    (fun (s, i) ->
      (Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_numerical_values s) 
	&& 
      (Nwchemdata_symbol_v.string_off s = "ne p 5 gaussian 1")
    ) 
    tag_nwc_l;; 

test_number 17 (
(tag_nwc_nva : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag) =
  (Nwchemdata_symbol_t.Nwchemdata_set_body_symbol
    (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
      (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numerical_values
        "ne p 5 gaussian 1")),
   [1; 2; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5])
);;

let tag_nwc_tso_l = Nwchemdata_son_tag_list_by_nwchemdata_father_tag_provider_v.provide tag_nwc_nva;;

test_number 18 (
( tag_nwc_tso_l : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "0.3444000"),
    [1; 1; 2; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
     (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "1.0000000"),
    [2; 1; 2; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5])]
);;

