open Make_test_v;;

testing "Skeleton_symbol_from_nwchem_tag_translations_v with
    Skeleton_symbol_from_nwchem_tag_translations_u_test_ao.ml";;

(* Deleting Registers *)


(* Tracing *)


(* Debugging *)


(* toplevel 
   #use "Skeleton_symbol_from_nwchem_tag_translations_u_test_ao.ml";; 

*)

(* Database file *)

let nam_dba = "nwchem";;
let nam_dbo = "test_ao";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

(* Argument (nam_dba, nam_dbo) *)

open Skeleton_symbol_from_nwchem_tag_translations_v;;

let (sym_ske_sbo, soi_ske_sbo) = Skeleton_as_context_databox_tag_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo);;

test_number 1 (
(sym_ske_sbo : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_context_symbol
   (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
     (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
       "test_ao"))
);;

test_number 2 (
(soi_ske_sbo : Sole_index_t.sole_index ) = 
[6; 5; 22]
);;

let sym_ske_son_sbo_l = son_skeleton_symbol_list_of_skeleton_as_context_databox_symbol sym_ske_sbo;;

test_number 3 (
( sym_ske_son_sbo_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_anycenter_symbol
          (Skeleton_body_centered_aopefset_anycenter_symbol_t.Skeleton_body_centered_aopefset_anycenter_constructor
            "test_ao"))));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_ecppefset_symbol
        (Skeleton_body_centered_ecppefset_symbol_t.Skeleton_body_centered_ecppefset_constructor
          "test_ao")))]
);;

let tag_nbo = Nwchem_context_databox_tag_by_databox_name_provider_v.provide nam_dbo;;
let tag_nwc_t = Nwchem_tag_tree_by_nwchem_context_databox_tag_provider_v.provide tag_nbo;;

let tag_nwc_l = tag_nwchem_all_list_of_databox_name nam_dbo;;

let cou_tag_nwc_l = List.length tag_nwc_l;;

test_number 4 (
(cou_tag_nwc_l : int ) = 80
);;

let tag_nwc_sl_0_10 = List_v.sublist_of_int_of_int_of_list 0 10 tag_nwc_l;;

test_number 5 (
( tag_nwc_sl_0_10 : Nwchem_symbol_t.nwchem_symbol Tag_t.tag list ) =
  [(Nwchem_symbol_t.Nwchem_context_symbol
     (Nwchem_context_symbol_t.Nwchem_context_domain_symbol
       (Nwchem_context_domain_symbol_t.Nwchem_context_domain_constructor
         "database")),
    [6]);
   (Nwchem_symbol_t.Nwchem_context_symbol
     (Nwchem_context_symbol_t.Nwchem_context_domaindata_symbol
       (Nwchem_context_domaindata_symbol_t.Nwchem_context_domaindata_constructor
         "skeleton")),
    [22; 6]);
   (Nwchem_symbol_t.Nwchem_context_symbol
     (Nwchem_context_symbol_t.Nwchem_context_database_symbol
       (Nwchem_context_database_symbol_t.Nwchem_context_database_constructor
         "nwchem")),
    [5; 22; 6]);
   (Nwchem_symbol_t.Nwchem_context_symbol
     (Nwchem_context_symbol_t.Nwchem_context_databox_symbol
       (Nwchem_context_databox_symbol_t.Nwchem_context_databox_constructor
         "test_ao")),
    [6; 5; 22; 6]);
   (Nwchem_symbol_t.Nwchem_context_symbol
     (Nwchem_context_symbol_t.Nwchem_context_version_symbol
       (Nwchem_context_version_symbol_t.Nwchem_context_version_constructor
         "v1.2.2")),
    [1; 6; 5; 22; 6]);
   (Nwchem_symbol_t.Nwchem_body_symbol
     (Nwchem_body_symbol_t.Nwchem_body_node_symbol
       (Nwchem_body_node_symbol_t.Nwchem_body_node_aobasis_block "test_ao")),
    [2; 6; 5; 22; 6]);
   (Nwchem_symbol_t.Nwchem_body_symbol
     (Nwchem_body_symbol_t.Nwchem_body_node_symbol
       (Nwchem_body_node_symbol_t.Nwchem_body_node_aocomment_block "test_ao")),
    [1; 2; 6; 5; 22; 6]);
   (Nwchem_symbol_t.Nwchem_body_symbol
     (Nwchem_body_symbol_t.Nwchem_body_variable_symbol
       (Nwchem_body_variable_symbol_t.Nwchem_body_variable_databox_name
         "test_ao")),
    [1; 1; 2; 6; 5; 22; 6]);
   (Nwchem_symbol_t.Nwchem_body_symbol
     (Nwchem_body_symbol_t.Nwchem_body_node_symbol
       (Nwchem_body_node_symbol_t.Nwchem_body_node_comment_block "test_ao ao")),
    [2; 1; 2; 6; 5; 22; 6]);
   (Nwchem_symbol_t.Nwchem_comment_symbol
     (Nwchem_comment_symbol_t.Nwchem_comment_header
       "# elements                             references"),
    [1; 2; 1; 2; 6; 5; 22; 6]);
   (Nwchem_symbol_t.Nwchem_comment_symbol
     (Nwchem_comment_symbol_t.Nwchem_comment_dashed
       "# --------                             ----------"),
    [2; 2; 1; 2; 6; 5; 22; 6])]
);;

let sof_ncb_l = nwchem_center_block_string_off_list_of_tag_nwchem_all_list tag_nwc_l;;

test_number 6 (
(sof_ncb_l : string list ) = 
["he"]
);;

let sym_ske_l = skeleton_as_center_symbol_list_of_tag_nwchem_all_list tag_nwc_l ;;

test_number 7 (
( sym_ske_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_onecenter_symbol
          (Skeleton_body_centered_aopefset_onecenter_symbol_t.Skeleton_body_centered_aopefset_onecenter_constructor
            "he"))))]
);;

let nam_cen = List.hd sof_ncb_l;;
let sof_nsb_l = nwchem_shell_block_string_off_list_of_center_name_of_tag_nwchem_all_list nam_cen tag_nwc_l;;

test_number 8 (
(sof_nsb_l : string list ) =
  ["he s 1 gaussian"; 
   "he s 2 gaussian"; 
   "he p 3 gaussian";
   "he p 4 gaussian"]
);;

let sym_ske_cen = List.hd sym_ske_l;;
let sym_nss_l = nwchem_shell_symmetry_list_of_skeleton_as_center_symbol_of_tag_nwchem_all_list sym_ske_cen tag_nwc_l;;

test_number 9 (
(sym_nss_l : string list ) = 
["s"; "p"]
);;

let ssy_l = shell_symmetry_list_of_skeleton_as_center_symbol_of_tag_nwchem_all_list sym_ske_cen tag_nwc_l;;

test_number 10 (
(ssy_l : string list ) = 
["s"; "p"]
);;

let sym_sss_l = skeleton_as_shell_symmetry_symbol_list_of_skeleton_as_center_symbol_of_tag_nwchem_all_list sym_ske_cen tag_nwc_l;;

test_number 11 (
(sym_sss_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
          (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
            "he s"))));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
      (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
        (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_symbol
          (Skeleton_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_body_centered_aopefset_shellsymmetry_constructor
            "he p"))))]
);;

let nam_ssy = List.hd ssy_l;;
let sof_nsb_l = nwchem_shell_block_string_off_list_of_center_name_of_shell_symmetry_name_of_tag_nwchem_all_list nam_cen nam_ssy tag_nwc_l;;

test_number 12 (
(sof_nsb_l : string list ) = 
["he s 1 gaussian"; "he s 2 gaussian"]
);;

let sof_sso_l = skeleton_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry_name_of_tag_nwchem_all_list nam_cen nam_ssy tag_nwc_l;;

test_number 13 (
(sof_sso_l : string list ) =
 ["he s 1"; "he s 2"]
);;

let nwc_n_ske_sof_l = nwchem_shell_string_off_n_skeleton_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry_name_of_tag_nwchem_all_list nam_cen nam_ssy tag_nwc_l;;

test_number 14 (
( nwc_n_ske_sof_l : (string * string) list ) =
  [("he s 1 gaussian", "he s 1"); 
   ("he s 2 gaussian", "he s 2")]
);;

let sof_ske_sso = List.hd sof_sso_l;;
let sym_ske_sso = Skeleton_symbol_v.skeleton_body_centered_aopefset_shellordinal_constructor sof_ske_sso;;

test_number 15 (
( sym_ske_sso : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_body_symbol
   (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
     (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
       (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_shellordinal_symbol
         (Skeleton_body_centered_aopefset_shellordinal_symbol_t.Skeleton_body_centered_aopefset_shellordinal_constructor
           "he s 1"))))
);;

let sym_ske_l = skeleton_as_aopef_symbol_list_of_skeleton_as_one_shell_ordinal_symbol_of_tag_nwchem_all_list sym_ske_sso tag_nwc_l;;

test_number 16 (
( sym_ske_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_fence_symbol
    (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
      (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
        (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
          "he s 1 1")));
   Skeleton_symbol_t.Skeleton_fence_symbol
    (Skeleton_fence_symbol_t.Skeleton_fence_centered_symbol
      (Skeleton_fence_centered_symbol_t.Skeleton_fence_centered_aopef_symbol
        (Skeleton_fence_centered_aopef_symbol_t.Skeleton_fence_centered_aopef_constructor
          "he s 1 2")))]
);;


let sym_ske_sao = Skeleton_symbol_v.skeleton_body_centered_aopefset_onecenter_constructor nam_cen;;

test_number 17 (
( sym_ske_sao : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_body_symbol
   (Skeleton_body_symbol_t.Skeleton_body_centered_symbol
     (Skeleton_body_centered_symbol_t.Skeleton_body_centered_aopefset_symbol
       (Skeleton_body_centered_aopefset_symbol_t.Skeleton_body_centered_aopefset_onecenter_symbol
         (Skeleton_body_centered_aopefset_onecenter_symbol_t.Skeleton_body_centered_aopefset_onecenter_constructor
           "he"))))
);;
