open Make_test_v;;

testing "Skeleton_context_tag_quadruplet_by_basicname_databox_n_basicname_database_provider_v with
    Skeleton_context_tag_quadruplet_by_basicname_databox_n_basicname_database_provider_u_any.ml";;

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
   #use "Skeleton_context_tag_quadruplet_by_basicname_databox_n_basicname_database_provider_u_any.ml";; 

*)

open Skeleton_context_tag_quadruplet_by_basicname_databox_n_basicname_database_provider_v;;

let nam_ebo = "try_ao";;
let nam_eba = "nwchem";;
    
  let tag_ecs = Skeleton_context_sector_tag_by_unit_provider_v.provide ();;
  let tag_ecd = Skeleton_context_domain_tag_by_unit_provider_v.provide ();;
  let tag_sba = 
    Skeleton_context_database_tag_by_database_name_provider_v.provide 
      nam_eba;;  

  let tag_sbo = 
    Skeleton_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide 
      (nam_ebo, nam_eba);;

let tag_qua = Quadruplet_v.make tag_sbo tag_sba tag_ecd tag_ecs;;

test_number 1 (
(tag_qua :
  (Skeleton_context_databox_symbol_t.skeleton_context_databox_symbol
   Tag_t.tag,
   Skeleton_context_database_symbol_t.skeleton_context_database_symbol
   Tag_t.tag,
   Skeleton_context_domain_symbol_t.skeleton_context_domain_symbol Tag_t.tag,
   Skeleton_context_sector_symbol_t.skeleton_context_sector_symbol Tag_t.tag)
  Quadruplet_t.quadruplet ) =
  ((Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
     "try_ao",
    [16; 5; 20; 5]),
   (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
     "nwchem",
    [5; 20; 5]),
   (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
     "skeleton",
    [20; 5]),
   (Skeleton_context_sector_symbol_t.Skeleton_context_sector_constructor
     "internal",
    [5]))
);;

let nam_qua = Quadruplet_v.map 
    Skeleton_context_databox_tag_v.string_off 
    Skeleton_context_database_tag_v.string_off 
    Skeleton_context_domain_tag_v.string_off 
    Skeleton_context_sector_tag_v.string_off 
    tag_qua 
;;

test_number 2 (
( nam_qua : (string, string, string, string) Quadruplet_t.quadruplet ) =
  ("try_ao", "nwchem", "skeleton", "internal")
);;

test_number 3 (
() = Check_consistency_by_skeleton_context_name_quatuor_provider_v.provide nam_qua;
);;

test_number 4 (
tag_qua = provide (nam_ebo, nam_eba)
);;
