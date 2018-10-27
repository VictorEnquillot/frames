(** {3 Elementary_context_databox_tag_by_databox_name_n_database_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BELE:Elementary_context_databox_tag_by_databox_name_n_database_name_provider_v";
   "Needs : BELE:Elementary_context_sector_name_by_unit_provider_v";
   "Needs : BELE:Elementary_context_domain_name_by_unit_provider_v";
   "Needs : CONS:Sector_ordinal_by_sector_name_provider_v";
   "Needs : CONS:Domain_ordinal_by_domain_name_provider_v";
   "Needs : CONS:Database_ordinal_by_database_name_provider_v";
   "Needs : CONS:Databox_ordinal_by_databox_name_provider_v";
   "Author : François Colonna 10 octobre 2016 at 12:10:10+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (nam_ebo, nam_eba) =
  let (nam_ebo, nam_eba, nam_ecd, nam_ecs) =
    Elementary_context_name_quatuor_by_databox_name_n_database_name_provider_v.provide
      (nam_ebo, nam_eba) 
  in

  let ord_ecs = Sector_ordinal_by_sector_name_provider_v.provide nam_ecs in
  let ord_ecd = Domain_ordinal_by_domain_name_provider_v.provide nam_ecd in
  let ord_eba = Database_ordinal_by_database_name_provider_v.provide nam_eba in
  let ord_ebo = Databox_ordinal_by_databox_name_provider_v.provide nam_ebo in
  let soi_ebo = [ord_ebo; ord_eba; ord_ecd; ord_ecs] in

  let sym_ebo = 
    Elementary_context_databox_symbol_v.elementary_context_databox_constructor 
      nam_ebo
  in
  Tag_v.make sym_ebo soi_ebo
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
(* done with do_provider_without_register.sh Elementary_context_databox_tag_by_databox_name_n_database_name_provider_v.ml force on lundi 10 octobre 2016, 09:13:01 (UTC+0200) *)
