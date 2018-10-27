(** {3 A Symbol for a Molecule_bridged.} *)

let nam_mod = "Molecule_bridged_symbol_v";;

(** {6 Modules.} *)

module Mbs_t = Molecule_bridged_symbol_t

(** {6 Displaying.} *)

let name = function
  | Mbs_t.Fake_b -> Format.sprintf "%s" "Fake_b"
  | Mbs_t.Benzene -> Format.sprintf "%s" "Benzene"
  | Mbs_t.Phenol -> Format.sprintf "%s" "Phenol"
  | Mbs_t.Pyrrole -> Format.sprintf "%s" "Pyrrole"
;;

let print ppf = function
  | Mbs_t.Fake_b -> Format.fprintf ppf "%s" "Fake_b"
  | Mbs_t.Benzene -> Format.fprintf ppf "%s" "Benzene"
  | Mbs_t.Phenol -> Format.fprintf ppf "%s" "Phenol"
  | Mbs_t.Pyrrole -> Format.fprintf ppf "%s" "Pyrrole"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found molecule_bridged_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Fake_b from Molecule_bridged.} *)

(* No Extraction from Fake_b 0. *)

(** {6 Extracting Benzene from Molecule_bridged.} *)

(* No Extraction from Benzene 0. *)

(** {6 Extracting Phenol from Molecule_bridged.} *)

(* No Extraction from Phenol 0. *)

(** {6 Extracting Pyrrole from Molecule_bridged.} *)

(* No Extraction from Pyrrole 0. *)

(** {6 Querying.} *)

(** {6 Querying Fake_b in Molecule_bridged.} *)

(* No Query from Fake_b 0. *)

(** {6 Querying Benzene in Molecule_bridged.} *)

(* No Query from Benzene 0. *)

(** {6 Querying Phenol in Molecule_bridged.} *)

(* No Query from Phenol 0. *)

(** {6 Querying Pyrrole in Molecule_bridged.} *)

(* No Query from Pyrrole 0. *)

(** {6 Upgrading from Fake_b to Molecule_bridged.} *)

let fake_b = Mbs_t.Fake_b;;

(** {6 Upgrading from Benzene to Molecule_bridged.} *)

let benzene = Mbs_t.Benzene;;

(** {6 Upgrading from Phenol to Molecule_bridged.} *)

let phenol = Mbs_t.Phenol;;

(** {6 Upgrading from Pyrrole to Molecule_bridged.} *)

let pyrrole = Mbs_t.Pyrrole;;

(** created by ./do_entitysum_symbol_v_ml.sh molecule_bridged 12 January 2011. *)

