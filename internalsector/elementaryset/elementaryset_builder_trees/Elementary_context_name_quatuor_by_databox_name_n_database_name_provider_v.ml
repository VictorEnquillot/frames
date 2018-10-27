(** {3 Elementary_context_name_quatuor_by_databox_name_n_database_name_provider_v} *)

(** {3 Elementary_context_name_quatuor_by_databox_name_n_database_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BELE:Elementary_context_name_quatuor_by_databox_name_n_database_name_provider_v";
   "Needs : BELE:Elementary_context_sector_name_by_unit_provider_v";
   "Needs : BELE:Elementary_context_domain_name_by_unit_provider_v";
   "Needs : BELE:Check_consistency_by_elementary_context_name_quatuor_provider_v";
   "What-is-it : the Context name Quatuor from Databox_name and Database_name";
   "Abbreviation : ecs = elementary_context_sector";
   "Abbreviation : ecd = elementary_context_domain";
   "Abbreviation : eba = elementary_context_database";
   "Abbreviation : ebo = elementary_context_databox";
   "Author : François Colonna 05 octobre 2016 at 13:08:54+02:00";
 ]
;;

(*  Context Wye-Tree        *)

(*  Ncstor Tag        ecs   *)
(*      |                   *)
(*  Domain Tag        ecd   *)
(*      |                   *)
(*  Database Tag      eba   *)
(*      |                   *)
(*  Databox Tag       ebo   *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (nam_ebo, nam_eba) =
  let nam_ecs = Elementary_context_sector_name_by_unit_provider_v.provide () in
  let nam_ecd = Elementary_context_domain_name_by_unit_provider_v.provide () in
  
  let nam_qua = Quatuor_v.make nam_ebo nam_eba nam_ecd nam_ecs in
  Check_consistency_by_elementary_context_name_quatuor_provider_v.provide nam_qua;
  nam_qua
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_without_register_v.ml *)
(* done with do_provider_without_register.sh Elementary_context_name_quatuor_by_databox_name_n_database_name_provider_v.ml force on lundi 10 octobre 2016, 09:13:01 (UTC+0200) *)
