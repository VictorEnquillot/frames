open Make_test_v;;

testing "Elementary_as_context_database_tag_by_database_name_provider_v with
        Elementary_as_context_database_tag_by_database_name_provider_u_any.ml";;

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
   #use "Elementary_as_context_database_tag_by_database_name_provider_u_any.ml";; 

*)

open Elementary_as_context_database_tag_by_database_name_provider_v;;

let nam_eba = "nwchem";;

let nam_ecs = Elementary_context_sector_name_by_unit_provider_v.provide ();;

let nam_ecd = Elementary_context_domain_name_by_unit_provider_v.provide ();;
  
let ord_ecs = Sector_ordinal_by_sector_name_provider_v.provide nam_ecs;;
   
let ord_ecd = Domain_ordinal_by_domain_name_provider_v.provide nam_ecd;;
  
let ord_eba = Database_ordinal_by_database_name_provider_v.provide nam_eba;;
  
let soi_eba = [ord_eba; ord_ecd; ord_ecs];;

test_number 1 (
(soi_eba : int list ) = 
[5; 6; 5]
);;

let sym_ele_eba = 
  Elementary_symbol_v.elementary_context_database_constructor 
    nam_eba 
;;

test_number 2 (
(sym_ele_eba : Elementary_symbol_t.elementary_symbol ) =
 Elementary_symbol_t.Elementary_context_symbol
   (Elementary_context_symbol_t.Elementary_context_database_symbol
     (Elementary_context_database_symbol_t.Elementary_context_database_constructor
       "nwchem"))
);;
 
let tag_ele_eba = Tag_v.make sym_ele_eba soi_eba;;

test_number 3 (
(tag_ele_eba : Elementary_symbol_t.elementary_symbol
  Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_database_symbol
      (Elementary_context_database_symbol_t.Elementary_context_database_constructor
        "nwchem")),
   [5; 6; 5])
);;

test_number 4 (
tag_ele_eba = provide nam_eba
);;
