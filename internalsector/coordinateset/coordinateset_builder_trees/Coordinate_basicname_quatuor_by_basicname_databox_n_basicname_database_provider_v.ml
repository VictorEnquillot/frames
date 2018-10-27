(** {3 Coordinate_basicname_quatuor_by_basicname_databox_n_basicname_database_provider_v} *)

(** {3 Coordinate_basicname_quatuor_by_basicname_databox_n_basicname_database_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BCOO:Coordinate_basicname_quatuor_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : BCOO:Coordinate_context_sector_name_by_unit_provider_v";
   "Needs : BCOO:Coordinate_basicname_domain_by_unit_provider_v";
   "Needs : BCOO:Check_consistency_by_coordinate_basicname_quatuor_provider_v";
   "What-is-it : the Context name Quatuor from Databox_name and Database_name";
   "Abbreviation : ecs = coordinate_context_sector";
   "Abbreviation : ecd = coordinate_context_domain";
   "Abbreviation : eba = coordinate_context_database";
   "Abbreviation : ebo = coordinate_context_databox";
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

let build (bna_dbo, bna_dba) =
  let bna_ecs = Coordinate_basicname_sector_by_unit_provider_v.provide () in
  let bna_ecd = Coordinate_basicname_domain_by_unit_provider_v.provide () in
  
  let bna_qua = Quatuor_v.make bna_dbo bna_dba bna_ecd bna_ecs in
  Check_consistency_by_coordinate_basicname_quatuor_provider_v.provide bna_qua;
  bna_qua
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
(* done with do_provider_without_register.sh Coordinate_basicname_quatuor_by_basicname_databox_n_basicname_database_provider_v.ml force on lundi 10 octobre 2016, 09:13:01 (UTC+0200) *)
