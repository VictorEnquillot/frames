(** {3 A Symbol for a Atom_zerotied_cation_plus_three.} *)

let nam_mod = "Atom_zerotied_cation_plus_three_symbol_v";;

(** {6 Modules.} *)

module Ac3s_t = Atom_zerotied_cation_plus_three_symbol_t

(** {6 Displaying.} *)

let name = function
  | Ac3s_t.Fe_3p -> Format.sprintf "%s" "fe_3p"
  | Ac3s_t.Ni_3p -> Format.sprintf "%s" "ni_3p"
;;

let print ppf = function
  | Ac3s_t.Fe_3p -> Format.fprintf ppf "%s" "fe_3p"
  | Ac3s_t.Ni_3p -> Format.fprintf ppf "%s" "ni_3p"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_zerotied_cation_plus_three_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Fe_3p from Atom_zerotied_cation_plus_three.} *)

(* No Extraction from fe_3p 0. *)

(** {6 Extracting Ni_3p from Atom_zerotied_cation_plus_three.} *)

(* No Extraction from ni_3p 0. *)

(** {6 Querying.} *)

(** {6 Querying Fe_3p in Atom_zerotied_cation_plus_three.} *)

(* No Query from fe_3p 0. *)

(** {6 Querying Ni_3p in Atom_zerotied_cation_plus_three.} *)

(* No Query from ni_3p 0. *)

(** {6 Upgrading from Fe_3p to Atom_zerotied_cation_plus_three.} *)

let fe_3p = Ac3s_t.Fe_3p;;

(** {6 Upgrading from Ni_3p to Atom_zerotied_cation_plus_three.} *)

let ni_3p = Ac3s_t.Ni_3p;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_zerotied_cation_plus_three 12 January 2011. *)

