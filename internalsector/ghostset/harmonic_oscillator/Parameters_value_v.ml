let nam_cod = "Parameters_value_v.ml";;

let name = function
  | Parameters_value_t.First_step str -> str
  | Parameters_value_t.Force_constant str -> str
  | Parameters_value_t.Initial_velocity_x str -> str
  | Parameters_value_t.Initial_x str -> str
  | Parameters_value_t.Mass str -> str
  | Parameters_value_t.Omega str -> str
  | Parameters_value_t.Omega_2 str -> str
  | Parameters_value_t.Target_step str -> str
  | Parameters_value_t.Time_step str -> str
;;

let integer_of_parameters_value = function
  | Parameters_value_t.First_step str -> String_v.integer_of_string str
  | Parameters_value_t.Target_step str -> String_v.integer_of_string str
  | val_par -> 
      let nam_fun = "float_of_parameters_value" in
      Error_messages_v.print_fatal_error nam_cod nam_fun
	(Format.sprintf "Parameter >%s< had an integer value" (name val_par))
	"It is NOT"
	"Check"
;;

let float_of_parameters_value = function
  | Parameters_value_t.Force_constant str -> String_v.float_of_string str
  | Parameters_value_t.Initial_velocity_x str -> String_v.float_of_string str
  | Parameters_value_t.Initial_x str -> String_v.float_of_string str
  | Parameters_value_t.Mass str -> String_v.float_of_string str
  | Parameters_value_t.Omega str -> String_v.float_of_string str
  | Parameters_value_t.Omega_2 str -> String_v.float_of_string str
  | Parameters_value_t.Time_step str -> String_v.float_of_string str
  | val_par -> 
      let nam_fun = "float_of_parameters_value" in
      Error_messages_v.print_fatal_error nam_cod nam_fun
	(Format.sprintf "Parameter >%s< had a float value" (name val_par))
	"It is NOT"
	"Check"
;;

let make nam s =
  let nam_fun = "make" in
  
  let low_nam = String.lowercase nam in
  match low_nam with
  | "first_step" -> Parameters_value_t.First_step s
  | "force_constant" -> Parameters_value_t.Force_constant s
  | "initial_velocity_x" -> Parameters_value_t.Initial_velocity_x s
  | "initial_x" -> Parameters_value_t.Initial_x s
  | "mass" -> Parameters_value_t.Mass s
  | "omega" -> Parameters_value_t.Omega s
  | "omega_2" -> Parameters_value_t.Omega_2 s
  | "target_step" -> Parameters_value_t.Target_step s
  | "time_step" -> Parameters_value_t.Time_step s
  | _ -> 
      Error_messages_v.print_fatal_error nam_cod nam_fun 
      (Format.sprintf "Parameter >%s< were known" nam)
      (Format.sprintf "list of known Parameters: first_step ...")
      "Check or add it"
;;
