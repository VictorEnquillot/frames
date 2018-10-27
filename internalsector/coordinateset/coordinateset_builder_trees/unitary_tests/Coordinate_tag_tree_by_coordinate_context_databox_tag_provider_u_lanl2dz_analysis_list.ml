open Make_test_v;;

testing "Coordinate_tag_tree_by_coordinate_context_databox_tag_provider_v with
    Coordinate_tag_tree_by_coordinate_context_databox_tag_provider_u_lanl2dz_analysis_list.ml";;

(* Deleting Registers *)




(* Tracing *)


(* toplevel 
   #use "Coordinate_tag_tree_by_coordinate_context_databox_tag_provider_u_lanl2dz_analysis_list.ml";; 

*)

(* Database file *)

let nam_bas = "lanl2dz";;
let nam_dfi = "db1points";;
 
(* Analysis_list *)

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

let tag_db1_l = Coordinate_tag_all_list_by_coordinate_context_databox_tag_provider_v.provide tag_ncb;;

(* db1_body_node_aoset_block *)

let tag_db1_aos = List.find 
    (fun (s, i) -> 
      Coordinate_symbol_v.is_coordinate_set_body_node_aoset_block s)
    tag_db1_l
;;

test_number 3 (
(tag_db1_aos : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
    (Coordinate_body_symbol_t.Coordinate_body_node_symbol
      (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_block "lanl2dz")),
   [2; 2; 5; 5; 19; 5])
);;

let tag_db1_rtn_l = Coordinate_son_tag_list_by_coordinate_father_tag_provider_v.provide tag_db1_aos;;

test_number 4 (
(tag_db1_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_definition "lanl2dz")),
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

(* db1_body_node_aoset_anycenter_block *)

let tag_db1_any_cen = List.find 
    (fun (s, i) -> 
      Coordinate_symbol_v.is_coordinate_set_body_node_aoset_anycenter_block s)
    tag_db1_l
;;

test_number 5 (
(tag_db1_any_cen : Coordinate_symbol_t.coordinate_symbol Tag_t.tag) =
  (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
    (Coordinate_body_symbol_t.Coordinate_body_node_symbol
      (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_anycenter_block
        "lanl2dz")),
   [2; 2; 2; 5; 5; 19; 5])
);;

let tag_db1_rtn_l = Coordinate_son_tag_list_by_coordinate_father_tag_provider_v.provide tag_db1_any_cen;;

test_number 6 (
(tag_db1_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_onecenter_block "ne")),
    [1; 2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_onecenter_block "au")),
    [2; 2; 2; 2; 5; 5; 19; 5])]
);;

(* db1_body_node_aoset_onecenter_block "ne" *)

let tag_db1_cen = List.find 
    (fun (s, i) -> 
      (Coordinate_symbol_v.is_coordinate_set_body_node_aoset_onecenter_block s)
	&& 
      (Coordinate_symbol_v.string_off s = "ne")
    )
    tag_db1_l
;;

test_number 7 (
(tag_db1_cen : Coordinate_symbol_t.coordinate_symbol Tag_t.tag) =
  (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
    (Coordinate_body_symbol_t.Coordinate_body_node_symbol
      (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_onecenter_block
        "ne")),
   [1; 2; 2; 2; 5; 5; 19; 5])
);;

let tag_db1_rtn_l = Coordinate_son_tag_list_by_coordinate_father_tag_provider_v.provide tag_db1_cen;;

test_number 8 (
(tag_db1_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_center_contraction_scheme
         "ne")),
    [1; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_anyshell_block "ne")),
    [2; 1; 2; 2; 2; 5; 5; 19; 5])]
);;

(* db1_body_node_aoset_anyshell_block "ne" *)

let tag_db1_any_she = List.find 
    (fun (s, i) -> 
      (Coordinate_symbol_v.is_coordinate_set_body_node_aoset_anyshell_block s)
	&& 
      (Coordinate_symbol_v.string_off s = "ne")
    )
    tag_db1_l
;;

test_number 9 (
(tag_db1_any_she : Coordinate_symbol_t.coordinate_symbol Tag_t.tag) =
  (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
    (Coordinate_body_symbol_t.Coordinate_body_node_symbol
      (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_anyshell_block
        "ne")),
   [2; 1; 2; 2; 2; 5; 5; 19; 5])
);;

let tag_db1_rtn_l = Coordinate_son_tag_list_by_coordinate_father_tag_provider_v.provide tag_db1_any_she;;

test_number 10 (
(tag_db1_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
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

let tag_db1_she = List.find 
    (fun (s, i) ->
      (Coordinate_symbol_v.is_coordinate_set_body_node_aoset_oneshell_block s)
	&& 
      (Coordinate_symbol_v.string_off s = "ne p 5 gaussian")
    ) 
    tag_db1_l;; 

test_number 11 (
(tag_db1_she : Coordinate_symbol_t.coordinate_symbol Tag_t.tag) =
  (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
    (Coordinate_body_symbol_t.Coordinate_body_node_symbol
      (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_oneshell_block
         "ne p 5 gaussian")),
    [5; 2; 1; 2; 2; 2; 5; 5; 19; 5])
);;

let tag_db1_rtn_l = Coordinate_son_tag_list_by_coordinate_father_tag_provider_v.provide tag_db1_she;;

test_number 12 (
(tag_db1_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_center_and_shell_name
         "ne p 5 gaussian")),
    [1; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values_block
         "ne p 5 gaussian")),
    [2; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5])]
);;

(* db1_body_node_center_and_shell_name *)

let tag_db1_cns = List.find 
    (fun (s, i) ->
      (Coordinate_symbol_v.is_coordinate_set_body_node_center_and_shell_name s)
	&& 
      (Coordinate_symbol_v.string_off s = "ne p 5 gaussian")
    ) 
    tag_db1_l;; 

test_number 13 (
(tag_db1_cns : Coordinate_symbol_t.coordinate_symbol Tag_t.tag) =
  (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
    (Coordinate_body_symbol_t.Coordinate_body_node_symbol
      (Coordinate_body_node_symbol_t.Coordinate_body_node_center_and_shell_name
         "ne p 5 gaussian")),
    [1; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5])
);;

let tag_db1_rtn_l = Coordinate_son_tag_list_by_coordinate_father_tag_provider_v.provide tag_db1_cns;;

test_number 14 (
(tag_db1_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_variable_symbol
       (Coordinate_body_variable_symbol_t.Coordinate_body_variable_center_name "ne")),
    [1; 1; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_variable_symbol
       (Coordinate_body_variable_symbol_t.Coordinate_body_variable_shell_name "P")),
    [2; 1; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5])]
);;

(* db1_body_node_aoset_numerical_values_block *)

let tag_db1_nvb = List.find 
    (fun (s, i) ->
      (Coordinate_symbol_v.is_coordinate_set_body_node_aoset_numerical_values_block s) 
	&& 
      (Coordinate_symbol_v.string_off s = "ne p 5 gaussian")
    ) 
    tag_db1_l;; 

test_number 15 (
(tag_db1_nvb : Coordinate_symbol_t.coordinate_symbol Tag_t.tag) =
  (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
    (Coordinate_body_symbol_t.Coordinate_body_node_symbol
      (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values_block
        "ne p 5 gaussian")),
   [2; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5])
);;

let tag_db1_rtn_l = Coordinate_son_tag_list_by_coordinate_father_tag_provider_v.provide tag_db1_nvb;;

test_number 16 (
(tag_db1_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_node_symbol
       (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values
         "ne p 5 gaussian 1")),
    [1; 2; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5])]
);;

(* db1_body_node_aoset_numerical_values_block *)

let tag_db1_nva = List.find 
    (fun (s, i) ->
      (Coordinate_symbol_v.is_coordinate_set_body_node_aoset_numerical_values s) 
	&& 
      (Coordinate_symbol_v.string_off s = "ne p 5 gaussian 1")
    ) 
    tag_db1_l;; 

test_number 17 (
(tag_db1_nva : Coordinate_symbol_t.coordinate_symbol Tag_t.tag) =
  (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
    (Coordinate_body_symbol_t.Coordinate_body_node_symbol
      (Coordinate_body_node_symbol_t.Coordinate_body_node_aoset_numerical_values
        "ne p 5 gaussian 1")),
   [1; 2; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5])
);;

let tag_db1_rtn_l = Coordinate_son_tag_list_by_coordinate_father_tag_provider_v.provide tag_db1_nva;;

test_number 18 (
( tag_db1_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
     (Coordinate_fence_symbol_t.Coordinate_fence_float_positive "0.3444000"),
    [1; 1; 2; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
     (Coordinate_fence_symbol_t.Coordinate_fence_float_positive "1.0000000"),
    [2; 1; 2; 5; 2; 1; 2; 2; 2; 5; 5; 19; 5])]
);;

