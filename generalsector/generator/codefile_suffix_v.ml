(** {3 The functionalities for a Suffix for a Symbol for a Codefile}  *)

let nam_cod = "codefile_suffix_v.ml";;

(** {6 Modules.} *)

module Csu_t = Codefile_suffix_t
module Erm_v = Error_messages_v

(** {6 Making.} *)

let make = function
  | "p" -> Csu_t.P
  | "t" -> Csu_t.T
  | "v" -> Csu_t.V
  | "empty" -> Csu_t.Empty
  | s -> Erm_v.print_fatal_error nam_cod
	"make" "p|t|s" s "check"
;;

(** {6 Displaying.} *)

let name = function
  | Csu_t.P -> "p"
  | Csu_t.T -> "t"
  | Csu_t.V -> "v"
  | Csu_t.Empty -> ""
;;

(** {6 Abbreviating} *)

let suffix_p = Csu_t.P;;
let suffix_t = Csu_t.T;;
let suffix_v = Csu_t.V;;
let suffix_empty = Csu_t.Empty;;

