(** {3 The functionalities for a Symbol for a Chain.} *)

let nam_cod = "chain_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Chain_symbol_t.Blank -> "blank"
  | Chain_symbol_t.A -> "a"
  | Chain_symbol_t.B -> "b"
  | Chain_symbol_t.C -> "c"
  | Chain_symbol_t.D -> "d"
  | Chain_symbol_t.E -> "e"
  | Chain_symbol_t.F -> "f"
  | Chain_symbol_t.G -> "g"
  | Chain_symbol_t.H -> "h"
;;


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


(** {6 Making} *)


let make s = function
  | "blank" -> blank
  | "a" -> a
  | "b" -> b
  | "c" -> c
  | "d" -> d
  | "e" -> e
  | "f" -> f
  | "g" -> g
  | "h" -> h
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator chain implementation symbol at 15:2 13 Mar 2012. *)



