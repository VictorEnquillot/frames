(** {3 Context_databox_sole_index__by_any_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Box_sole_index_by_any_sole_index_provider_v";
   "What-is-it : the 4 last elements list out off any sole_index";
   "Author : François Colonna 04 avril 2017 at 14:38:31+02:00";
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

