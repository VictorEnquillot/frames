(** {3 Property_context_inputbox_symbol_by_any_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_context_inputbox_symbol_by_any_sole_index_provider_v";
   "Needs : BPRO:Property_basicname_inputbox_by_any_sole_index_provider_v";
   "What-is-it : the Property_context_inputbox Symbol";
   "Author : François Colonna 25 septembre 2016 at 20:45:33+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_any =
  let nam_lbo = 
    Property_basicname_inputbox_by_any_sole_index_provider_v.provide 
      soi_any 
  in
  Property_context_inputbox_symbol_v.property_context_inputbox_constructor 
      nam_lbo
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
(* done with do_provider_without_register.sh Property_context_inputbox_symbol_by_any_sole_index_provider_v.ml force on mardi 15 novembre 2016, 16:37:12 (UTC+0100) *)
