(** {3 Skeleton_tag_tree_by_skeleton_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DSKE:Skeleton_tag_tree_by_skeleton_context_databox_tag_provider_v";
   "Needs : DSKE:Database_name_n_databox_name_by_skeleton_context_databox_tag_provider_v";
   "Needs : DSKE:Skeleton_tag_tree_by_skeleton_context_databox_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : the Tree (up to Domain) of all Skeleton Symbol from Skeleton_context_databox_tag";
   "Author : François Colonna 07 mai 2016 at 16:56:58+02:00";
  ]
;;

(*                            Skeleton_context_databox Wye-B-Tree                *)

(*                            Skeleton_context_domain symbol                      *)
(*                                         |                                       *)
(*                            Skeleton_context_database symbol                    *)
(*                                         |                                       *)
(*                            Skeleton_context_databox symbol                     *)
(*                                         |                                       *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_sbo =
  let (nam_dba, nam_dbo) =
    Database_name_n_databox_name_by_skeleton_context_databox_tag_provider_v.provide
      tag_sbo
  in
  Skeleton_tag_tree_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo)
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Skeleton_tag_tree_by_skeleton_context_databox_tag_provider_v.ml on jeudi 19 mai 2016, 18:29:53 (UTC+0200) *)
