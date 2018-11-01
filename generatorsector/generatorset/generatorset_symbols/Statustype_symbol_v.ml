(** {3 The Functionalities for Symbol for a Status of a Caml Type}  *)

let nam_cod = "Statustype_symbol_v.ml";;

(** {6 Aliasing} *)


(** {6 Making} *)

let make = function 
  | "constrained" -> Statustype_symbol_t.Constrained
  | "unconstrained" -> Statustype_symbol_t.Unconstrained
  | str -> Error_messages_v.print_fatal_error nam_cod "make"
	"constrained|unconstrained"
	str 
	"Check or add it to menu"

(** {6 Naming} *)

let name = function 
  | Statustype_symbol_t.Constrained -> "constrained"
  | Statustype_symbol_t.Unconstrained -> "unconstrained"
;;

let longname sym_sta = 
  Format.sprintf "Statustype_symbol_t.%s" 
    (String.capitalize_ascii (name sym_sta))
;;

(** {6 Abbreviating} *)

let constrained = Statustype_symbol_t.Constrained;;
let unconstrained = Statustype_symbol_t.Unconstrained;;
