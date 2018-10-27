(** {3 Db1pointsdata_as_context_tag_quatuor_by_basicname_databox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Db1pointsdata_as_context_tag_quatuor_by_basicname_databox_provider_v";
   "Needs : BDB1:Db1pointsdata_as_context_sector_tag_by_unit_provider_v";
   "Needs : BDB1:Db1pointsdata_as_context_domain_tag_by_unit_provider_v";
   "Needs : BDB1:Db1pointsdata_as_context_database_tag_by_unit_provider_v";
   "Needs : BDB1:Db1pointsdata_as_context_databox_tag_by_basicname_databox_provider_v";
   "What-is-it : the Db1points Context Quatuor from Db1pointsdata_context_databox_tag. Coerced Up";
   "Abbreviation : sec = sector";
   "Abbreviation : dba = db1pointsdata_context_database";
   "Abbreviation : dbo = db1pointsdata_context_databox";
   "Abbreviation : ncd = db1pointsdata_context_domain";
   "Author : François Colonna 30 mars 2017 at 17:39:31+02:00";
 ]
;;

(*  Context Wye-Tree        *)

(*  Sector Tag        sec   *)
(*      |                   *)
(*  Domain Tag        dcd   *)
(*      |                   *)
(*  Database Tag      dba   *)
(*      |                   *)
(*  Databox Tag       dbo   *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_dbo =
  let tag_db1_sec = Db1pointsdata_as_context_sector_tag_by_unit_provider_v.provide () in
  let tag_db1_dcd = Db1pointsdata_as_context_domain_tag_by_unit_provider_v.provide () in
  let tag_db1_dba = Db1pointsdata_as_context_database_tag_by_unit_provider_v.provide () in
  let tag_db1_dbo = Db1pointsdata_as_context_databox_tag_by_basicname_databox_provider_v.provide bna_dbo in
  
  Quatuor_v.make tag_db1_dbo tag_db1_dba tag_db1_dcd tag_db1_sec
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
(* done with do_provider_without_register.sh Db1pointsdata_as_context_tag_quatuor_by_basicname_databox_provider_v.ml force on lundi 26 septembre 2016, 07:27:03 (UTC+0200) *)
