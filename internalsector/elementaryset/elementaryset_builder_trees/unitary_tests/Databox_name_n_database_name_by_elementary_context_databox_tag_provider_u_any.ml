open Make_test_v;;

testing "Databox_name_n_database_name_by_elementary_context_databox_tag_provider_v with
    Databox_name_n_database_name_by_elementary_context_databox_tag_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Elementary_fence_by_elementary_tag_register_v.register;;
Register_v.delete Elementary_son_tag_list_by_elementary_father_tag_register_v.register;;
Register_v.delete Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete Elementary_tag_all_list_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Elementary_tag_all_list_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete Elementary_tag_subtree_by_elementary_tag_register_v.register;;
Register_v.delete Elementary_tag_tree_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Elementary_tag_tree_by_elementary_context_databox_tag_register_v.register;;

(* Tracing *)

(* toplevel 
   #use "Databox_name_n_database_name_by_elementary_context_databox_tag_provider_u_any.ml";; 

*)

open Databox_name_n_database_name_by_elementary_context_databox_tag_provider_v;;
  
let nam_ebo = "try_ao";;
let nam_eba = "nwchem";;

let tag_ebo = Elementary_context_databox_tag_by_databox_name_n_database_name_provider_v.provide (nam_ebo, nam_eba);;

test_number 1 (
(tag_ebo :
  Elementary_context_databox_symbol_t.elementary_context_databox_symbol
  Tag_t.tag ) =
  (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
    "try_ao",
   [16; 5; 6; 5])
);;

let nam_ebo = Elementary_context_databox_tag_v.string_off tag_ebo;;

test_number 2 ( 
(nam_ebo : string ) = 
"try_ao"
);;

let nam_eba = 
  Database_name_by_elementary_context_databox_tag_provider_v.provide 
    tag_ebo;;

test_number 3 ( 
(nam_eba : string ) = 
"nwchem"
);;

test_number 4 (
(nam_ebo, nam_eba) = provide tag_ebo
);;
