(** {3 A Symbol for a Atom_sixtied.} *)

let nam_mod = "Atom_sixtied_symbol_v";;

(** {6 Modules.} *)

module Asxs_t = Atom_sixtied_symbol_t

(** {6 Displaying.} *)

let name = function
  | Asxs_t.S_6s -> Format.sprintf "%s" "s_6s"
;;

let print ppf = function
  | Asxs_t.S_6s -> Format.fprintf ppf "%s" "s_6s"
;;

(** {6 Extracting.} *)

(** {6 Extracting S_6s from Atom_sixtied.} *)

(* No Extraction from s_6s 0. *)

(** {6 Querying.} *)

(** {6 Querying S_6s in Atom_sixtied.} *)

(* No Query from s_6s 0. *)

(** {6 Upgrading from S_6s to Atom_sixtied.} *)

let s_6s = Asxs_t.S_6s;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_sixtied 12 January 2011. *)

