(** {3 Context_sole_index_by_context_name_quatuor_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Context_sole_index_by_context_name_quatuor_provider_v";
   "Needs : CONS:Check_consistency_by_context_name_quatuor_provider_v";
   "Needs : CONS:Sector_ordinal_by_sector_name_provider_v";
   "Needs : CONS:Domain_ordinal_by_domain_name_provider_v";
   "Needs : CONS:Database_ordinal_by_database_name_provider_v";
   "Needs : CONS:Databox_ordinal_by_databox_name_provider_v";
   "Needs : CONS:Inputbase_ordinal_by_inputbase_name_provider_v";
   "Needs : CONS:Inputbox_ordinal_by_inputbox_name_provider_v";
   "Definition : a Context quatuor has the same order as a Sole_index : (Box, Base, Domain, Sector)";
   "What-is-it : the Sole_index for any Context_name Constent quatuor";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (nam_box, nam_bas, nam_dom, nam_sec) =

  Check_consistency_by_context_name_quatuor_provider_v.provide (nam_box, nam_bas, nam_dom, nam_sec);

  let ord_sec = Sector_ordinal_by_sector_name_provider_v.provide nam_sec in
  let ord_dom = Domain_ordinal_by_domain_name_provider_v.provide nam_dom in

  match nam_sec with
  | "external" 
  | "internal" ->
      
      let ord_bas = Database_ordinal_by_database_name_provider_v.provide nam_bas in
      let ord_box = Databox_ordinal_by_databox_name_provider_v.provide nam_box in
      [ord_box; ord_bas; ord_dom; ord_sec]

  | "entry" 
  | "product" ->
      
      let ord_bas = Inputbase_ordinal_by_inputbase_name_provider_v.provide nam_bas in
      let ord_box = Inputbox_ordinal_by_inputbox_name_provider_v.provide nam_box in
      [ord_box; ord_bas; ord_dom; ord_sec]

  | _ ->
      Error_messages_v.print_fatal_error nam_mod "build"
	"Sector name were entry | external | internal | product"
	nam_sec
	"Check"
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
(* done with do_provider_without_register.sh Context_sole_index_by_context_name_quatuor_provider_v.ml force on samedi 8 octobre 2016, 18:52:46 (UTC+0200) *)
