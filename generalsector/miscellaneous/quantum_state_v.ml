(** {3 The Quantum_state State for a Chemical_state entity.} *)

let nam_mod = "Quantum_state_v";;

let print ppf = function
   | Quantum_state_t.Singlet -> Format.fprintf ppf "Singlet"
   | Quantum_state_t.Triplet -> Format.fprintf ppf "Triplet"
;;

let name = function
   | Quantum_state_t.Singlet -> Format.sprintf "S"
   | Quantum_state_t.Triplet -> Format.sprintf "T"
;;

let string_of_quantum_state est =
  Format.fprintf Format.str_formatter "%a" print est;
  Format.flush_str_formatter ()
;;

let print_error_string str mdn her =
  Format.fprintf Format.err_formatter 
  "@.@[<hov>%s.%s: --- Fatal Error ---@.\
  string >%s< is not a Quantum_state State symbol@.\
  Please add it to the menu above.@]@." 
  mdn her str
;;

let fail_string str mdn her =
  print_error_string str mdn her ;
  assert false
;;

let quantum_state_of_string = function
  | "Singlet" -> Quantum_state_t.Singlet  
  | "Triplet" -> Quantum_state_t.Triplet
  | str -> fail_string str nam_mod "quantum_state_of_string";
;;

let read ib =
  Scanf.bscanf ib "%s" (function str -> quantum_state_of_string str)
;;
