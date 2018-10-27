open Make_test_v;;

testing "Elementary_as_context_sector_tag_by_unit_provider_v with
    Elementary_as_context_sector_tag_by_unit_provider_u_any.ml";;

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
   #use "Elementary_as_context_sector_tag_by_unit_provider_u_any.ml";; 

*)

open Elementary_as_context_sector_tag_by_unit_provider_v;;

let nam_ecs = Elementary_context_sector_name_by_unit_provider_v.provide ();;

test_number 1 (
(nam_ecs : string ) = 
"internal" 
);;

let soi_ecs = Context_sole_index_by_sector_name_provider_v.provide nam_ecs;;
  
test_number 2 (
(soi_ecs : int list ) = 
[5]
);;

let sym_ele_ncs = 
    Elementary_symbol_v.elementary_context_sector_constructor 
      nam_ecs;;

test_number 3 (
( sym_ele_ncs :
  Elementary_symbol_t.elementary_symbol ) =
  Elementary_symbol_t.Elementary_context_symbol
   (Elementary_context_symbol_t.Elementary_context_sector_symbol
     (Elementary_context_sector_symbol_t.Elementary_context_sector_constructor
       "internal"))
);;
 
let tag_ele_ncs = Tag_v.make sym_ele_ncs soi_ecs;;

test_number 4 (
(tag_ele_ncs :
  Elementary_symbol_t.elementary_symbol
  Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_sector_symbol
      (Elementary_context_sector_symbol_t.Elementary_context_sector_constructor
        "internal")),
   [5])
);;

test_number 5 (
tag_ele_ncs = provide ()
);;
