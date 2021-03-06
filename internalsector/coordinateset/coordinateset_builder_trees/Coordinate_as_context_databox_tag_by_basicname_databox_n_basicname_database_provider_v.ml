(** {3 Coordinate_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BCOO:Coordinate_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : BCOO:Coordinate_basicname_quatuor_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : CONS:Sector_ordinal_by_sector_name_provider_v";
   "Needs : CONS:Domain_ordinal_by_domain_name_provider_v";
   "Needs : CONS:Database_ordinal_by_basicname_database_provider_v";
   "Needs : CONS:Databox_ordinal_by_basicname_databox_provider_v";
   "Author : François Colonna 10 octobre 2016 at 09:54:58+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_dbo, bna_dba) =
  let (bna_dbo, bna_dba, bna_ecd, bna_ecs) =
    Coordinate_basicname_quatuor_by_basicname_databox_n_basicname_database_provider_v.provide
      (bna_dbo, bna_dba) 
  in

  let ord_ecs = Sector_ordinal_by_basicname_sector_provider_v.provide bna_ecs in
  let ord_ecd = Domain_ordinal_by_basicname_domain_provider_v.provide bna_ecd in
  let ord_cba = Database_ordinal_by_basicname_database_provider_v.provide bna_dba in
  let ord_dbo = Databox_ordinal_by_basicname_databox_provider_v.provide bna_dbo in
  let soi_dbo = [ord_dbo; ord_cba; ord_ecd; ord_ecs] in

  let nam_dbo = Basicname_v.string_off bna_dbo in
  let sym_coo_dbo = 
    Coordinate_symbol_v.coordinate_context_databox_constructor 
      nam_dbo
  in
  Tag_v.make sym_coo_dbo soi_dbo
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
(* done with do_provider_without_register.sh Coordinate_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.ml force on lundi 10 octobre 2016, 09:13:00 (UTC+0200) *)
