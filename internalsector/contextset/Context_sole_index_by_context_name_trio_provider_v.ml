(** {3 Context_sole_index_by_context_name_trio_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Context_sole_index_by_context_name_trio_provider_v";
   "Needs : CONS:Check_consistency_by_context_name_trio_provider_v";
   "Needs : CONS:Context_sole_index_by_domain_name_n_sector_name_provider_v";
   "Needs : CONS:Database_ordinal_by_database_name_provider_v";
   "Needs : CONS:Inputbase_ordinal_by_inputbase_name_provider_v";
   "What-is-it : the Database Sole_index for any Context_name trio (Sector, Domain, Database)";
   "Author : François Colonna 30 août 2016 at 14:55:18+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (nam_bas, nam_dom, nam_sec) =

  Check_consistency_by_context_name_trio_provider_v.provide (nam_bas, nam_dom, nam_sec);
  
  let soi_duo = 
    Context_sole_index_by_domain_name_n_sector_name_provider_v.provide
      (nam_dom, nam_sec)
  in

  match nam_sec with
  | "external" 
  | "internal" ->
      
      let ord_bas = Database_ordinal_by_database_name_provider_v.provide nam_bas in
      ord_bas :: soi_duo

  | "entry" 
  | "product" ->
      
      let ord_bas = Inputbase_ordinal_by_inputbase_name_provider_v.provide nam_bas in
      ord_bas :: soi_duo

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
(* done with do_provider_without_register.sh Context_sole_index_by_context_name_trio_provider_v.ml force on samedi 8 octobre 2016, 18:52:47 (UTC+0200) *)
