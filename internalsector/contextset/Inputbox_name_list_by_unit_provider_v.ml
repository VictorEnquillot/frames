(** {3 Inputbox_name_list_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbox_name_list_by_unit_provider_v";
   "Needs : CONS:Inputbox_nameoffile_list_by_unit_provider_v";
   "Needs : CONS:Context_name_by_context_nameoffile_provider_v";
   "Definition : a Inputbox_name is the Inputbox_nameoffile without .inp extension";
   "Example : Print_point_a";
   "Author : François Colonna 02 juillet 2016 at 17:32:31+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let nof_ifi_l = Inputbox_nameoffile_list_by_unit_provider_v.provide () in
  let nam_nun_ifi_l = List.map
      Context_name_by_context_nameoffile_provider_v.provide
      nof_ifi_l
  in
  List_v.left_once_list_off_list nam_nun_ifi_l
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
(* done with do_provider_without_register.sh Inputbox_name_list_by_unit_provider_v.ml force on samedi 8 octobre 2016, 18:53:05 (UTC+0200) *)
