(** {3 Domaindata_fullnameofdirectory_by_domaindata_nameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Domaindata_fullnameofdirectory_by_domaindata_nameofdirectory_provider_v";
   "Needs : CONS:Externalsector_fullnameofdirectory_by_unit_provider_v";
   "Needs : CONS:Domaindata_fullnameofdirectory_list_by_externalsector_fullnameofdirectory_provider_v";
   "Example : .../frames/externalsector/figuredata";
   "Author : François Colonna 26 juin 2016 at 10:26:29+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build nod_dda =

  let fnd_exs = Externalsector_fullnameofdirectory_by_unit_provider_v.provide () in
  let fnd_dda_l = 
    Domaindata_fullnameofdirectory_list_by_externalsector_fullnameofdirectory_provider_v.provide 
      fnd_exs
  in
  try List_v.only_element_of_predicate_off_list (fun f -> Filename.basename f = nod_dda) fnd_dda_l
  with Failure _ -> 
    Error_messages_v.print_fatal_error nam_mod "build"
      (Format.sprintf "Nameofdirectory >%s< is Domaindata Nameofdirectory" nod_dda)
      (Format.sprintf "Domaindata Fullnameofdirectory list is :@.       %s"
	 (List_v.name_in_column (fun s->s) fnd_dda_l)
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
(* done with do_provider_without_register.sh Domaindata_fullnameofdirectory_by_domaindata_nameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:54 (UTC+0200) *)
