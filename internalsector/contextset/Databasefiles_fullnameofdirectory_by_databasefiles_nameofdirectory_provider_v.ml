(** {3 Databasefiles_fullnameofdirectory_by_databasefiles_nameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Databasefiles_fullnameofdirectory_by_databasefiles_nameofdirectory_provider_v";
   "Needs : CONS:Databasefiles_fullnameofdirectory_list_by_unit_provider_v";
   "Example : .../frames/externalsector/figuredata/db1figurefiles";
   "Author : François Colonna 20 août 2016 at 12:29:07+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build nod_dbf =
  let fnd_dbf_l = Databasefiles_fullnameofdirectory_list_by_unit_provider_v.provide () in
  try List_v.only_element_of_predicate_off_list (fun f -> Filename.basename f = nod_dbf) fnd_dbf_l
  with Failure _ -> 
    Error_messages_v.print_fatal_error nam_mod "build"
      (Format.sprintf "Nameofdirectory >%s< is Databasefiles Nameofdirectory" nod_dbf)
      (Format.sprintf "Databasefiles Fullnameofdirectory list is :@.       %s"
	 (List_v.name_in_column (fun s->s) fnd_dbf_l)
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
(* done with do_provider_without_register.sh Databasefiles_fullnameofdirectory_by_databasefiles_nameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:47 (UTC+0200) *)
