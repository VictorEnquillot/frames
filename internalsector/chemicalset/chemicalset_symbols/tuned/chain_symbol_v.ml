(** {3 The functionalities for a Symbol for a Chain.} *)

let nam_cod = "chain_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Making} *)

let make = function 
  | " " -> Chain_symbol_t.Blank
  | "A" -> Chain_symbol_t.A
  | "B" -> Chain_symbol_t.B
  | "C" -> Chain_symbol_t.C
  | "D" -> Chain_symbol_t.D
  | "E" -> Chain_symbol_t.E
  | "F" -> Chain_symbol_t.F
  | "G" -> Chain_symbol_t.G
  | "H" -> Chain_symbol_t.H
  | str -> 
      Error_messages_v.print_fatal_error nam_cod 
	"make"
	" One character string \" \"|\"A\"|...|\"H\""
	str
	"Check or add it to menu"
;;

let of_char c = 
  let str = String_v.string_of_char c in
  make str
;;

(** {6 Naming} *)

let char_off = function
  | Chain_symbol_t.Blank -> ' '
  | Chain_symbol_t.A -> 'A'
  | Chain_symbol_t.B -> 'B'
  | Chain_symbol_t.C -> 'C'
  | Chain_symbol_t.D -> 'D'
  | Chain_symbol_t.E -> 'E'
  | Chain_symbol_t.F -> 'F'
  | Chain_symbol_t.G -> 'G'
  | Chain_symbol_t.H -> 'H'
;;

let name sym_cha =
  let c = char_off sym_cha in 
  String_v.string_of_char c
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let blank = Chain_symbol_t.Blank;;

let a = Chain_symbol_t.A;;

let b = Chain_symbol_t.B;;

let c = Chain_symbol_t.C;;

let d = Chain_symbol_t.D;;

let e = Chain_symbol_t.E;;

let f = Chain_symbol_t.F;;

let g = Chain_symbol_t.G;;

let h = Chain_symbol_t.H;;


(** created by ./generator chain implementation symbol at 10:38 31 Jan 2012. *)



