(** {3 Figure_context_database_tag_by_basicname_database_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BFIG:Figure_context_database_tag_by_basicname_database_provider_v";
   "Needs : BFIG:Figure_basicname_sector_by_unit_provider_v";
   "Needs : BFIG:Figure_basicname_domain_by_unit_provider_v";
   "Needs : BFIG:Sector_ordinal_by_basicname_sector_provider_v";
   "Needs : BFIG:Domain_ordinal_by_basicname_domain_provider_v";
   "Needs : BFIG:Database_ordinal_by_basicname_database_provider_v";
   "Author : François Colonna 07 avril 2017 at 15:47:54+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_dba =
  let bna_sec = Figure_basicname_sector_by_unit_provider_v.provide () in
  let bna_dom = Figure_basicname_domain_by_unit_provider_v.provide () in

  let ord_sec = Sector_ordinal_by_basicname_sector_provider_v.provide bna_sec in
  let ord_dom = Domain_ordinal_by_basicname_domain_provider_v.provide bna_dom in

  let ord_dba = Database_ordinal_by_basicname_database_provider_v.provide bna_dba in
  let soi_dba = [ord_dba; ord_dom; ord_sec] in

  let nam_dba = Basicname_v.string_off bna_dba in

  let sym_fba = 
    Figure_context_database_symbol_v.figure_context_database_constructor 
      nam_dba
  in
  Tag_v.make sym_fba soi_dba
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
(* done with do_provider_without_register.sh Figure_context_database_tag_by_basicname_database_provider_v.ml force on mercredi 12 octobre 2016, 16:11:20 (UTC+0200) *)
