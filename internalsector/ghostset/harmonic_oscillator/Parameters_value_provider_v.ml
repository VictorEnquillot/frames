(** {3 Parameters_value_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : VHAR:Parameters_v";
   "Current : VHAR:Parameters_value_provider_v";
   "Needed-by : VHAR:";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Building.} *)

(** {6 Providing.} *)

let provide nam =
  let nam_fun = "provide" in

  let low_nam = String.lowercase nam in
  match low_nam with
  | "first_step" 
  | "force_constant"
  | "initial_velocity_x"
  | "initial_x" 
  | "mass"
  | "target_step"
  | "time_step" -> Parameters_readable_value_provider_v.provide low_nam
  | "omega" 
  | "omega_2" -> Parameters_buildable_value_provider_v.provide low_nam
  | _ -> 
      Error_messages_v.print_fatal_error nam_cod nam_fun 
      (Format.sprintf "Parameter >%s< were known" nam)
      (Format.sprintf "list of known Parameters: first_step ...")
      "Check or add it"
;;

let provide_float nam =
  let val_par = provide nam in
  Parameters_value_v.float_of_parameters_value val_par
;;

let provide_integer nam =
  let val_par = provide nam in
  Parameters_value_v.integer_of_parameters_value val_par
;;
