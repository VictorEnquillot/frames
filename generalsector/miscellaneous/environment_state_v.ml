(** {3 The Environment_state for chemical.} *)

let nam_mod = "Environment_state_v";;

(** {6 Modules.} *)

module EvS_t = Environment_state_t

(** {6 Abbreviations.} *)

let mi = EvS_t.Micelle;;
let mb = EvS_t.Membrane;;
let v = EvS_t.Vacuum;;
let w = EvS_t.Water;;

(** {6 Converting.} *)

let print ppf = function
   | EvS_t.Micelle -> Format.fprintf ppf "Micelle"
   | EvS_t.Membrane -> Format.fprintf ppf "Membrane"
   | EvS_t.Vacuum -> Format.fprintf ppf "Vacuum"
   | EvS_t.Water -> Format.fprintf ppf "Water"
;;

let name = function
   | EvS_t.Micelle -> Format.sprintf "Mi"
   | EvS_t.Membrane -> Format.sprintf "Mb"
   | EvS_t.Vacuum -> Format.sprintf "V"
   | EvS_t.Water -> Format.sprintf "W"
;;

let string_of_environment_state est =
  Format.fprintf Format.str_formatter "%a" print est;
  Format.flush_str_formatter ()
;;

let print_error_string str mdn her =
  Format.fprintf Format.err_formatter 
  "@.@[<hov>%s.%s: --- Fatal Error ---@.\
  string >%s< is not a Environment_state State symbol@.\
  Please add it to the menu above.@]@." 
  mdn her str
;;

let fail_string str mdn her =
  print_error_string str mdn her ;
  assert false
;;

let environment_state_of_string = function
  | "Micelle" -> EvS_t.Micelle  
  | "Membrane" -> EvS_t.Membrane
  | "Vacuum" -> EvS_t.Vacuum
  | "Water" -> EvS_t.Water
  | str -> fail_string str nam_mod "environment_state_of_string";
;;

let read ib =
  Scanf.bscanf ib "%s" (function str -> environment_state_of_string str)
;;
