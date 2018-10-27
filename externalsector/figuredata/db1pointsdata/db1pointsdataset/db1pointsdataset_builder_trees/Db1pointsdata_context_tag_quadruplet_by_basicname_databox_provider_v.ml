(** {3 Db1pointsdata_context_tag_quadruplet_by_basicname_databox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Db1pointsdata_context_tag_quadruplet_by_basicname_databox_provider_v";
   "Needs : BDB1:Db1pointsdata_context_sector_tag_by_unit_provider_v";
   "Needs : BDB1:Db1pointsdata_context_domain_tag_by_unit_provider_v";
   "Needs : BDB1:Db1pointsdata_context_database_tag_by_unit_provider_v";
   "Needs : BDB1:Db1pointsdata_context_databox_tag_by_basicname_databox_provider_v";
   "What-is-it : the Db1points Context Quadruplet from Db1pointsdata_context_databox_tag. Coerced Up";
   "Abbreviation : dcs = db1pointsdata_context_sector";
   "Abbreviation : dba = db1pointsdata_context_database";
   "Abbreviation : dbo = db1pointsdata_context_databox";
   "Abbreviation : dcd = db1pointsdata_context_domain";
   "Author : François Colonna 25 septembre 2016 at 20:23:17+02:00";
 ]
;;

(*  Context Wye-Tree        *)

(*  Ncstor Tag        dcs   *)
(*      |                   *)
(*  Domain Tag        dcd   *)
(*      |                   *)
(*  Database Tag      dba   *)
(*      |                   *)
(*  Databox Tag       dbo   *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_dbo =
  let tag_dcs = Db1pointsdata_context_sector_tag_by_unit_provider_v.provide () in
  let tag_dcd = Db1pointsdata_context_domain_tag_by_unit_provider_v.provide () in
  let tag_dba = Db1pointsdata_context_database_tag_by_unit_provider_v.provide () in
  let tag_dbo = Db1pointsdata_context_databox_tag_by_basicname_databox_provider_v.provide bna_dbo in
  
  let tag_qua = Quadruplet_v.make tag_dbo tag_dba tag_dcd tag_dcs in

  let nam_qua = Quadruplet_v.map 
      Db1pointsdata_context_databox_tag_v.string_off 
      Db1pointsdata_context_database_tag_v.string_off 
      Db1pointsdata_context_domain_tag_v.string_off 
      Db1pointsdata_context_sector_tag_v.string_off 
      tag_qua 
  in
  Check_consistency_by_context_name_quatuor_provider_v.provide nam_qua;
  tag_qua
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
(* done with do_provider_without_register.sh Db1pointsdata_context_tag_quadruplet_by_basicname_databox_provider_v.ml force on lundi 26 septembre 2016, 07:27:05 (UTC+0200) *)
