(** {3 Check_consistency_by_coordinate_basicname_quatuor_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BCOO:Check_consistency_by_coordinate_basicname_quatuor_provider_v";
   "Needs : BCOO:Check_consistency_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : BCOO:Coordinate_basicname_sector_by_unit_provider_v";
   "Needs : BCOO:Coordinate_basicname_domain_by_unit_provider_v";
   "Definition : a Context quatuor has the same order as a Sole_index : (Box, Base, Domain, Sector)";
   "Author : François Colonna 29 mars 2017 at 15:58:46+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_dbo, bna_dba, bna_dom, bna_sec) =
  let nam_dbo = Basicname_v.string_off bna_dbo in
  let nam_dba = Basicname_v.string_off bna_dba in
  let nam_dom = Basicname_v.string_off bna_dom in
  let nam_sec = Basicname_v.string_off bna_sec in

  let bna_cbs = Coordinate_basicname_sector_by_unit_provider_v.provide () in
  if bna_cbs <> bna_sec 
  then
    Error_messages_v.print_fatal_error nam_mod "build"
      (Format.sprintf "Argument Sector name were %s" (Basicname_v.string_off bna_sec))
      nam_sec
      "Check"
  else ();
  
  let bna_cbd = Coordinate_basicname_domain_by_unit_provider_v.provide () in
  if bna_cbd <> bna_dom 
  then
    Error_messages_v.print_fatal_error nam_mod "build"
      (Format.sprintf "Argument Sector name were %s" (Basicname_v.string_off bna_dom))
      nam_dom
      "Check"
  else ();

  Check_consistency_by_context_name_quatuor_provider_v.provide (nam_dbo, nam_dba, nam_dom, nam_sec)
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
(* done with do_provider_without_register.sh Check_consistency_by_coordinate_basicname_quatuor_provider_v.ml force on lundi 10 octobre 2016, 09:12:59 (UTC+0200) *)
