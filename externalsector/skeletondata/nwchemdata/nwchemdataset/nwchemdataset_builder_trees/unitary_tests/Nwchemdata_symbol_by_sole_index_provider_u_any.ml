open Make_test_v;;

testing "Nwchemdata_symbol_by_sole_index_provider_v with
    Nwchemdata_symbol_by_sole_index_provider_u_any.ml";;

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
   #use "Nwchemdata_symbol_by_sole_index_provider_u_any.ml";; 

*)

open Nwchemdata_symbol_by_sole_index_provider_v;;

let nam_nbo = "cc_pVTZ";;
let tag_nwc_l = Nwchemdata_tag_all_list_by_databox_name_provider_v.provide nam_nbo;;

let tag_nwc = List.find (fun (s, i) -> Nwchemdata_symbol_v.string_off s = "33.8700000") tag_nwc_l;;

test_number 1 (
(tag_nwc : Nwchemdata_symbol_t.nwchemdata_symbol Tag_t.tag ) =
  (Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
    (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "33.8700000"),
   [1; 1; 2; 1; 2; 1; 2; 2; 2; 13; 5; 20; 2])
);;

let soi_nwc = Tag_v.sole_index_off_tag tag_nwc;;

test_number 2 (
(soi_nwc : Sole_index_t.sole_index ) =
  [1; 1; 2; 1; 2; 1; 2; 2; 2; 13; 5; 20; 2]
);;

let sym_nwc = Nwchemdata_symbol_by_sole_index_register_v.retrieve nam_mod soi_nwc;;

test_number 3 (
(sym_nwc : Nwchemdata_symbol_t.nwchemdata_symbol ) =
Nwchemdata_symbol_t.Nwchemdata_set_fence_symbol
  (Nwchemdata_set_fence_symbol_t.Nwchemdata_set_fence_float_positive "33.8700000")
);;

test_number 4 (
sym_nwc = provide soi_nwc
);;
