open Make_test_v;;

testing "Elementary_as_context_databox_tag_by_databox_name_n_database_name_provider_v with
    Elementary_as_context_databox_tag_by_databox_name_n_database_name_provider_u_any.ml";;

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
   #use "Elementary_as_context_databox_tag_by_databox_name_n_database_name_provider_u_any.ml";; 

*)


open Elementary_as_context_databox_tag_by_databox_name_n_database_name_provider_v;;

let nam_ebo = "try_ao";;
let nam_eba = "nwchem";;

let nam_qua = 
  Elementary_context_name_quatuor_by_databox_name_n_database_name_provider_v.provide (nam_ebo, nam_eba) 
;;

test_number 1 (
(nam_qua : String.t Quatuor_t.quatuor ) =
  ("try_ao", "nwchem", "elementary", "internal")
);;

let (nam_ebo, nam_eba, nam_ecd, nam_ecs) = nam_qua;;

let ord_ecs = Sector_ordinal_by_sector_name_provider_v.provide nam_ecs;;
  
let ord_ecd = Domain_ordinal_by_domain_name_provider_v.provide nam_ecd;;
  
let ord_eba = Database_ordinal_by_database_name_provider_v.provide nam_eba;;

let ord_ebo = Databox_ordinal_by_databox_name_provider_v.provide nam_ebo;;

let soi_ebo = [ord_ebo; ord_eba; ord_ecd; ord_ecs];;

test_number 2 (
(soi_ebo : Sole_index_t.sole_index ) = 
[16; 5; 6; 5]
);;

let sym_ele_ebo = Elementary_symbol_v.elementary_context_databox_constructor nam_ebo;;

test_number 3 (
(sym_ele_ebo : Elementary_symbol_t.elementary_symbol ) =
  Elementary_symbol_t.Elementary_context_symbol
   (Elementary_context_symbol_t.Elementary_context_databox_symbol
     (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
       "try_ao"))
);;

let tag_ele_ebo = Tag_v.make sym_ele_ebo soi_ebo;;

test_number 4 (
( tag_ele_ebo : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_databox_symbol
      (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
        "try_ao")),
   [16; 5; 6; 5])
);;

test_number 5 (
tag_ele_ebo = provide (nam_ebo, nam_eba)
);;
