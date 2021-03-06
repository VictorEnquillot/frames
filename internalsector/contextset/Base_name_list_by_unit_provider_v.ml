(** {3 Base_name_list_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Base_name_list_by_unit_provider_v";
   "Needs : CONS:Database_name_list_by_unit_provider_v";
   "Needs : CONS:Inputbase_name_list_by_unit_provider_v";
   "What-is-it : the name list of all external files";
   "Author : François Colonna 13 septembre 2016 at 15:44:25+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let nam_bas_nsl =
    (Database_name_list_by_unit_provider_v.provide ()) @ 
    (Inputbase_name_list_by_unit_provider_v.provide ())
  in
  List.sort compare nam_bas_nsl
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
(* done with do_provider_without_register.sh Base_name_list_by_unit_provider_v.ml force on samedi 8 octobre 2016, 18:52:40 (UTC+0200) *)
