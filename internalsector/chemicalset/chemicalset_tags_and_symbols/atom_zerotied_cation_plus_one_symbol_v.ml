(** {3 A Symbol for a Atom_zerotied_cation_plus_one.} *)

let nam_mod = "Atom_zerotied_cation_plus_one_symbol_v";;

(** {6 Modules.} *)

module Ac1s_t = Atom_zerotied_cation_plus_one_symbol_t

(** {6 Displaying.} *)

let name = function
  | Ac1s_t.H_1p -> Format.sprintf "%s" "h_1p"
  | Ac1s_t.K_1p -> Format.sprintf "%s" "k_1p"
  | Ac1s_t.Li_1p -> Format.sprintf "%s" "li_1p"
  | Ac1s_t.Na_1p -> Format.sprintf "%s" "na_1p"
  | Ac1s_t.Ni_1p -> Format.sprintf "%s" "ni_1p"
  | Ac1s_t.Cu_1p -> Format.sprintf "%s" "cu_1p"
;;

let print ppf = function
  | Ac1s_t.H_1p -> Format.fprintf ppf "%s" "h_1p"
  | Ac1s_t.K_1p -> Format.fprintf ppf "%s" "k_1p"
  | Ac1s_t.Li_1p -> Format.fprintf ppf "%s" "li_1p"
  | Ac1s_t.Na_1p -> Format.fprintf ppf "%s" "na_1p"
  | Ac1s_t.Ni_1p -> Format.fprintf ppf "%s" "ni_1p"
  | Ac1s_t.Cu_1p -> Format.fprintf ppf "%s" "cu_1p"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_zerotied_cation_plus_one_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting H_1p from Atom_zerotied_cation_plus_one.} *)

(* No Extraction from h_1p 0. *)

(** {6 Extracting K_1p from Atom_zerotied_cation_plus_one.} *)

(* No Extraction from k_1p 0. *)

(** {6 Extracting Li_1p from Atom_zerotied_cation_plus_one.} *)

(* No Extraction from li_1p 0. *)

(** {6 Extracting Na_1p from Atom_zerotied_cation_plus_one.} *)

(* No Extraction from na_1p 0. *)

(** {6 Extracting Ni_1p from Atom_zerotied_cation_plus_one.} *)

(* No Extraction from ni_1p 0. *)

(** {6 Extracting Cu_1p from Atom_zerotied_cation_plus_one.} *)

(* No Extraction from cu_1p 0. *)

(** {6 Querying.} *)

(** {6 Querying H_1p in Atom_zerotied_cation_plus_one.} *)

(* No Query from h_1p 0. *)

(** {6 Querying K_1p in Atom_zerotied_cation_plus_one.} *)

(* No Query from k_1p 0. *)

(** {6 Querying Li_1p in Atom_zerotied_cation_plus_one.} *)

(* No Query from li_1p 0. *)

(** {6 Querying Na_1p in Atom_zerotied_cation_plus_one.} *)

(* No Query from na_1p 0. *)

(** {6 Querying Ni_1p in Atom_zerotied_cation_plus_one.} *)

(* No Query from ni_1p 0. *)

(** {6 Querying Cu_1p in Atom_zerotied_cation_plus_one.} *)

(* No Query from cu_1p 0. *)

(** {6 Upgrading from H_1p to Atom_zerotied_cation_plus_one.} *)

let h_1p = Ac1s_t.H_1p;;

(** {6 Upgrading from K_1p to Atom_zerotied_cation_plus_one.} *)

let k_1p = Ac1s_t.K_1p;;

(** {6 Upgrading from Li_1p to Atom_zerotied_cation_plus_one.} *)

let li_1p = Ac1s_t.Li_1p;;

(** {6 Upgrading from Na_1p to Atom_zerotied_cation_plus_one.} *)

let na_1p = Ac1s_t.Na_1p;;

(** {6 Upgrading from Ni_1p to Atom_zerotied_cation_plus_one.} *)

let ni_1p = Ac1s_t.Ni_1p;;

(** {6 Upgrading from Cu_1p to Atom_zerotied_cation_plus_one.} *)

let cu_1p = Ac1s_t.Cu_1p;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_zerotied_cation_plus_one 12 January 2011. *)

