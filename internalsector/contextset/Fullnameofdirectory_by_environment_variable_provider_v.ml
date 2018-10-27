(** {3 Fullnameofdirectory_by_environment_variable_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Fullnameofdirectory_by_environment_variable_provider_v";
   "Author : François Colonna 10 juin 2016 at 12:31:05+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build env_var =
  let nam_fun = "build" in	
  
  let fnd =
    try Sys.getenv env_var 
    with Not_found -> 
      Error_messages_v.print_fatal_error __LOC__ nam_fun
	"environment_variable defining Frames directory"
	env_var "check"
  in
  if not (Sys.file_exists fnd)
  then 
    Error_messages_v.print_fatal_error __LOC__ nam_fun
      "Frames directory exists"
      (Format.sprintf ">%s<" fnd)
      "Check"
  else
    fnd
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
(* done with do_provider_without_register.sh Fullnameofdirectory_by_environment_variable_provider_v.ml force on samedi 8 octobre 2016, 18:52:59 (UTC+0200) *)
