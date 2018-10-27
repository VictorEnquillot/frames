(** {3 Parameters_readable_value_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : VHAR:Parameters_v";
   "Current : VHAR:Parameters_readable_value_provider_v";
   "Needed-by : VHAR:";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Building.} *)

(** {6 Providing.} *)

let provide str =
  let nam_fun = "provide" in

  if Parameters_value_register_v.is_stored str
  then Parameters_value_register_v.retrieve str
  else
    Error_messages_v.print_fatal_error nam_cod nam_fun 
      (Format.sprintf "Parameter >%s< were stored." str)
      (Format.sprintf "list of Parameters stored :@. %s@." 
	 (List_v.name_with_separator Utilities_v.identity
	    "\n   " 
	    (Parameters_value_register_v.key_list ()
	    ) 
	 )
      )
      "use Parameters_value_register_v.store <name> <value> as strings to enter it."
;;

let provide_float str =
  let val_par = provide str in
  Parameters_value_v.float_of_parameters_value val_par
;;

let provide_integer str =
  let val_par = provide str in
  Parameters_value_v.integer_of_parameters_value val_par
;;
