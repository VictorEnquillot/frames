open Make_test_v;;

testing "Skeleton_as_context_sector_tag_by_unit_provider_v with
    Skeleton_as_context_sector_tag_by_unit_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Basicname_databox_n_basicname_database_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Skeleton_fence_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_son_tag_list_by_skeleton_father_tag_register_v.register;;
Register_v.delete Skeleton_symbol_by_sole_index_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_subtree_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;

(* Tracing *)

(* toplevel 
   #use "Skeleton_as_context_sector_tag_by_unit_provider_u_any.ml";; 

*)

open Skeleton_as_context_sector_tag_by_unit_provider_v;;

let nam_ecs = Skeleton_context_sector_name_by_unit_provider_v.provide ();;

test_number 1 (
(nam_ecs : string ) = 
"internal" 
);;

let soi_ecs = Context_sole_index_by_sector_name_provider_v.provide nam_ecs;;
  
test_number 2 (
(soi_ecs : int list ) = 
[5]
);;

let sym_ske_ncs = 
    Skeleton_symbol_v.skeleton_context_sector_constructor 
      nam_ecs;;

test_number 3 (
( sym_ske_ncs :
  Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_context_symbol
   (Skeleton_context_symbol_t.Skeleton_context_sector_symbol
     (Skeleton_context_sector_symbol_t.Skeleton_context_sector_constructor
       "internal"))
);;
 
let tag_ske_ncs = Tag_v.make sym_ske_ncs soi_ecs;;

test_number 4 (
(tag_ske_ncs :
  Skeleton_symbol_t.skeleton_symbol
  Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_sector_symbol
      (Skeleton_context_sector_symbol_t.Skeleton_context_sector_constructor
        "internal")),
   [5])
);;

test_number 5 (
tag_ske_ncs = provide ()
);;
