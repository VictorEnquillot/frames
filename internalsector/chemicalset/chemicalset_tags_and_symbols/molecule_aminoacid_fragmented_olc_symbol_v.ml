(** {3 A Symbol for a Molecule_aminoacid_fragmented_olc.} *)

let nam_mod = "Molecule_aminoacid_fragmented_olc_symbol_v";;

(** {6 Modules.} *)

module Mafos_t = Molecule_aminoacid_fragmented_olc_symbol_t
module Maros_t = Molecule_aminoacid_regular_olc_symbol_t
module Maros_v = Molecule_aminoacid_regular_olc_symbol_v

(** {6 Displaying.} *)

let name = function
  | Mafos_t.P -> Format.sprintf "%s" "p"
  | Mafos_t.Molecule_aminoacid_regular_olc_symbol smb_aor -> 
      Maros_v.name smb_aor
;;

let print ppf = function
  | Mafos_t.P -> Format.fprintf ppf "%s" "p"
  | Mafos_t.Molecule_aminoacid_regular_olc_symbol smb_aor -> 
      Maros_v.print ppf smb_aor
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found molecule_aminoacid_fragmented_olc_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting P from Molecule_aminoacid_fragmented_olc.} *)

(* No Extraction from p 0. *)

(** {6 Extracting Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc.} *)

let molecule_aminoacid_regular_olc_symbol_off_molecule_aminoacid_fragmented_olc_symbol = function
  | Mafos_t.Molecule_aminoacid_regular_olc_symbol smb_aor -> smb_aor
  | s ->  print_fatal_error
      "molecule_aminoacid_regular_olc_symbol_off_molecule_aminoacid_fragmented_olc_symbol"
      "Molecule_aminoacid_regular_olc_symbol" (name s)
;;

(** {9 Extracting A from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc.} *)

(* No Extraction from a 0. *)

(** {9 Extracting C from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc.} *)

(* No Extraction from c 0. *)

(** {9 Extracting D from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc.} *)

(* No Extraction from d 0. *)

(** {9 Extracting E from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc.} *)

(* No Extraction from e 0. *)

(** {9 Extracting F from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc.} *)

(* No Extraction from f 0. *)

(** {9 Extracting H from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc.} *)

(* No Extraction from h 0. *)

(** {9 Extracting I from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc.} *)

(* No Extraction from i 0. *)

(** {9 Extracting K from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc.} *)

(* No Extraction from k 0. *)

(** {9 Extracting L from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc.} *)

(* No Extraction from l 0. *)

(** {9 Extracting M from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc.} *)

(* No Extraction from m 0. *)

(** {9 Extracting N from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc.} *)

(* No Extraction from n 0. *)

(** {9 Extracting Q from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc.} *)

(* No Extraction from q 0. *)

(** {9 Extracting R from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc.} *)

(* No Extraction from r 0. *)

(** {9 Extracting S from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc.} *)

(* No Extraction from s 0. *)

(** {9 Extracting T from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc.} *)

(* No Extraction from t 0. *)

(** {9 Extracting V from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc.} *)

(* No Extraction from v 0. *)

(** {9 Extracting W from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc.} *)

(* No Extraction from w 0. *)

(** {9 Extracting Y from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc.} *)

(* No Extraction from y 0. *)

(** {6 Querying.} *)

(** {6 Querying P in Molecule_aminoacid_fragmented_olc.} *)

(* No Query from p 0. *)

(** {6 Querying Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc.} *)

let is_molecule_aminoacid_regular_olc_symbol_off_molecule_aminoacid_fragmented_olc_symbol = function
  | Mafos_t.Molecule_aminoacid_regular_olc_symbol _ -> true
  | _ -> false
;;

(** {9 Querying A in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc.} *)

(* No Query from a 0. *)


(** {9 Querying C in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc.} *)

(* No Query from c 0. *)


(** {9 Querying D in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc.} *)

(* No Query from d 0. *)


(** {9 Querying E in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc.} *)

(* No Query from e 0. *)


(** {9 Querying F in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc.} *)

(* No Query from f 0. *)


(** {9 Querying H in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc.} *)

(* No Query from h 0. *)


(** {9 Querying I in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc.} *)

(* No Query from i 0. *)


(** {9 Querying K in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc.} *)

(* No Query from k 0. *)


(** {9 Querying L in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc.} *)

(* No Query from l 0. *)


(** {9 Querying M in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc.} *)

(* No Query from m 0. *)


(** {9 Querying N in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc.} *)

(* No Query from n 0. *)


(** {9 Querying Q in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc.} *)

(* No Query from q 0. *)


(** {9 Querying R in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc.} *)

(* No Query from r 0. *)


(** {9 Querying S in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc.} *)

(* No Query from s 0. *)


(** {9 Querying T in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc.} *)

(* No Query from t 0. *)


(** {9 Querying V in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc.} *)

(* No Query from v 0. *)


(** {9 Querying W in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc.} *)

(* No Query from w 0. *)


(** {9 Querying Y in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc.} *)

(* No Query from y 0. *)


(** {6 Upgrading from P to Molecule_aminoacid_fragmented_olc.} *)

let p = Mafos_t.P;;

(** {6 Upgrading from Molecule_aminoacid_regular_olc to Molecule_aminoacid_fragmented_olc.} *)

let molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aor =
  Mafos_t.Molecule_aminoacid_regular_olc_symbol smb_aor
;;

(** {9 Upgrading from A through Molecule_aminoacid_regular_olc to Molecule_aminoacid_fragmented_olc.} *)

let a = molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.A;;

(** {9 Upgrading from C through Molecule_aminoacid_regular_olc to Molecule_aminoacid_fragmented_olc.} *)

let c = molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.C;;

(** {9 Upgrading from D through Molecule_aminoacid_regular_olc to Molecule_aminoacid_fragmented_olc.} *)

let d = molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.D;;

(** {9 Upgrading from E through Molecule_aminoacid_regular_olc to Molecule_aminoacid_fragmented_olc.} *)

let e = molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.E;;

(** {9 Upgrading from F through Molecule_aminoacid_regular_olc to Molecule_aminoacid_fragmented_olc.} *)

let f = molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.F;;

(** {9 Upgrading from H through Molecule_aminoacid_regular_olc to Molecule_aminoacid_fragmented_olc.} *)

let h = molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.H;;

(** {9 Upgrading from I through Molecule_aminoacid_regular_olc to Molecule_aminoacid_fragmented_olc.} *)

let i = molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.I;;

(** {9 Upgrading from K through Molecule_aminoacid_regular_olc to Molecule_aminoacid_fragmented_olc.} *)

let k = molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.K;;

(** {9 Upgrading from L through Molecule_aminoacid_regular_olc to Molecule_aminoacid_fragmented_olc.} *)

let l = molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.L;;

(** {9 Upgrading from M through Molecule_aminoacid_regular_olc to Molecule_aminoacid_fragmented_olc.} *)

let m = molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.M;;

(** {9 Upgrading from N through Molecule_aminoacid_regular_olc to Molecule_aminoacid_fragmented_olc.} *)

let n = molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.N;;

(** {9 Upgrading from Q through Molecule_aminoacid_regular_olc to Molecule_aminoacid_fragmented_olc.} *)

let q = molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.Q;;

(** {9 Upgrading from R through Molecule_aminoacid_regular_olc to Molecule_aminoacid_fragmented_olc.} *)

let r = molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.R;;

(** {9 Upgrading from S through Molecule_aminoacid_regular_olc to Molecule_aminoacid_fragmented_olc.} *)

let s = molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.S;;

(** {9 Upgrading from T through Molecule_aminoacid_regular_olc to Molecule_aminoacid_fragmented_olc.} *)

let t = molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.T;;

(** {9 Upgrading from V through Molecule_aminoacid_regular_olc to Molecule_aminoacid_fragmented_olc.} *)

let v = molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.V;;

(** {9 Upgrading from W through Molecule_aminoacid_regular_olc to Molecule_aminoacid_fragmented_olc.} *)

let w = molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.W;;

(** {9 Upgrading from Y through Molecule_aminoacid_regular_olc to Molecule_aminoacid_fragmented_olc.} *)

let y = molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.Y;;


module Mafs_t = Molecule_aminoacid_fragmented_symbol_t

let molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_olc_symbol = function
  | Mafos_t.P -> 
      Mafs_t.Proline
  | Mafos_t.Molecule_aminoacid_regular_olc_symbol smb_aor -> 
      Mafs_t.Molecule_aminoacid_regular_symbol
	(Maros_v.molecule_aminoacid_regular_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aor)
;;

(** created by ./do_entitysum_symbol_v_ml.sh molecule_aminoacid_fragmented_olc 12 January 2011. *)

