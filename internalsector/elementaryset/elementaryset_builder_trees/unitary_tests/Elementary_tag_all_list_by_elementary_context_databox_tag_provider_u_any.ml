open Make_test_v;;

testing "Elementary_tag_all_list_by_elementary_context_databox_tag_provider_v with
    Elementary_tag_all_list_by_elementary_context_databox_tag_provider_u_any.ml";;

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
   #use "Elementary_tag_all_list_by_elementary_context_databox_tag_provider_u_any.ml";; 

*)

open Elementary_tag_all_list_by_elementary_context_databox_tag_provider_v;;

let nam_ebo = "try_ao";;
let nam_eba = "nwchem";;
 
let tag_ebo =  Elementary_context_databox_tag_by_databox_name_n_database_name_provider_v.provide (nam_ebo, nam_eba);;

test_number 1 (
(tag_ebo :
  Elementary_context_databox_symbol_t.elementary_context_databox_symbol
  Tag_t.tag ) =
  (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
    "try_ao",
   [16; 5; 6; 5])
);;

test_number 2 (
(nam_ebo, nam_eba) =
   Databox_name_n_database_name_by_elementary_context_databox_tag_provider_v.provide
     tag_ebo
);;

let tag_ele_l = Elementary_tag_all_list_by_databox_name_n_database_name_provider_v.provide (nam_ebo, nam_eba);;

let tag_ele_con_l = List.filter 
    (fun (s, i) -> Elementary_symbol_v.is_elementary_context_symbol_off_elementary_symbol s)
    tag_ele_l;;

test_number 3 (
(tag_ele_con_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_sector_symbol
       (Elementary_context_sector_symbol_t.Elementary_context_sector_constructor
         "internal")),
    [5]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_domain_symbol
       (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor
         "elementary")),
    [6; 5]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_database_symbol
       (Elementary_context_database_symbol_t.Elementary_context_database_constructor
         "nwchem")),
    [5; 6; 5]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_databox_symbol
       (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
         "try_ao")),
    [16; 5; 6; 5])]
);;

test_number 4 (
tag_ele_l = provide tag_ebo 
);;
