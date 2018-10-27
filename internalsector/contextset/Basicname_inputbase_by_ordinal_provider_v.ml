(** {3 Basicname_inputbase_by_ordinal_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Basicname_inputbase_by_ordinal_provider_v";
   "Needs : CONS:Inputbase_name__by_ordinal_provider_v";
   "Author : François Colonna 04 avril 2017 at 10:12:40+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build ord_iba =
  let nam_iba = Inputbase_name_by_ordinal_provider_v.provide ord_iba in
  Basicname_v.basicname_inputbase_of_string nam_iba
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
(* done with do_provider_without_register.sh Inputbase_name_by_ordinal_provider_v.ml force on samedi 8 octobre 2016, 18:53:02 (UTC+0200) *)
