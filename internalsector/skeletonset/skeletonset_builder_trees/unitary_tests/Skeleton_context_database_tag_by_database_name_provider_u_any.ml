open Make_test_v;;

testing "Skeleton_context_database_tag_by_database_name_provider_v with
        Skeleton_context_database_tag_by_database_name_provider_u_any.ml";;

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
   #use "Skeleton_context_database_tag_by_database_name_provider_u_any.ml";; 

*)

open Skeleton_context_database_tag_by_database_name_provider_v;;

let nam_eba = "nwchem";;

let nam_ecs = Skeleton_context_sector_name_by_unit_provider_v.provide ();;

let nam_ecd = Skeleton_context_domain_name_by_unit_provider_v.provide ();;
  
let ord_ecs = Sector_ordinal_by_sector_name_provider_v.provide nam_ecs;;
   
let ord_ecd = Domain_ordinal_by_domain_name_provider_v.provide nam_ecd;;
  
let ord_eba = Database_ordinal_by_database_name_provider_v.provide nam_eba;;
  
let soi_eba = [ord_eba; ord_ecd; ord_ecs];;

test_number 1 (
(soi_eba : int list ) = 
[5; 20; 5]
);;

let sym_eba = 
  Skeleton_context_database_symbol_v.skeleton_context_database_constructor 
    nam_eba 
;;

test_number 2 (
(sym_eba : Skeleton_context_database_symbol_t.skeleton_context_database_symbol ) =
  Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
   "nwchem"
);;
 
let tag_sba = Tag_v.make sym_eba soi_eba;;

test_number 3 (
(tag_sba : Skeleton_context_database_symbol_t.skeleton_context_database_symbol
  Tag_t.tag ) =
  (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
    "nwchem",
   [5; 20; 5])
);;

test_number 4 (
tag_sba = provide nam_eba
);;
