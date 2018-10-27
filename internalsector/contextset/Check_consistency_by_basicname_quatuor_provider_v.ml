(** {3 Check_consistency_by_basicname_quatuor_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Check_consistency_by_basicname_quatuor_provider_v";
   "Needs : CONS:Check_consistency_by_context_name_quatuor_provider_v";
   "Definition : a Context quatuor has the same order as a Sole_index : (Box, Base, Domain, Sector)";
   "Author : François Colonna 01 avril 2017 at 12:06:07+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_qua =
  let nam_qua = Quatuor_v.map Basicname_v.string_off bna_qua in
  Check_consistency_by_context_name_quatuor_provider_v.provide nam_qua 
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
(* done with do_provider_without_register.sh Check_consistency_by_context_name_quatuor_provider_v.ml force on samedi 8 octobre 2016, 18:52:42 (UTC+0200) *)
