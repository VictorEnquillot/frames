(** {3 Skeleton_context_tag_triplet_by_database_name_n_databox_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Skeleton_context_tag_triplet_by_database_name_n_databox_name_provider_v";
   "Needs : DELE:Skeleton_context_domain_tag_by_unit_provider_v";
   "Needs : DELE:Skeleton_context_database_tag_by_database_name_provider_v";
   "Needs : DELE:Skeleton_context_databox_tag_by_database_name_n_databox_name_provider_v";
   "What-is-it : the Skeleton Context Triplet from Skeleton_context_databox_tag. Coerced Up";
   "Abbreviation : dba = skeleton_context_database";
   "Abbreviation : dbo = skeleton_context_databox";
   "Abbreviation : dcd = skeleton_context_domain";
 ]
;;

(*  Context Wye-Tree        *)

(*  Domain Tag        dcd   *)
(*      |                   *)
(*  Database Tag      sba   *)
(*      |                   *)
(*  Databox Tag       sbo   *)

(** {6 Context Tags} *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build (nam_dba, nam_dbo) =

  let tag_scd = Skeleton_context_domain_tag_by_unit_provider_v.provide () in
  let tag_sba = Skeleton_context_database_tag_by_database_name_provider_v.provide nam_dba in
  let tag_sbo = 
    Skeleton_context_databox_tag_by_database_name_n_databox_name_provider_v.provide 
      (nam_dba, nam_dbo)
  in
  
  Triplet_v.make tag_scd tag_sba tag_sbo
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Skeleton_context_tag_triplet_by_database_name_n_databox_name_provider_v.ml on jeudi 19 mai 2016, 18:29:52 (UTC+0200) *)
