open Make_test_v;;

testing "Skeleton_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v with
    Skeleton_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_u_any.ml";;

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
   #use "Skeleton_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_u_any.ml";; 

*)


open Skeleton_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v;;

let nam_ebo = "try_ao";;
let nam_eba = "nwchem";;

let nam_qua = 
  Skeleton_context_name_quatuor_by_basicname_databox_n_basicname_database_provider_v.provide (nam_ebo, nam_eba) 
;;

test_number 1 (
(nam_qua : String.t Quatuor_t.quatuor ) =
  ("try_ao", "nwchem", "skeleton", "internal")
);;

let (nam_ebo, nam_eba, nam_ecd, nam_ecs) = nam_qua;;

let ord_ecs = Sector_ordinal_by_sector_name_provider_v.provide nam_ecs;;
  
let ord_ecd = Domain_ordinal_by_domain_name_provider_v.provide nam_ecd;;
  
let ord_eba = Database_ordinal_by_database_name_provider_v.provide nam_eba;;

let ord_ebo = Databox_ordinal_by_basicname_databox_provider_v.provide nam_ebo;;

let soi_ebo = [ord_ebo; ord_eba; ord_ecd; ord_ecs];;

test_number 2 (
(soi_ebo : Sole_index_t.sole_index ) = 
[16; 5; 20; 5]
);;

let sym_ske_ebo = Skeleton_symbol_v.skeleton_context_databox_constructor nam_ebo;;

test_number 3 (
(sym_ske_ebo : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_context_symbol
   (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
     (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
       "try_ao"))
);;

let tag_ske_ebo = Tag_v.make sym_ske_ebo soi_ebo;;

test_number 4 (
( tag_ske_ebo : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
      (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
        "try_ao")),
   [16; 5; 20; 5])
);;

test_number 5 (
tag_ske_ebo = provide (nam_ebo, nam_eba)
);;
