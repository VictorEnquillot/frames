(** {3 Localinput_as_context_tag_quatuor_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
    "Current : BLOI:Localinput_as_context_tag_quatuor_by_basicname_inputbox_provider_v";
   "Needs : BLOI:Localinput_as_context_sector_tag_by_unit_provider_v";
   "Needs : BLOI:Localinput_as_context_domain_tag_by_unit_provider_v";
   "Needs : BLOI:Localinput_as_context_database_tag_by_unit_provider_v";
   "Needs : BLOI:Localinput_as_context_databox_tag_by_basicname_inputbox_provider_v";
    "What-is-it : the Local Context Quatuor from Localinput_context_inputbox_tag. Coerced Up";
   "Abbreviation : sec = sector";
   "Abbreviation : dba = localinput_context_inputbase";
   "Abbreviation : dbo = localinput_context_inputbox";
   "Abbreviation : ncd = localinput_context_domain";
   "Author : François Colonna 29 mars 2017 at 09:22:44+02:00";
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

let build bna_ibo =
  let tag_loi_sec = Localinput_as_context_sector_tag_by_unit_provider_v.provide () in
  let tag_loi_lcd = Localinput_as_context_domain_tag_by_unit_provider_v.provide () in
  let tag_loi_lba = Localinput_as_context_database_tag_by_unit_provider_v.provide () in
  let tag_loi_lbo = Localinput_as_context_databox_tag_by_basicname_inputbox_provider_v.provide bna_ibo in
  
  Quatuor_v.make tag_loi_lbo tag_loi_lba tag_loi_lcd tag_loi_sec
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
(* done with do_provider_without_register.sh Localinput_as_context_tag_quatuor_by_basicname_inputbox_provider_v.ml force on lundi 31 octobre 2016, 14:54:06 (UTC+0100) *)
