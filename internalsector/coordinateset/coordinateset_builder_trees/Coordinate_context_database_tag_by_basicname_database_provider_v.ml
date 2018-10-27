(** {3 Coordinate_context_database_tag_by_basicname_database_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BCOO:Coordinate_context_database_tag_by_basicname_database_provider_v";
   "Needs : BCOO:Coordinate_basicname_sector_by_unit_provider_v";
   "Needs : BCOO:Coordinate_basicname_domain_by_unit_provider_v";
   "Needs : BCOO:Sector_ordinal_by_sector_name_provider_v";
   "Needs : BCOO:Domain_ordinal_by_domain_name_provider_v";
   "Needs : BCOO:Database_ordinal_by_basicname_database_provider_v";
   "Author : François Colonna 28 septembre 2016 at 08:42:29+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_dba  =
  let bna_ecs = Coordinate_basicname_sector_by_unit_provider_v.provide () in
  let bna_ecd = Coordinate_basicname_domain_by_unit_provider_v.provide () in
  let ord_ecs = Sector_ordinal_by_basicname_sector_provider_v.provide bna_ecs in
  let ord_ecd = Domain_ordinal_by_basicname_domain_provider_v.provide bna_ecd in
  let ord_cba = Database_ordinal_by_basicname_database_provider_v.provide bna_dba in
  let soi_cba = [ord_cba; ord_ecd; ord_ecs] in

  let nam_dba = Basicname_v.string_off bna_dba in
  let sym_cba = 
    Coordinate_context_database_symbol_v.coordinate_context_database_constructor 
      nam_dba
  in
  Tag_v.make sym_cba soi_cba
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
(* done with do_provider_without_register.sh Coordinate_context_database_tag_by_basicname_database_provider_v.ml force on lundi 10 octobre 2016, 09:13:01 (UTC+0200) *)
