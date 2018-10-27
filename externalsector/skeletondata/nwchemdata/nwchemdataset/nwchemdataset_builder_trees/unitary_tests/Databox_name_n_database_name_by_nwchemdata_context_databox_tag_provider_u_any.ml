open Make_test_v;;

testing "Databox_name_n_database_name_by_nwchemdata_context_databox_tag_provider_v with
    Databox_name_n_database_name_by_nwchemdata_context_databox_tag_provider_u_any.ml";;

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
   #use "Databox_name_n_database_name_by_nwchemdata_context_databox_tag_provider_u_any.ml";; 

*)

open Databox_name_n_database_name_by_nwchemdata_context_databox_tag_provider_v;;
  
let nam_nbo = "cc_pVTZ";;
let tag_nbo = Nwchemdata_context_databox_tag_by_databox_name_provider_v.provide nam_nbo;;

test_number 1 (
(tag_nbo :
  Nwchemdata_context_databox_symbol_t.nwchemdata_context_databox_symbol
  Tag_t.tag ) =
  (Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
    "cc_pVTZ",
   [13; 5; 20; 2])
);;

test_number 2 ( 
nam_nbo = Nwchemdata_context_databox_tag_v.string_off tag_nbo
);;

let nam_nba = Nwchemdata_context_database_name_by_unit_provider_v.provide ();;

test_number 3 ( 
(nam_nba : string ) = 
"nwchem"
);;

test_number 4 (
(nam_nbo, nam_nba) = provide tag_nbo
);;
