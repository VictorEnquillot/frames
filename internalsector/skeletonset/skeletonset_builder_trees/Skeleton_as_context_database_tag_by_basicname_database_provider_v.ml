(** {3 Skeleton_as_context_database_tag_by_basicname_database_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BSKE:Skeleton_as_context_database_tag_by_basicname_database_provider_v";
   "Needs : BSKE:Skeleton_basicname_sector_by_unit_provider_v";
   "Needs : BSKE:Skeleton_basicname_domain_by_unit_provider_v";
   "Needs : BSKE:Sector_ordinal_by_basicname_sector_provider_v";
   "Needs : BSKE:Domain_ordinal_by_basicname_domain_provider_v";
   "Needs : BSKE:Database_ordinal_by_basicname_database_provider_v";
   "Author : François Colonna 24 septembre 2016 at 14:09:15+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_dba =
  let bna_sec = Skeleton_basicname_sector_by_unit_provider_v.provide () in
  let bna_dom = Skeleton_basicname_domain_by_unit_provider_v.provide () in
  let ord_sec = Sector_ordinal_by_basicname_sector_provider_v.provide bna_sec in
  let ord_dom = Domain_ordinal_by_basicname_domain_provider_v.provide bna_dom in
  let ord_dba = Database_ordinal_by_basicname_database_provider_v.provide bna_dba in
  let soi_dba = [ord_dba; ord_dom; ord_sec] in

  let nam_dba = Basicname_v.string_off bna_dba in
  let sym_coo_fba = 
    Skeleton_symbol_v.skeleton_context_database_constructor 
      nam_dba
  in
  Tag_v.make sym_coo_fba soi_dba
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
(* done with do_provider_without_register.sh Skeleton_as_context_database_tag_by_basicname_database_provider_v.ml force on mercredi 12 octobre 2016, 16:11:19 (UTC+0200) *)
