open Make_test_v;;

testing "Figure_symbol_from_db1pointsdata_symbol_translations_v with
    Figure_symbol_from_db1pointsdata_symbol_translations_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_figure_context_databox_tag_register_v.register;;
Register_v.delete Figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Figure_fence_by_figure_tag_register_v.register;;
Register_v.delete Figure_son_tag_list_by_figure_father_tag_register_v.register;;
Register_v.delete Figure_symbol_by_sole_index_register_v.register;;
Register_v.delete Figure_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Figure_tag_all_list_by_figure_context_databox_tag_register_v.register;;
Register_v.delete Figure_tag_subtree_by_figure_tag_register_v.register;;
Register_v.delete Figure_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Figure_tag_tree_by_figure_context_databox_tag_register_v.register;;

(* Tracing *)


(* toplevel 
   #use "Figure_symbol_from_db1pointsdata_symbol_translations_u_any.ml";; 

*)

(* Database file *)

let nam_dba = "db1points";;
let nam_dbo = "segment_BC";;

open Figure_symbol_from_db1pointsdata_symbol_translations_v;;

let (sym_fig_fbo, soi_fig_fbo) = Figure_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide (bna_dbo, bna_dba);;

test_number 1 (
(sym_fig_fbo : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_context_symbol
   (Figure_context_symbol_t.Figure_context_databox_symbol
     (Figure_context_databox_symbol_t.Figure_context_databox_constructor
       "segment_BC"))
);;

test_number 2 (
(soi_fig_fbo : Sole_index_t.sole_index ) = 
[15; 1; 7; 5]
);;

let sym_fig_son_fbo_l = son_figure_symbol_list_of_figure_as_context_databox_symbol sym_fig_fbo;;

test_number 3 (
( sym_fig_son_fbo_l : Figure_symbol_t.figure_symbol list ) =
  [Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_anycenter_symbol
          (Figure_set_body_centered_aopefset_anycenter_symbol_t.Figure_set_body_centered_aopefset_anycenter_constructor
            "segment_BC"))));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_ecppefset_symbol
        (Figure_set_body_centered_ecppefset_symbol_t.Figure_set_body_centered_ecppefset_constructor
          "segment_BC")))]
);;

let tag_nbo = Db1pointsdata_context_databox_tag_by_databox_name_provider_v.provide nam_dbo;;
let tag_nwc_t = Db1pointsdata_tag_tree_by_db1pointsdata_context_databox_tag_provider_v.provide tag_nbo;;

let tag_nwc_l = tag_db1pointsdata_all_list_of_basicname_databox nam_dbo;;

let cou_tag_nwc_l = List.length tag_nwc_l;;

test_number 4 (
(cou_tag_nwc_l : int ) = 80
);;

let tag_nwc_sl_0_10 = List_v.sublist_of_int_of_int_of_list 0 10 tag_nwc_l;;

test_number 5 (
( tag_nwc_sl_0_10 : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
  [(Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_sector_symbol
       (Db1pointsdata_context_sector_symbol_t.Db1pointsdata_context_sector_constructor
         "external")),
    [2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_domain_symbol
       (Db1pointsdata_context_domain_symbol_t.Db1pointsdata_context_domain_constructor
         "figure")),
    [20; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_database_symbol
       (Db1pointsdata_context_database_symbol_t.Db1pointsdata_context_database_constructor
         "db1points")),
    [5; 20; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_databox_symbol
       (Db1pointsdata_context_databox_symbol_t.Db1pointsdata_context_databox_constructor
         "segment_BC")),
    [16; 5; 20; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_version_symbol
       (Db1pointsdata_context_version_symbol_t.Db1pointsdata_context_version_constructor
         "v1.2.2")),
    [1; 16; 5; 20; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_body_symbol
     (Db1pointsdata_body_symbol_t.Db1pointsdata_body_node_symbol
       (Db1pointsdata_body_node_symbol_t.Db1pointsdata_body_node_aobasis_block
         "segment_BC")),
    [2; 16; 5; 20; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_body_symbol
     (Db1pointsdata_body_symbol_t.Db1pointsdata_body_node_symbol
       (Db1pointsdata_body_node_symbol_t.Db1pointsdata_body_node_aocomment_block
         "segment_BC")),
    [1; 2; 16; 5; 20; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_body_symbol
     (Db1pointsdata_body_symbol_t.Db1pointsdata_body_variable_symbol
       (Db1pointsdata_body_variable_symbol_t.Db1pointsdata_body_variable_databox_name
         "segment_BC")),
    [1; 1; 2; 16; 5; 20; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_body_symbol
     (Db1pointsdata_body_symbol_t.Db1pointsdata_body_node_symbol
       (Db1pointsdata_body_node_symbol_t.Db1pointsdata_body_node_comment_block
         "segment_BC AO")),
    [2; 1; 2; 16; 5; 20; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_comment_symbol
     (Db1pointsdata_comment_symbol_t.Db1pointsdata_comment_header
       "# Elements                             References"),
    [1; 2; 1; 2; 16; 5; 20; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_comment_symbol
     (Db1pointsdata_comment_symbol_t.Db1pointsdata_comment_dashed
       "# --------                             ----------"),
    [2; 2; 1; 2; 16; 5; 20; 2])]
);;

let sof_ncb_l = db1pointsdata_center_block_string_off_list_of_tag_db1pointsdata_all_list tag_nwc_l;;

test_number 6 (
(sof_ncb_l : string list ) = 
["He"]
);;

let sym_fig_l = figure_as_center_symbol_list_of_tag_db1pointsdata_all_list tag_nwc_l ;;

test_number 7 (
( sym_fig_l : Figure_symbol_t.figure_symbol list ) =
  [Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_onecenter_symbol
          (Figure_set_body_centered_aopefset_onecenter_symbol_t.Figure_set_body_centered_aopefset_onecenter_constructor
            "he"))))]
);;

let nam_cen = String.lowercase (List.hd sof_ncb_l);;
let sof_nsb_l = db1pointsdata_shell_block_string_off_list_of_center_name_of_tag_db1pointsdata_all_list nam_cen tag_nwc_l;;

test_number 8 (
(sof_nsb_l : string list ) =
  ["He S 1 GAUSSIAN"; "He S 2 GAUSSIAN"; "He P 3 GAUSSIAN";
   "He P 4 GAUSSIAN"]
);;

let sym_fig_cen = List.hd sym_fig_l;;
let sym_nss_l = db1pointsdata_shell_symmetry_list_of_figure_as_center_symbol_of_tag_db1pointsdata_all_list sym_fig_cen tag_nwc_l;;

test_number 9 (
(sym_nss_l : string list ) = 
["S"; "P"]
);;

let ssy_l = shell_symmetry_list_of_figure_as_center_symbol_of_tag_db1pointsdata_all_list sym_fig_cen tag_nwc_l;;

test_number 10 (
(ssy_l : string list ) = 
["s"; "p"]
);;

let sym_sss_l = figure_as_shell_symmetry_symbol_list_of_figure_as_center_symbol_of_tag_db1pointsdata_all_list sym_fig_cen tag_nwc_l;;

test_number 11 (
(sym_sss_l : Figure_symbol_t.figure_symbol list ) =
  [Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_symbol
          (Figure_set_body_centered_aopefset_shellsymmetry_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor
            "he s"))));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
      (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
        (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_symbol
          (Figure_set_body_centered_aopefset_shellsymmetry_symbol_t.Figure_set_body_centered_aopefset_shellsymmetry_constructor
            "he p"))))]
);;

let nam_ssy = List.hd ssy_l;;
let sof_nsb_l = db1pointsdata_shell_block_string_off_list_of_center_name_of_shell_symmetry_name_of_tag_db1pointsdata_all_list nam_cen nam_ssy tag_nwc_l;;

test_number 12 (
(sof_nsb_l : string list ) = 
["He S 1 GAUSSIAN"; "He S 2 GAUSSIAN"]
);;

let sof_sso_l = figure_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry_name_of_tag_db1pointsdata_all_list nam_cen nam_ssy tag_nwc_l;;

test_number 13 (
(sof_sso_l : string list ) =
 ["he s 1"; "he s 2"]
);;

let nwc_n_fig_sof_l = db1pointsdata_shell_string_off_n_figure_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry_name_of_tag_db1pointsdata_all_list nam_cen nam_ssy tag_nwc_l;;

test_number 14 (
( nwc_n_fig_sof_l : (string * string) list ) =
  [("He S 1 GAUSSIAN", "he s 1"); ("He S 2 GAUSSIAN", "he s 2")]
);;

let sof_fig_sso = List.hd sof_sso_l;;
let sym_fig_sso = Figure_symbol_v.figure_set_body_segment_constructor sof_fig_sso;;

test_number 15 (
( sym_fig_sso : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_set_body_symbol
   (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
     (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
       (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_shellordinal_symbol
         (Figure_set_body_centered_aopefset_shellordinal_symbol_t.Figure_set_body_segment_constructor
           "he s 1"))))
);;

let sym_fig_l = figure_as_aopef_symbol_list_of_figure_as_one_shell_ordinal_symbol_of_tag_db1pointsdata_all_list sym_fig_sso tag_nwc_l;;

test_number 16 (
( sym_fig_l : Figure_symbol_t.figure_symbol list ) =
  [Figure_symbol_t.Figure_set_fence_symbol
    (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
      (Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
        (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_constructor
          "he s 1 1")));
   Figure_symbol_t.Figure_set_fence_symbol
    (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
      (Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
        (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_constructor
          "he s 1 2")))]
);;


let sym_fig_sao = Figure_symbol_v.figure_set_body_centered_aopefset_onecenter_constructor nam_cen;;

test_number 17 (
( sym_fig_sao : Figure_symbol_t.figure_symbol ) =
  Figure_symbol_t.Figure_set_body_symbol
   (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
     (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
       (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_onecenter_symbol
         (Figure_set_body_centered_aopefset_onecenter_symbol_t.Figure_set_body_centered_aopefset_onecenter_constructor
           "he"))))
);;
