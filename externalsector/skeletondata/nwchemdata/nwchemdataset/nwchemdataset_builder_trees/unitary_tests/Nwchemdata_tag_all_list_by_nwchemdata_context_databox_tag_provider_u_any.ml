open Make_test_v;;

testing "Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_provider_v with
    Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_provider_u_any.ml";;

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
   #use "Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_provider_u_any.ml";; 

*)

open Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_provider_v;;

let nam_nbo = "cc_pVTZ";;
 
let tag_nbo = Nwchemdata_context_databox_tag_by_databox_name_provider_v.provide nam_nbo;;

let tag_nwc_l = Nwchemdata_tag_all_list_by_databox_name_provider_v.provide nam_nbo;;

test_number 1 (
tag_nwc_l = provide tag_nbo
);;
