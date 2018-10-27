(** {3 Parameter_context_databox_sole_index_by_any_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPAR:Parameter_context_databox_sole_index_by_any_sole_index_provider_v";
   "What-is-it : the Databox Sole_index";
   "Author : François Colonna 03 décembre 2016 at 13:50:17+01:00";
   "Author : François Colonna 08 juin 2017 at 16:48:28+02:00 erroneous";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_any =
 if List.length soi_any >= 4 
  then
    List_v.last_elements_of_int_of_list 4 soi_any 
  else    
    Error_messages_v.print_fatal_error __LOC__ "build"
      (Format.sprintf "Current Sole_index >%s<@. had length => 4" (Sole_index_v.name soi_any))
      (Format.sprintf "Current Sole_index length = %i" (List.length soi_any))
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
(* done with do_provider_without_register.sh Parameter_context_databox_sole_index_by_any_sole_index_provider_v.ml force on mardi 15 novembre 2016, 16:37:12 (UTC+0100) *)
