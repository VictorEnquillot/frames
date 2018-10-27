open Make_test_v;;

testing "Skeleton_as_context_database_tag_by_unit_provider_v with
    Skeleton_as_context_database_tag_by_unit_provider_u_any.ml";;

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
   #use "Skeleton_as_context_database_tag_by_unit_provider_u_any.ml";; 

*)

open Skeleton_as_context_database_tag_by_unit_provider_v;;
  
let (nam_eba, nam_dom, nam_sec) = 
  Skeleton_context_name_quatuor_by_basicname_databox_n_basicname_database_provider_v.provide () 
;;

test_number 1 (
((nam_eba, nam_dom, nam_sec) : string Trio_t.trio ) = 
("nwchem", "skeleton", "external") 
);;

let soi_dba = 
    Context_sole_index_by_context_name_trio_provider_v.provide 
      (nam_eba, nam_dom, nam_sec) 
;;
  
test_number 2 (
(soi_dba : int list ) = 
[5; 20; 2]
);;

let sym_nwc_eba = 
  Skeleton_symbol_v.skeleton_context_database_constructor 
    nam_eba 
;;

test_number 3 (
(sym_nwc_eba : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_context_symbol
   (Skeleton_context_symbol_t.Skeleton_context_database_symbol
     (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
       "nwchem"))
);;
 
let tag_nwc_eba = Tag_v.make sym_nwc_eba soi_dba;;

test_number 4 (
(tag_nwc_eba : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_database_symbol
      (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
        "nwchem")),
   [5; 20; 2])
);;

test_number 5 (
tag_nwc_eba = provide ()
);;
