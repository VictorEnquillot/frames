(** {3 A Symbol for a Atom_onetied_double.} *)

let nam_mod = "Atom_onetied_double_symbol_v";;

(** {6 Modules.} *)

module Aods_t = Atom_onetied_double_symbol_t

(** {6 Displaying.} *)

let name = function
  | Aods_t.O_d -> Format.sprintf "%s" "o_d"
;;

let print ppf = function
  | Aods_t.O_d -> Format.fprintf ppf "%s" "o_d"
;;

(** {6 Extracting.} *)

(** {6 Extracting O_d from Atom_onetied_double.} *)

(* No Extraction from o_d 0. *)

(** {6 Querying.} *)

(** {6 Querying O_d in Atom_onetied_double.} *)

(* No Query from o_d 0. *)

(** {6 Upgrading from O_d to Atom_onetied_double.} *)

let o_d = Aods_t.O_d;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_onetied_double 12 January 2011. *)

