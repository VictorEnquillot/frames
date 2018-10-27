(** {3 Localinput_context_tag_quadruplet_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BLOI:Localinput_context_tag_quadruplet_by_basicname_inputbox_provider_v";
   "Needs : BLOI:Localinput_context_sector_tag_by_unit_provider_v";
   "Needs : BLOI:Localinput_context_domain_tag_by_unit_provider_v";
   "Needs : BLOI:Localinput_context_inputbase_tag_by_unit_provider_v";
   "Needs : BLOI:Localinput_context_inputbox_tag_by_basicname_inputbox_provider_v";
   "Needs : BLOI:Check_consistency_by_basicname_quatuor_provider_v";
   "What-is-it : the Local Context Quadruplet from Localinput_context_inputbox_tag. Coerced Up";
   "Abbreviation : dcs = localinput_context_sector";
   "Abbreviation : dba = localinput_context_inputbase";
   "Abbreviation : dbo = localinput_context_inputbox";
   "Abbreviation : dcd = localinput_context_domain";
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

let build bna_ibo =
  let tag_lcs = Localinput_context_sector_tag_by_unit_provider_v.provide () in
  let tag_lcd = Localinput_context_domain_tag_by_unit_provider_v.provide () in
  let tag_lba = Localinput_context_inputbase_tag_by_unit_provider_v.provide () in
  let tag_lbo = Localinput_context_inputbox_tag_by_basicname_inputbox_provider_v.provide bna_ibo in
  
  let tag_qua = Quadruplet_v.make tag_lbo tag_lba tag_lcd tag_lcs in

  let nam_qua = Quadruplet_v.map 
      Localinput_context_inputbox_tag_v.string_off 
      Localinput_context_inputbase_tag_v.string_off 
      Localinput_context_domain_tag_v.string_off 
      Localinput_context_sector_tag_v.string_off 
      tag_qua 
  in
  let bna_qua = Basicname_quatuor_by_context_name_quatuor_provider_v.provide nam_qua in
  Check_consistency_by_basicname_quatuor_provider_v.provide bna_qua;
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
(* done with do_provider_without_register.sh Localinput_context_tag_quadruplet_by_basicname_inputbox_provider_v.ml force on lundi 31 octobre 2016, 14:54:08 (UTC+0100) *)
