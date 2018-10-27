(** {3 Inputbaseset_fullnameofdirectory_by_inputbaseset_nameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbaseset_fullnameofdirectory_by_inputbaseset_nameofdirectory_provider_v";
   "Needs : CONS:Inputbaseset_fullnameofdirectory_list_by_unit_provider_v";
   "Example : .../frames/externalsector/figureinput/db1figureset";
   "Author : François Colonna 22 août 2016 at 10:46:59+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build nod_dbs =
  let fnd_dbs_l = Inputbaseset_fullnameofdirectory_list_by_unit_provider_v.provide () in
  try List_v.only_element_of_predicate_off_list (fun f -> Filename.basename f = nod_dbs) fnd_dbs_l
  with Failure _ -> 
    Error_messages_v.print_fatal_error nam_mod "build"
      (Format.sprintf "Nameofdirectory >%s< is Inputbaseset Nameofdirectory" nod_dbs)
      (Format.sprintf "Inputbaseset Fullnameofdirectory list is :@.       %s"
	 (List_v.name_in_column (fun s->s) fnd_dbs_l)
      )
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
(* done with do_provider_without_register.sh Inputbaseset_fullnameofdirectory_by_inputbaseset_nameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:53:03 (UTC+0200) *)
