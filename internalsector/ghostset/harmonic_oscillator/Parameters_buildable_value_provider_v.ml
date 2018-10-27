(** {3 Parameters_buildable_value_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : VHAR:Parameters_v";
   "Current : VHAR:Parameters_buildable_value_provider_v";
   "Needed-by : VHAR:";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Building.} *)

let build str =
  let nam_fun = "build" in

  let low_str = String.lowercase str in
  match low_str with
  | "omega"->
      let force_constant = Parameters_readable_value_provider_v.provide_float "force_constant" in
      let mass = Parameters_readable_value_provider_v.provide_float "mass" in
      let omega = sqrt (force_constant /. mass) in
      Parameters_value_v.make "omega" (Format.sprintf "%f" omega)

  | "omega_2" ->
      let force_constant = Parameters_readable_value_provider_v.provide_float "force_constant" in
      let mass = Parameters_readable_value_provider_v.provide_float "mass" in
      let omega_2 = force_constant /. mass in
      Parameters_value_v.make "omega_2" (Format.sprintf "%f" omega_2)
  | _ ->
      Error_messages_v.print_fatal_error nam_cod nam_fun 
	(Format.sprintf "Parameter >%s< were stored. and NOT buildable" str)
	(Format.sprintf "list of Parameters stored :@. %s@.    buildable Parameters are omega|omega_2" 
	   (List_v.name_with_separator Utilities_v.identity
	      "\n   " 
	      (Parameters_value_register_v.key_list ()
	      ) 
	   )
	)
	"Check"
;;

let build_n_store str =
  let val_par = build str in
  Parameters_value_register_v.store str val_par;
  val_par
;;

(** {6 Providing.} *)

let provide str =
  if Parameters_value_register_v.is_stored str
  then Parameters_value_register_v.retrieve str
  else build_n_store str
;;

let provide_float str =
  let val_par = provide str in
  Parameters_value_v.float_of_parameters_value val_par
;;

let provide_integer str =
  let val_par = provide str in
  Parameters_value_v.integer_of_parameters_value val_par
;;
