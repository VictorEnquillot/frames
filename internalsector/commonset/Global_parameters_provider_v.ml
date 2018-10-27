(** {3 Global_parameters_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : COM:Global_parameters_provider_v";
   "Register : COM:Global_parameters_register_v";
   "Needs : COM:";
   "Needed-by :"; 
   "What-is-it : it provides any Parameters are stored in Global_parameters_register_v";
   "Definition : a Datafile is either a basisset (skeletonfile) or a <domain>file";
   "Improve : ask input file if nothing is stored";
   "Author : François Colonna 20 mai 2016 at 13:01:15+02:00 redone no build";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Providing.} *)

let provide str_key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result =
    if Global_parameters_register_v.is_stored str_key 
    then Global_parameters_register_v.retrieve nam_mod str_key
    else
      begin
	let nam_reg = "Global_parameters_register_v" in
	Error_messages_v.print_fatal_error __LOC__ nam_fun
	  (Format.sprintf "Parameter >%s< were defined in %s" str_key nam_reg)
	  (Format.sprintf "@.Register Dump is:@.   >%s<@."
	     (Global_parameters_register_v.dump ()) )
	  (Format.sprintf "Check why Input-file did not provide it@.      Probably nam_mod argument has not been provided to store function@.      or if in test file add this line in test-file :@.      Global_parameters_register_v.store nam_mod \"%s\" \"<string>\";;@." str_key)
      end
  in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done by hand on vendred 20 mai 2016 *)
