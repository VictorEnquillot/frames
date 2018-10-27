open Make_test_v;;

testing "Elementary_as_context_tag_quatuor_by_databox_name_n_database_name_provider_v with
    Elementary_as_context_tag_quatuor_by_databox_name_n_database_name_provider_u_any.ml";;

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
   #use "Elementary_as_context_tag_quatuor_by_databox_name_n_database_name_provider_u_any.ml";; 

*)

open Elementary_as_context_tag_quatuor_by_databox_name_n_database_name_provider_v;;

let nam_ebo = "try_ao";;
let nam_eba = "nwchem";;
    
  let tag_ele_ecs = Elementary_as_context_sector_tag_by_unit_provider_v.provide ();;
  let tag_ele_ecd = Elementary_as_context_domain_tag_by_unit_provider_v.provide ();;
  let tag_ele_eba = 
    Elementary_as_context_database_tag_by_database_name_provider_v.provide 
      nam_eba;;  

  let tag_ele_ebo = 
    Elementary_as_context_databox_tag_by_databox_name_n_database_name_provider_v.provide 
      (nam_ebo, nam_eba);;

let tag_ele_qua = Quadruplet_v.make tag_ele_ebo tag_ele_eba tag_ele_ecd tag_ele_ecs;;

test_number 1 (
(tag_ele_qua :
  (Elementary_symbol_t.elementary_symbol Tag_t.tag,
   Elementary_symbol_t.elementary_symbol Tag_t.tag,
   Elementary_symbol_t.elementary_symbol Tag_t.tag,
   Elementary_symbol_t.elementary_symbol Tag_t.tag)
  Quadruplet_t.quadruplet ) =
  ((Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_databox_symbol
       (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
         "try_ao")),
    [16; 5; 6; 5]),
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_database_symbol
       (Elementary_context_database_symbol_t.Elementary_context_database_constructor
         "nwchem")),
    [5; 6; 5]),
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_domain_symbol
       (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor
         "elementary")),
    [6; 5]),
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_sector_symbol
       (Elementary_context_sector_symbol_t.Elementary_context_sector_constructor
         "internal")),
    [5]))
);;

let nam_qua = Quatuor_v.map 
      Elementary_tag_v.string_off 
      tag_ele_qua;;

test_number 2 (
(nam_qua : string Quatuor_t.quatuor ) =
  ("try_ao", "nwchem", "elementary", "internal")
);;

test_number 3 (
() = Check_consistency_by_elementary_context_name_quatuor_provider_v.provide nam_qua;
);;

test_number 4 (
tag_ele_qua = provide (nam_ebo, nam_eba)
);;
