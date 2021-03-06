(** {3 Inputbase_name_list_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbase_name_list_by_unit_provider_v";
   "Needs : CONS:Inputbase_nameofdirectory_list_by_unit_provider_v";
   "Needs : CONS:Context_name_by_context_nameofdirectory_provider_v";
   "Definition : a Inputbase_name is Inputbase_nameofdirectory without \"input\" suffix";
   "Example : \"db1figure\" \"nwchem\"";
   "Author : François Colonna 22 août 2016 at 08:17:17+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let nof_iba_l = Inputbase_nameofdirectory_list_by_unit_provider_v.provide () in
  List.map Context_name_by_context_nameofdirectory_provider_v.provide nof_iba_l
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
(* done with do_provider_without_register.sh Inputbase_name_list_by_unit_provider_v.ml force on samedi 8 octobre 2016, 18:53:02 (UTC+0200) *)
