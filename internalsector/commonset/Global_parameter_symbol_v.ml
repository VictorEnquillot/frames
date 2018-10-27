let nam_mod = "Global_parameter_symbol_v";;

let name = function
  | Global_parameter_symbol_t.Global_parameter_constructor s ->
      "parameter " ^ s
;;

(** {6 String_offing_for_symbol} *)

let string_off sym_par = ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_par =
  Format.sprintf "Parameters_symbol_t.%s" (String.capitalize (name sym_par))
;;

(** {6 Fullnaming_for_symbol} *)

let fullname sym_par =
  Format.sprintf "%s \"%s\"" (longname sym_par) (string_off sym_par)
;;


let make sym_par s =
  Utilities_v.not_yet_implemented nam_cod "make"
;;
