open Make_test_v;;

testing "Skeleton_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v with
    Skeleton_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_u_any.ml";;

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
   #use "Skeleton_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_u_any.ml";; 

*)

open Skeleton_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v;;

let nam_ebo = "try_ao";;
let nam_eba = "nwchem";;
    
  let tag_ske_ecs = Skeleton_as_context_sector_tag_by_unit_provider_v.provide ();;
  let tag_ske_ecd = Skeleton_as_context_domain_tag_by_unit_provider_v.provide ();;
  let tag_ske_eba = 
    Skeleton_as_context_database_tag_by_database_name_provider_v.provide 
      nam_eba;;  

  let tag_ske_ebo = 
    Skeleton_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide 
      (nam_ebo, nam_eba);;

let tag_ske_qua = Quadruplet_v.make tag_ske_ebo tag_ske_eba tag_ske_ecd tag_ske_ecs;;

test_number 1 (
( tag_ske_qua :
  (Skeleton_symbol_t.skeleton_symbol Tag_t.tag,
   Skeleton_symbol_t.skeleton_symbol Tag_t.tag,
   Skeleton_symbol_t.skeleton_symbol Tag_t.tag,
   Skeleton_symbol_t.skeleton_symbol Tag_t.tag)
  Quadruplet_t.quadruplet ) =
  ((Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
       (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
         "try_ao")),
    [16; 5; 20; 5]),
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_database_symbol
       (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
         "nwchem")),
    [5; 20; 5]),
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
       (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
         "skeleton")),
    [20; 5]),
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_sector_symbol
       (Skeleton_context_sector_symbol_t.Skeleton_context_sector_constructor
         "internal")),
    [5]))
);;

let nam_qua = Quatuor_v.map 
      Skeleton_tag_v.string_off 
      tag_ske_qua;;

test_number 2 (
(nam_qua : string Quatuor_t.quatuor ) =
  ("try_ao", "nwchem", "skeleton", "internal")
);;

test_number 3 (
() = Check_consistency_by_skeleton_context_name_quatuor_provider_v.provide nam_qua;
);;

test_number 4 (
tag_ske_qua = provide (nam_ebo, nam_eba)
);;
