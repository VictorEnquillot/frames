(** {3 A Symbol for a Molecule_aminoacid_regular_olc.} *)

let nam_mod = "Molecule_aminoacid_regular_olc_symbol_v";;

(** {6 Modules.} *)

module Maros_t = Molecule_aminoacid_regular_olc_symbol_t

(** {6 Displaying.} *)

let name = function
  | Maros_t.A -> Format.sprintf "%s" "a"
  | Maros_t.C -> Format.sprintf "%s" "c"
  | Maros_t.D -> Format.sprintf "%s" "d"
  | Maros_t.E -> Format.sprintf "%s" "e"
  | Maros_t.F -> Format.sprintf "%s" "f"
  | Maros_t.H -> Format.sprintf "%s" "h"
  | Maros_t.I -> Format.sprintf "%s" "i"
  | Maros_t.K -> Format.sprintf "%s" "k"
  | Maros_t.L -> Format.sprintf "%s" "l"
  | Maros_t.M -> Format.sprintf "%s" "m"
  | Maros_t.N -> Format.sprintf "%s" "n"
  | Maros_t.Q -> Format.sprintf "%s" "q"
  | Maros_t.R -> Format.sprintf "%s" "r"
  | Maros_t.S -> Format.sprintf "%s" "s"
  | Maros_t.T -> Format.sprintf "%s" "t"
  | Maros_t.V -> Format.sprintf "%s" "v"
  | Maros_t.W -> Format.sprintf "%s" "w"
  | Maros_t.Y -> Format.sprintf "%s" "y"
;;

let print ppf = function
  | Maros_t.A -> Format.fprintf ppf "%s" "a"
  | Maros_t.C -> Format.fprintf ppf "%s" "c"
  | Maros_t.D -> Format.fprintf ppf "%s" "d"
  | Maros_t.E -> Format.fprintf ppf "%s" "e"
  | Maros_t.F -> Format.fprintf ppf "%s" "f"
  | Maros_t.H -> Format.fprintf ppf "%s" "h"
  | Maros_t.I -> Format.fprintf ppf "%s" "i"
  | Maros_t.K -> Format.fprintf ppf "%s" "k"
  | Maros_t.L -> Format.fprintf ppf "%s" "l"
  | Maros_t.M -> Format.fprintf ppf "%s" "m"
  | Maros_t.N -> Format.fprintf ppf "%s" "n"
  | Maros_t.Q -> Format.fprintf ppf "%s" "q"
  | Maros_t.R -> Format.fprintf ppf "%s" "r"
  | Maros_t.S -> Format.fprintf ppf "%s" "s"
  | Maros_t.T -> Format.fprintf ppf "%s" "t"
  | Maros_t.V -> Format.fprintf ppf "%s" "v"
  | Maros_t.W -> Format.fprintf ppf "%s" "w"
  | Maros_t.Y -> Format.fprintf ppf "%s" "y"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found molecule_aminoacid_regular_olc_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting A from Molecule_aminoacid_regular_olc.} *)

(* No Extraction from a 0. *)

(** {6 Extracting C from Molecule_aminoacid_regular_olc.} *)

(* No Extraction from c 0. *)

(** {6 Extracting D from Molecule_aminoacid_regular_olc.} *)

(* No Extraction from d 0. *)

(** {6 Extracting E from Molecule_aminoacid_regular_olc.} *)

(* No Extraction from e 0. *)

(** {6 Extracting F from Molecule_aminoacid_regular_olc.} *)

(* No Extraction from f 0. *)

(** {6 Extracting H from Molecule_aminoacid_regular_olc.} *)

(* No Extraction from h 0. *)

(** {6 Extracting I from Molecule_aminoacid_regular_olc.} *)

(* No Extraction from i 0. *)

(** {6 Extracting K from Molecule_aminoacid_regular_olc.} *)

(* No Extraction from k 0. *)

(** {6 Extracting L from Molecule_aminoacid_regular_olc.} *)

(* No Extraction from l 0. *)

(** {6 Extracting M from Molecule_aminoacid_regular_olc.} *)

(* No Extraction from m 0. *)

(** {6 Extracting N from Molecule_aminoacid_regular_olc.} *)

(* No Extraction from n 0. *)

(** {6 Extracting Q from Molecule_aminoacid_regular_olc.} *)

(* No Extraction from q 0. *)

(** {6 Extracting R from Molecule_aminoacid_regular_olc.} *)

(* No Extraction from r 0. *)

(** {6 Extracting S from Molecule_aminoacid_regular_olc.} *)

(* No Extraction from s 0. *)

(** {6 Extracting T from Molecule_aminoacid_regular_olc.} *)

(* No Extraction from t 0. *)

(** {6 Extracting V from Molecule_aminoacid_regular_olc.} *)

(* No Extraction from v 0. *)

(** {6 Extracting W from Molecule_aminoacid_regular_olc.} *)

(* No Extraction from w 0. *)

(** {6 Extracting Y from Molecule_aminoacid_regular_olc.} *)

(* No Extraction from y 0. *)

(** {6 Querying.} *)

(** {6 Querying A in Molecule_aminoacid_regular_olc.} *)

(* No Query from a 0. *)

(** {6 Querying C in Molecule_aminoacid_regular_olc.} *)

(* No Query from c 0. *)

(** {6 Querying D in Molecule_aminoacid_regular_olc.} *)

(* No Query from d 0. *)

(** {6 Querying E in Molecule_aminoacid_regular_olc.} *)

(* No Query from e 0. *)

(** {6 Querying F in Molecule_aminoacid_regular_olc.} *)

(* No Query from f 0. *)

(** {6 Querying H in Molecule_aminoacid_regular_olc.} *)

(* No Query from h 0. *)

(** {6 Querying I in Molecule_aminoacid_regular_olc.} *)

(* No Query from i 0. *)

(** {6 Querying K in Molecule_aminoacid_regular_olc.} *)

(* No Query from k 0. *)

(** {6 Querying L in Molecule_aminoacid_regular_olc.} *)

(* No Query from l 0. *)

(** {6 Querying M in Molecule_aminoacid_regular_olc.} *)

(* No Query from m 0. *)

(** {6 Querying N in Molecule_aminoacid_regular_olc.} *)

(* No Query from n 0. *)

(** {6 Querying Q in Molecule_aminoacid_regular_olc.} *)

(* No Query from q 0. *)

(** {6 Querying R in Molecule_aminoacid_regular_olc.} *)

(* No Query from r 0. *)

(** {6 Querying S in Molecule_aminoacid_regular_olc.} *)

(* No Query from s 0. *)

(** {6 Querying T in Molecule_aminoacid_regular_olc.} *)

(* No Query from t 0. *)

(** {6 Querying V in Molecule_aminoacid_regular_olc.} *)

(* No Query from v 0. *)

(** {6 Querying W in Molecule_aminoacid_regular_olc.} *)

(* No Query from w 0. *)

(** {6 Querying Y in Molecule_aminoacid_regular_olc.} *)

(* No Query from y 0. *)

(** {6 Upgrading from A to Molecule_aminoacid_regular_olc.} *)

let a = Maros_t.A;;

(** {6 Upgrading from C to Molecule_aminoacid_regular_olc.} *)

let c = Maros_t.C;;

(** {6 Upgrading from D to Molecule_aminoacid_regular_olc.} *)

let d = Maros_t.D;;

(** {6 Upgrading from E to Molecule_aminoacid_regular_olc.} *)

let e = Maros_t.E;;

(** {6 Upgrading from F to Molecule_aminoacid_regular_olc.} *)

let f = Maros_t.F;;

(** {6 Upgrading from H to Molecule_aminoacid_regular_olc.} *)

let h = Maros_t.H;;

(** {6 Upgrading from I to Molecule_aminoacid_regular_olc.} *)

let i = Maros_t.I;;

(** {6 Upgrading from K to Molecule_aminoacid_regular_olc.} *)

let k = Maros_t.K;;

(** {6 Upgrading from L to Molecule_aminoacid_regular_olc.} *)

let l = Maros_t.L;;

(** {6 Upgrading from M to Molecule_aminoacid_regular_olc.} *)

let m = Maros_t.M;;

(** {6 Upgrading from N to Molecule_aminoacid_regular_olc.} *)

let n = Maros_t.N;;

(** {6 Upgrading from Q to Molecule_aminoacid_regular_olc.} *)

let q = Maros_t.Q;;

(** {6 Upgrading from R to Molecule_aminoacid_regular_olc.} *)

let r = Maros_t.R;;

(** {6 Upgrading from S to Molecule_aminoacid_regular_olc.} *)

let s = Maros_t.S;;

(** {6 Upgrading from T to Molecule_aminoacid_regular_olc.} *)

let t = Maros_t.T;;

(** {6 Upgrading from V to Molecule_aminoacid_regular_olc.} *)

let v = Maros_t.V;;

(** {6 Upgrading from W to Molecule_aminoacid_regular_olc.} *)

let w = Maros_t.W;;

(** {6 Upgrading from Y to Molecule_aminoacid_regular_olc.} *)

let y = Maros_t.Y;;

(** {6 Including.} *)

module Mars_t = Molecule_aminoacid_regular_symbol_t

let molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_olc_symbol = function
  | Maros_t.A -> Mars_t.Alanine
  | Maros_t.R -> Mars_t.Arginine
  | Maros_t.N -> Mars_t.Asparagine
  | Maros_t.D -> Mars_t.Aspartic
  | Maros_t.C -> Mars_t.Cysteine
  | Maros_t.Q -> Mars_t.Glutamine
  | Maros_t.E -> Mars_t.Glutamic
  | Maros_t.H -> Mars_t.Histidine
  | Maros_t.I -> Mars_t.Isoleucine
  | Maros_t.L -> Mars_t.Leucine
  | Maros_t.K -> Mars_t.Lysine
  | Maros_t.M -> Mars_t.Methionine
  | Maros_t.F -> Mars_t.Phenylalanine
  | Maros_t.S -> Mars_t.Serine
  | Maros_t.T -> Mars_t.Threonine
  | Maros_t.W -> Mars_t.Tryptophan
  | Maros_t.Y -> Mars_t.Tyrosine
  | Maros_t.V -> Mars_t.Valine
;;

let print_error_char c mdn her =
  Format.fprintf Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---@.\
    char >%c< does not represent a one letter code symbol@]@."
  mdn her c
;;

let fail_char c mdn her =
  print_error_char c mdn her;
  assert false
;;

let molecule_aminoacid_regular_olc_symbol_of_char chr =
  let chu = Char.uppercase chr in
  match chu with
  | 'A' -> a
  | 'R' -> r
  | 'N' -> n
  | 'D' -> d  
  | 'C' -> c
  | 'Q' -> q
  | 'E' -> e
  | 'H' -> h
  | 'I' -> i
  | 'L' -> l
  | 'K' -> k
  | 'M' -> m
  | 'F' -> f
  | 'S' -> s
  | 'T' -> t
  | 'W' -> w
  | 'Y' -> y
  | 'V' -> v
  | c -> fail_char c nam_mod "molecule_aminoacid_olc_symbol_of_char"
;;

let molecule_aminoacid_regular_olc_symbol_of_string str =
  let chr = String.get str 0 in    
    molecule_aminoacid_regular_olc_symbol_of_char chr
;;(** created by ./do_entitysum_symbol_v_ml.sh molecule_aminoacid_regular_olc 12 January 2011. *)

