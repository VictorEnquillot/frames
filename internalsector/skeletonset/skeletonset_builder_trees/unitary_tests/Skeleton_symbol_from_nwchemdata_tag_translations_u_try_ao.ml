open Make_test_v;;

testing "Skeleton_symbol_from_nwchemdata_tag_translations_v with
        Skeleton_symbol_from_nwchemdata_tag_translations_u_try_ao.ml";;

(* Deleting Registers *)

(* Tracing *)


(* toplevel 
   #use "Skeleton_symbol_from_nwchemdata_tag_translations_u_try_ao.ml";; 

*)

open Skeleton_symbol_from_nwchemdata_tag_translations_v;;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;

let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo;;
let bna_dba = Basicname_v.basicname_database_of_string nam_dba;;

let tag_ske_sbo = Skeleton_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide (bna_dbo, bna_dba);;

test_number 1 (
(tag_ske_sbo : Skeleton_symbol_t.skeleton_symbol Tag_t.tag) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
      (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
        "try_ao")),
   [26; 5; 19; 5])
);;

let (sym_ske_sbo, soi_ske_sbo) = tag_ske_sbo;;

let sym_ske_son_sbo_l = son_skeleton_symbol_list_of_skeleton_as_context_databox_symbol sym_ske_sbo;;

test_number 2 (
( sym_ske_son_sbo_l : Skeleton_symbol_t.skeleton_symbol list ) =
 [Skeleton_symbol_t.Skeleton_set_symbol
    (Skeleton_set_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol
          (Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_anycenter_symbol
            (Skeleton_set_body_centered_aopefset_anycenter_symbol_t.Skeleton_set_body_centered_aopefset_anycenter_constructor
              "try_ao")))));
   Skeleton_symbol_t.Skeleton_set_symbol
    (Skeleton_set_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_ecppefset_symbol
          (Skeleton_set_body_centered_ecppefset_symbol_t.Skeleton_set_body_centered_ecppefset_constructor
            "try_ao"))))]
);;

let tag_nbo = Nwchemdata_context_databox_tag_by_basicname_databox_provider_v.provide bna_dbo;;
let tag_nwc_t = Nwchemdata_tag_tree_by_nwchemdata_context_databox_tag_provider_v.provide tag_nbo;;

let tag_nwc_l = tag_nwchemdata_all_list_of_basicname_databox bna_dbo;;

let cou_tag_nwc_l = List.length tag_nwc_l;;

test_number 3 (
(cou_tag_nwc_l : int ) = 80
);;

let tag_nwc_sl_0_10 = List_v.sublist_of_int_of_int_of_list 0 10 tag_nwc_l;;

test_number 4 (
( tag_nwc_sl_0_10 : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag list ) =
  [(Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_sector_symbol
       (Nwchemdata_context_sector_symbol_t.Nwchemdata_context_sector_constructor
         "external")),
    [2]);
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_domain_symbol
       (Nwchemdata_context_domain_symbol_t.Nwchemdata_context_domain_constructor
         "skeleton")),
    [19; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_database_symbol
       (Nwchemdata_context_database_symbol_t.Nwchemdata_context_database_constructor
         "nwchem")),
    [5; 19; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_context_symbol
     (Nwchemdata_context_symbol_t.Nwchemdata_context_databox_symbol
       (Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
         "try_ao")),
    [26; 5; 19; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_variable_symbol
         (Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_version_symbol
           (Nwchemdata_set_body_variable_version_symbol_t.Nwchemdata_set_body_variable_version_constructor
             "v1.2.2")))),
    [1; 26; 5; 19; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aobasis_block_symbol
           (Nwchemdata_set_body_node_aobasis_block_symbol_t.Nwchemdata_set_body_node_aobasis_block_constructor
             "try_ao")))),
    [2; 26; 5; 19; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aocomment_block_symbol
           (Nwchemdata_set_body_node_aocomment_block_symbol_t.Nwchemdata_set_body_node_aocomment_block_constructor
             "try_ao")))),
    [1; 2; 26; 5; 19; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_variable_symbol
         (Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_databox_name_symbol
           (Nwchemdata_set_body_variable_databox_name_symbol_t.Nwchemdata_set_body_variable_databox_name_constructor
             "try_ao")))),
    [1; 1; 2; 26; 5; 19; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_set_symbol
     (Nwchemdata_set_symbol_t.Nwchemdata_set_body_symbol
       (Nwchemdata_set_body_symbol_t.Nwchemdata_set_body_node_symbol
         (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_comment_block_symbol
           (Nwchemdata_set_body_node_comment_block_symbol_t.Nwchemdata_set_body_node_comment_block_constructor
             "try_ao AO")))),
    [2; 1; 2; 26; 5; 19; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
     (Nwchemdata_comment_symbol_t.Nwchemdata_comment_header_symbol
       (Nwchemdata_comment_header_symbol_t.Nwchemdata_comment_header_constructor
         "# Elements                             References")),
    [1; 2; 1; 2; 26; 5; 19; 2]);
   (Nwchemdata_symbol_t.Nwchemdata_comment_symbol
     (Nwchemdata_comment_symbol_t.Nwchemdata_comment_dashed_symbol
       (Nwchemdata_comment_dashed_symbol_t.Nwchemdata_comment_dashed_constructor
         "# --------                             ----------")),
    [2; 2; 1; 2; 26; 5; 19; 2])]
);;

let sof_ncb_l = nwchem_center_block_string_off_list_of_tag_nwchemdata_all_list tag_nwc_l;;

test_number 5 (
(sof_ncb_l : string list ) = 
["He"]
);;

let sym_ske_l = skeleton_as_center_symbol_list_of_tag_nwchemdata_all_list tag_nwc_l ;;

test_number 6 (
( sym_ske_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_set_symbol
    (Skeleton_set_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol
          (Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_onecenter_symbol
            (Skeleton_set_body_centered_aopefset_onecenter_symbol_t.Skeleton_set_body_centered_aopefset_onecenter_constructor
              "he")))))]
);;

let nam_cen = String.lowercase (List.hd sof_ncb_l);;
let sof_nsb_l = nwchem_shell_block_string_off_list_of_center_name_of_tag_nwchemdata_all_list nam_cen tag_nwc_l;;

test_number 7 (
(sof_nsb_l : string list ) =
  ["He S 1 GAUSSIAN"; 
   "He S 2 GAUSSIAN"; 
   "He P 3 GAUSSIAN";
   "He P 4 GAUSSIAN"]
);;

let sym_ske_cen = List.hd sym_ske_l;;
let sym_nss_l = nwchem_shell_symmetry_list_of_skeleton_as_center_symbol_of_tag_nwchemdata_all_list sym_ske_cen tag_nwc_l;;

test_number 8 (
(sym_nss_l : string list ) = 
["S"; "P"]
);;

let ssy_l = shell_symmetry_list_of_skeleton_as_center_symbol_of_tag_nwchemdata_all_list sym_ske_cen tag_nwc_l;;

test_number 9 (
(ssy_l : string list ) = 
["s"; "p"]
);;

let sym_sss_l = skeleton_as_shell_symmetry_symbol_list_of_skeleton_as_center_symbol_of_tag_nwchemdata_all_list sym_ske_cen tag_nwc_l;;

test_number 10 (
(sym_sss_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_set_symbol
    (Skeleton_set_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol
          (Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_shellsymmetry_symbol
            (Skeleton_set_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_set_body_centered_aopefset_shellsymmetry_constructor
              "he s")))));
   Skeleton_symbol_t.Skeleton_set_symbol
    (Skeleton_set_symbol_t.Skeleton_set_body_symbol
      (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
        (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol
          (Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_shellsymmetry_symbol
            (Skeleton_set_body_centered_aopefset_shellsymmetry_symbol_t.Skeleton_set_body_centered_aopefset_shellsymmetry_constructor
              "he p")))))]
);;

let nam_ssy = List.hd ssy_l;;
let sof_nsb_l = nwchem_shell_block_string_off_list_of_center_name_of_shell_symmetry_name_of_tag_nwchemdata_all_list nam_cen nam_ssy tag_nwc_l;;

test_number 11 (
(sof_nsb_l : string list ) = 
["He S 1 GAUSSIAN"; "He S 2 GAUSSIAN"]
);;

let sof_sso_l = skeleton_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry_name_of_tag_nwchemdata_all_list nam_cen nam_ssy tag_nwc_l;;

test_number 12 (
(sof_sso_l : string list ) =
 ["he s 1"; "he s 2"]
);;

let nwc_n_ske_sof_l = nwchem_shell_string_off_n_skeleton_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry_name_of_tag_nwchemdata_all_list nam_cen nam_ssy tag_nwc_l;;

test_number 13 (
( nwc_n_ske_sof_l : (string * string) list ) =
  [("He S 1 GAUSSIAN", "he s 1"); ("He S 2 GAUSSIAN", "he s 2")]
);;

let sof_ske_sso = List.hd sof_sso_l;;
let sym_ske_sso = Skeleton_symbol_v.skeleton_set_body_centered_aopefset_shellordinal_constructor sof_ske_sso;;

test_number 14 (
( sym_ske_sso : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_set_symbol
   (Skeleton_set_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
       (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol
         (Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_shellordinal_symbol
           (Skeleton_set_body_centered_aopefset_shellordinal_symbol_t.Skeleton_set_body_centered_aopefset_shellordinal_constructor
             "he s 1")))))
);;

let sym_ske_l = skeleton_as_aopef_symbol_list_of_skeleton_as_one_shell_ordinal_symbol_of_tag_nwchemdata_all_list sym_ske_sso tag_nwc_l;;

test_number 15 (
( sym_ske_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_set_symbol
    (Skeleton_set_symbol_t.Skeleton_set_fence_symbol
      (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
        (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
          (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
            "he s 1 1"))));
   Skeleton_symbol_t.Skeleton_set_symbol
    (Skeleton_set_symbol_t.Skeleton_set_fence_symbol
      (Skeleton_set_fence_symbol_t.Skeleton_set_fence_centered_symbol
        (Skeleton_set_fence_centered_symbol_t.Skeleton_set_fence_centered_aopef_symbol
          (Skeleton_set_fence_centered_aopef_symbol_t.Skeleton_set_fence_centered_aopef_constructor
            "he s 1 2"))))]
);;

let sym_ske_sao = Skeleton_symbol_v.skeleton_set_body_centered_aopefset_onecenter_constructor nam_cen;;

test_number 16 (
( sym_ske_sao : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_set_symbol
   (Skeleton_set_symbol_t.Skeleton_set_body_symbol
     (Skeleton_set_body_symbol_t.Skeleton_set_body_centered_symbol
       (Skeleton_set_body_centered_symbol_t.Skeleton_set_body_centered_aopefset_symbol
         (Skeleton_set_body_centered_aopefset_symbol_t.Skeleton_set_body_centered_aopefset_onecenter_symbol
           (Skeleton_set_body_centered_aopefset_onecenter_symbol_t.Skeleton_set_body_centered_aopefset_onecenter_constructor
             "he")))))
);;
