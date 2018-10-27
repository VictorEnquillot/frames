open Make_test_v;;

testing "Nwchemdata_context_database_tag_by_unit_provider_v with
    Nwchemdata_context_database_tag_by_unit_provider_u_any.ml";;

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
   #use "Nwchemdata_context_database_tag_by_unit_provider_u_any.ml";; 

*)

open Nwchemdata_context_database_tag_by_unit_provider_v;;
  
let (nam_nba, nam_dom, nam_sec) = 
  Nwchemdata_context_name_trio_by_unit_provider_v.provide () 
;;

test_number 1 (
((nam_nba, nam_dom, nam_sec) : string Trio_t.trio ) = 
("nwchem", "skeleton", "external") 
);;

let soi_dba = 
    Context_sole_index_by_context_name_trio_provider_v.provide 
      (nam_nba, nam_dom, nam_sec) 
;;
  
test_number 2 (
(soi_dba : int list ) = 
[5; 20; 2]
);;

let sym_nba = 
  Nwchemdata_context_database_symbol_v.nwchemdata_context_database_constructor 
    nam_nba 
;;

test_number 3 (
(sym_nba : Nwchemdata_context_database_symbol_t.nwchemdata_context_database_symbol ) =
  Nwchemdata_context_database_symbol_t.Nwchemdata_context_database_constructor
   "nwchem"
);;
 
let tag_nba = Tag_v.make sym_nba soi_dba;;

test_number 4 (
(tag_nba : Nwchemdata_context_database_symbol_t.nwchemdata_context_database_symbol
  Tag_t.tag ) =
  (Nwchemdata_context_database_symbol_t.Nwchemdata_context_database_constructor
    "nwchem",
   [5; 20; 2])
);;

test_number 5 (
tag_nba = provide ()
);;
