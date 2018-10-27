(** {3 Skeleton_symbol_subtree_by_skeleton_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DSKE:Skeleton_symbol_subtree_by_skeleton_context_databox_tag_provider_v";
   "Needs : DSKE:Context_name_by_databaseset_global_sole_index_provider_v";
   "Needs : DSKE:Nwchem_tag_all_list_by_nwchem_context_databox_tag_provider_v";
   "Needs : DSKE:Son_nwchem_tag_list_by_father_nwchem_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : the Subtree (up to Databox) of all Skeleton Symbol from Nwchem_context_databox_tag";
   "How-is-it-done : by defining the Skeleton Symbol Tree node with information from Databaseset (Nwchem)";
   "How-is-it-done : by mapping Nwchem_symbol_string_off and Skeleton_symbol_string_off";
   "How-is-it-done : by getting Nwchem_tag from its String_off and Symbol";
   "How-is-it-done : by getting Nwchem_tag_son list from Nwchem_tag";
   "Remark : No storage. Only Tags are stored";
   "Improve : skip ECP if No ECP in databox";
  ]
;;

(*          |-           Skeleton_context_domain               *)
(*          |                    / | \                         *)
(*    Trio  |-           Skeleton_context_database             *)
(*          |                    / | \                         *)
(*          |-           Skeleton_context_databox              *)
(*                                 |                           *)
(*                           Skeleton_body                     *)
(*      Skeleton_body_aopefset_anycenter ( | ..._ecppefset_anycenter) *)
(*              "NWC"                                          *)
(*          /                     |                \           *)
(*    Skeleton_body_aopefset_onecenter Skeleton_body_aopefset_onecenter *)
(*                     "H"                             "He"  .          *)

(*    Skeleton_fence_aopef Skeleton_fence_aopefset ... *)
(*       "H S 1 1 "      ...   "He S 1 1" ...          *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_sbo =
  let (nam_dba, nam_dbo) =
    Database_name_n_databox_name_by_skeleton_context_databox_tag_provider_v.provide
      tag_sbo
  in
  Skeleton_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_v.provide 
    (nam_dba, nam_dbo)
;;


(** {6 Providing} *)

let provide tag_sbo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build tag_sbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Skeleton_symbol_subtree_by_skeleton_context_databox_tag_provider_v.ml on jeudi 19 mai 2016, 18:29:52 (UTC+0200) *)
