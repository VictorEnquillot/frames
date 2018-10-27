open Make_test_v;;

testing "Prototyp%e_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v with
    Skeleton_symbol_subtree_by_basicname_databox_n_basicname_database_provider_u_cc_pvtz.ml";;

(* Deleting Registers *)

(* Tracing *)


(* toplevel 
   #use "Skeleton_symbol_subtree_by_basicname_databox_n_basicname_database_provider_u_cc_pvtz.ml";; 

*)

open Skeleton_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v;;

let nam_dbo = "cc_pVTZ";;
let nam_dba = "nwchem";;

let bna_dba = Basicname_v.basicname_database_of_string nam_dba;;
let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo;;

let tag_ske_sbo = 
    Skeleton_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide
      (bna_dbo, bna_dba) ;;

test_number 1 (
(tag_ske_sbo : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
      (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
        "cc_pVTZ")),
   [16; 5; 19; 5])
);;

let (sym_ske_sbo, soi_ske_sbo) = tag_ske_sbo;;

let tag_nwc_l = 
    Skeleton_symbol_from_nwchemdata_tag_translations_v.tag_nwchemdata_all_list_of_basicname_databox 
      bna_dbo;;

let sym_ske_st = skeleton_symbol_subtree_nwchemdata_of_tag_nwchemdata_all_list_of_skeleton_as_context_databox_symbol
    tag_nwc_l
    sym_ske_sbo;;

test_number 2 (
sym_ske_st = provide (bna_dbo, bna_dba)
);;
