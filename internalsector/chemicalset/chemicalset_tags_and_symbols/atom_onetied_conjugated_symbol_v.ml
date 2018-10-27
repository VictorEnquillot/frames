(** {3 A Symbol for a Atom_onetied_conjugated.} *)

let nam_mod = "Atom_onetied_conjugated_symbol_v";;

(** {6 Modules.} *)

module Aocs_t = Atom_onetied_conjugated_symbol_t

(** {6 Displaying.} *)

let name = function
  | Aocs_t.O_c -> Format.sprintf "%s" "o_c"
;;

let print ppf = function
  | Aocs_t.O_c -> Format.fprintf ppf "%s" "o_c"
;;

(** {6 Extracting.} *)

(** {6 Extracting O_c from Atom_onetied_conjugated.} *)

(* No Extraction from o_c 0. *)

(** {6 Querying.} *)

(** {6 Querying O_c in Atom_onetied_conjugated.} *)

(* No Query from o_c 0. *)

(** {6 Upgrading from O_c to Atom_onetied_conjugated.} *)

let o_c = Aocs_t.O_c;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_onetied_conjugated 12 January 2011. *)

