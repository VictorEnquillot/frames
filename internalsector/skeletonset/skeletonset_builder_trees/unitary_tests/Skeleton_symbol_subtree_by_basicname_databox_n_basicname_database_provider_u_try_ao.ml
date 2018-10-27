open Make_test_v;;

testing "Skeleton_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v with
    Skeleton_symbol_subtree_by_basicname_databox_n_basicname_database_provider_u_try_ao.ml";;

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


(* Debugging *)


(* toplevel 
   #use "Skeleton_symbol_subtree_by_basicname_databox_n_basicname_database_provider_u_try_ao.ml";; 

*)

(* Database file *)

let nam_dba = "nwchem";;
let nam_dbo = "try_ao";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

(* Argument (nam_dbo, nam_dba) *)

(* open Skeleton_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v;; *)
  
let tag_fig_fcd = Skeleton_as_context_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_fig_fcd : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
      (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
        "skeleton")),
   [8])
);;

let tag_fig_fba = Skeleton_as_context_database_tag_by_database_name_provider_v.provide nam_dba;;

test_number 2 (
(tag_fig_fba : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
  (Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_database_symbol
      (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
        "nwchem")),
   [1; 8])
);;

let tag_fig_fbo = 
  Skeleton_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide 
    (nam_dbo, nam_dba);;

test_number 3 (
(tag_fig_fbo : Skeleton_symbol_t.skeleton_symbol Tag_t.tag ) =
(Skeleton_symbol_t.Skeleton_context_symbol
   (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
      (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
         "try_ao")),
 [1; 1; 8])
);;
  
let tag_fig_fco_t = Trio_v.make tag_fig_fcd tag_fig_fba tag_fig_fbo;;

test_number 4 (
(tag_fig_fco_t : Skeleton_symbol_t.skeleton_symbol Tag_t.tag Trio_t.trio ) =
  ((Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
       (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
         "skeleton")),
    [8]),
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_database_symbol
       (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
         "nwchem")),
    [1; 8]),
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
       (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
         "try_ao")),
    [1; 1; 8]))
);;

test_number 5 (
tag_fig_fco_t = provide (nam_dbo, nam_dba)
);;
