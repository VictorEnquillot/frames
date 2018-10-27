(** {3 Parameter_context_databox_symbol_by_any_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPAR:Parameter_context_databox_symbol_by_any_sole_index_provider_v";
   "Needs : BPAR:Basicname_databox_by_any_sole_index_provider_v";
   "What-is-it : the Parameter_context_databox Symbol";
   "Author : François Colonna 03 décembre 2016 at 13:58:59+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_any =
  let bna_dbo = Basicname_databox_by_any_sole_index_provider_v.provide soi_any in
  let nam_dbo = Basicname_v.string_off bna_dbo in
  Parameter_context_databox_symbol_v.parameter_context_databox_constructor nam_dbo
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
(* done with do_provider_without_register.sh Parameter_context_databox_symbol_by_any_sole_index_provider_v.ml force on mardi 15 novembre 2016, 16:37:12 (UTC+0100) *)
