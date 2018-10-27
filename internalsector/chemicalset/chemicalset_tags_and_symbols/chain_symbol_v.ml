(** {3 A Symbol for a Chain.} *)

let nam_mod = "Chain_symbol_v";;

(** {6 Modules.} *)

module Chs_t = Chain_symbol_t

(** {6 Displaying.} *)

let name = function
  | Chs_t.Blank -> Format.sprintf "%s" "Blank"
  | Chs_t.A -> Format.sprintf "%s" "A"
  | Chs_t.B -> Format.sprintf "%s" "B"
  | Chs_t.C -> Format.sprintf "%s" "C"
  | Chs_t.D -> Format.sprintf "%s" "D"
  | Chs_t.E -> Format.sprintf "%s" "E"
  | Chs_t.F -> Format.sprintf "%s" "F"
  | Chs_t.G -> Format.sprintf "%s" "G"
  | Chs_t.H -> Format.sprintf "%s" "H"
;;

let print ppf = function
  | Chs_t.Blank -> Format.fprintf ppf "%s" "Blank"
  | Chs_t.A -> Format.fprintf ppf "%s" "A"
  | Chs_t.B -> Format.fprintf ppf "%s" "B"
  | Chs_t.C -> Format.fprintf ppf "%s" "C"
  | Chs_t.D -> Format.fprintf ppf "%s" "D"
  | Chs_t.E -> Format.fprintf ppf "%s" "E"
  | Chs_t.F -> Format.fprintf ppf "%s" "F"
  | Chs_t.G -> Format.fprintf ppf "%s" "G"
  | Chs_t.H -> Format.fprintf ppf "%s" "H"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found chain_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Blank from Chain.} *)

(* No Extraction from Blank 0. *)

(** {6 Extracting A from Chain.} *)

(* No Extraction from A 0. *)

(** {6 Extracting B from Chain.} *)

(* No Extraction from B 0. *)

(** {6 Extracting C from Chain.} *)

(* No Extraction from C 0. *)

(** {6 Extracting D from Chain.} *)

(* No Extraction from D 0. *)

(** {6 Extracting E from Chain.} *)

(* No Extraction from E 0. *)

(** {6 Extracting F from Chain.} *)

(* No Extraction from F 0. *)

(** {6 Extracting G from Chain.} *)

(* No Extraction from G 0. *)

(** {6 Extracting H from Chain.} *)

(* No Extraction from H 0. *)

(** {6 Querying.} *)

(** {6 Querying Blank in Chain.} *)

(* No Query from Blank 0. *)

(** {6 Querying A in Chain.} *)

(* No Query from A 0. *)

(** {6 Querying B in Chain.} *)

(* No Query from B 0. *)

(** {6 Querying C in Chain.} *)

(* No Query from C 0. *)

(** {6 Querying D in Chain.} *)

(* No Query from D 0. *)

(** {6 Querying E in Chain.} *)

(* No Query from E 0. *)

(** {6 Querying F in Chain.} *)

(* No Query from F 0. *)

(** {6 Querying G in Chain.} *)

(* No Query from G 0. *)

(** {6 Querying H in Chain.} *)

(* No Query from H 0. *)

(** {6 Upgrading from Blank to Chain.} *)

let blank = Chs_t.Blank;;

(** {6 Upgrading from A to Chain.} *)

let a = Chs_t.A;;

(** {6 Upgrading from B to Chain.} *)

let b = Chs_t.B;;

(** {6 Upgrading from C to Chain.} *)

let c = Chs_t.C;;

(** {6 Upgrading from D to Chain.} *)

let d = Chs_t.D;;

(** {6 Upgrading from E to Chain.} *)

let e = Chs_t.E;;

(** {6 Upgrading from F to Chain.} *)

let f = Chs_t.F;;

(** {6 Upgrading from G to Chain.} *)

let g = Chs_t.G;;

(** {6 Upgrading from H to Chain.} *)

let h = Chs_t.H;;

(** created by ./do_entitysum_symbol_v_ml.sh chain 12 January 2011. *)

