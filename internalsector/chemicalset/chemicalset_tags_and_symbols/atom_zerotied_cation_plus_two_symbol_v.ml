(** {3 A Symbol for a Atom_zerotied_cation_plus_two.} *)

let nam_mod = "Atom_zerotied_cation_plus_two_symbol_v";;

(** {6 Modules.} *)

module Ac2s_t = Atom_zerotied_cation_plus_two_symbol_t

(** {6 Displaying.} *)

let name = function
  | Ac2s_t.Mg_2p -> Format.sprintf "%s" "mg_2p"
  | Ac2s_t.Ca_2p -> Format.sprintf "%s" "ca_2p"
  | Ac2s_t.Fe_2p -> Format.sprintf "%s" "fe_2p"
  | Ac2s_t.Zn_2p -> Format.sprintf "%s" "zn_2p"
  | Ac2s_t.Cu_2p -> Format.sprintf "%s" "cu_2p"
;;

let print ppf = function
  | Ac2s_t.Mg_2p -> Format.fprintf ppf "%s" "mg_2p"
  | Ac2s_t.Ca_2p -> Format.fprintf ppf "%s" "ca_2p"
  | Ac2s_t.Fe_2p -> Format.fprintf ppf "%s" "fe_2p"
  | Ac2s_t.Zn_2p -> Format.fprintf ppf "%s" "zn_2p"
  | Ac2s_t.Cu_2p -> Format.fprintf ppf "%s" "cu_2p"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_zerotied_cation_plus_two_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Mg_2p from Atom_zerotied_cation_plus_two.} *)

(* No Extraction from mg_2p 0. *)

(** {6 Extracting Ca_2p from Atom_zerotied_cation_plus_two.} *)

(* No Extraction from ca_2p 0. *)

(** {6 Extracting Fe_2p from Atom_zerotied_cation_plus_two.} *)

(* No Extraction from fe_2p 0. *)

(** {6 Extracting Zn_2p from Atom_zerotied_cation_plus_two.} *)

(* No Extraction from zn_2p 0. *)

(** {6 Extracting Cu_2p from Atom_zerotied_cation_plus_two.} *)

(* No Extraction from cu_2p 0. *)

(** {6 Querying.} *)

(** {6 Querying Mg_2p in Atom_zerotied_cation_plus_two.} *)

(* No Query from mg_2p 0. *)

(** {6 Querying Ca_2p in Atom_zerotied_cation_plus_two.} *)

(* No Query from ca_2p 0. *)

(** {6 Querying Fe_2p in Atom_zerotied_cation_plus_two.} *)

(* No Query from fe_2p 0. *)

(** {6 Querying Zn_2p in Atom_zerotied_cation_plus_two.} *)

(* No Query from zn_2p 0. *)

(** {6 Querying Cu_2p in Atom_zerotied_cation_plus_two.} *)

(* No Query from cu_2p 0. *)

(** {6 Upgrading from Mg_2p to Atom_zerotied_cation_plus_two.} *)

let mg_2p = Ac2s_t.Mg_2p;;

(** {6 Upgrading from Ca_2p to Atom_zerotied_cation_plus_two.} *)

let ca_2p = Ac2s_t.Ca_2p;;

(** {6 Upgrading from Fe_2p to Atom_zerotied_cation_plus_two.} *)

let fe_2p = Ac2s_t.Fe_2p;;

(** {6 Upgrading from Zn_2p to Atom_zerotied_cation_plus_two.} *)

let zn_2p = Ac2s_t.Zn_2p;;

(** {6 Upgrading from Cu_2p to Atom_zerotied_cation_plus_two.} *)

let cu_2p = Ac2s_t.Cu_2p;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_zerotied_cation_plus_two 12 January 2011. *)

