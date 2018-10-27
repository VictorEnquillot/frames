(** {3 Check_consistency_by_property_basicname_sector_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Check_consistency_by_property_basicname_quatuor_provider_v";
   "Needs : BPRO:Property_basicname_sector_by_unit_provider_v";
   "Author : François Colonna 03 avril 2017 at 10:35:32+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_sec =
  let bna_sec = Property_basicname_sector_by_unit_provider_v.provide () in
  if bna_sec <> bna_sec 
  then
    Error_messages_v.print_fatal_error nam_mod "build"
      (Format.sprintf "Argument Sector basicname were %s" (Basicname_v.name bna_sec))
      (Basicname_v.name bna_sec )
      "Check"
  else ();
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
(* done with do_provider_without_register.sh Check_consistency_by_property_basicname_quatuor_provider_v.ml force on mardi 15 novembre 2016, 16:37:09 (UTC+0100) *)
