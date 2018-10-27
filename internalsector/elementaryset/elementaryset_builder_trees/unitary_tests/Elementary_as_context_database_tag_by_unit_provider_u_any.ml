open Make_test_v;;

testing "Elementary_as_context_database_tag_by_unit_provider_v with
    Elementary_as_context_database_tag_by_unit_provider_u_any.ml";;

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
   #use "Elementary_as_context_database_tag_by_unit_provider_u_any.ml";; 

*)

open Elementary_as_context_database_tag_by_unit_provider_v;;
  
let (nam_eba, nam_dom, nam_sec) = 
  Elementary_context_name_quatuor_by_databox_name_n_database_name_provider_v.provide () 
;;

test_number 1 (
((nam_eba, nam_dom, nam_sec) : string Trio_t.trio ) = 
("nwchem", "skeleton", "external") 
);;

let soi_dba = 
    Context_sole_index_by_context_name_trio_provider_v.provide 
      (nam_eba, nam_dom, nam_sec) 
;;
  
test_number 2 (
(soi_dba : int list ) = 
[5; 20; 2]
);;

let sym_nwc_eba = 
  Elementary_symbol_v.elementary_context_database_constructor 
    nam_eba 
;;

test_number 3 (
(sym_nwc_eba : Elementary_symbol_t.elementary_symbol ) =
  Elementary_symbol_t.Elementary_context_symbol
   (Elementary_context_symbol_t.Elementary_context_database_symbol
     (Elementary_context_database_symbol_t.Elementary_context_database_constructor
       "nwchem"))
);;
 
let tag_nwc_eba = Tag_v.make sym_nwc_eba soi_dba;;

test_number 4 (
(tag_nwc_eba : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_database_symbol
      (Elementary_context_database_symbol_t.Elementary_context_database_constructor
        "nwchem")),
   [5; 20; 2])
);;

test_number 5 (
tag_nwc_eba = provide ()
);;
