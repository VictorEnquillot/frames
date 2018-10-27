(** {3 Figure_context_databox_sole_index_by_any_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BFIG:Figure_context_databox_sole_index_by_any_sole_index_provider_v";
   "What-is-it : the Databox Sole_index";
   "Author : François Colonna 10 janvier 2017 at 11:32:11+01:00";
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
(* done with do_provider_without_register.sh Figure_context_databox_sole_index_by_any_sole_index_provider_v.ml force on mardi 15 novembre 2016, 16:37:12 (UTC+0100) *)
