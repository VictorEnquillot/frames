(** {3 Property_basicname_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_v} *)

(** {3 Property_basicname_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_basicname_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_v";
   "Needs : BPRO:Property_basicname_sector_by_unit_provider_v";
   "Needs : BPRO:Property_basicname_domain_by_unit_provider_v";
   "Needs : BPRO:Check_consistency_by_property_basicname_quatuor_provider_v";
   "What-is-it : the Context name Quatuor from Basicname_inputbox and Basicname_inputbase";
   "Abbreviation : ecs = property_context_sector";
   "Abbreviation : ecd = property_context_domain";
   "Abbreviation : eba = property_context_inputbase";
   "Abbreviation : ebo = property_context_inputbox";
   "Author : François Colonna 05 octobre 2016 at 13:08:54+02:00";
 ]
;;

(*  Context Wye-Tree        *)

(*  Ncstor Tag        ecs   *)
(*      |                   *)
(*  Domain Tag        ecd   *)
(*      |                   *)
(*  Inputbase Tag      eba   *)
(*      |                   *)
(*  Inputbox Tag       ebo   *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_ibo, bna_iba) =
  let bna_sec = Property_basicname_sector_by_unit_provider_v.provide () in
  let bna_dom = Property_basicname_domain_by_unit_provider_v.provide () in
  
  let bna_qua = Quatuor_v.make bna_ibo bna_iba bna_dom bna_sec in
  Check_consistency_by_property_basicname_quatuor_provider_v.provide bna_qua;
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
(* done with do_provider_without_register.sh Property_basicname_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_v.ml force on mardi 15 novembre 2016, 16:37:13 (UTC+0100) *)
