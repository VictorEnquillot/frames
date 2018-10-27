(** {3 A Symbol for a Atom_zerotied_anion_minus_one.} *)

let nam_mod = "Atom_zerotied_anion_minus_one_symbol_v";;

(** {6 Modules.} *)

module Am1s_t = Atom_zerotied_anion_minus_one_symbol_t

(** {6 Displaying.} *)

let name = function
  | Am1s_t.F_1m -> Format.sprintf "%s" "f_1m"
  | Am1s_t.H_1m -> Format.sprintf "%s" "h_1m"
  | Am1s_t.Cl_1m -> Format.sprintf "%s" "cl_1m"
  | Am1s_t.Br_1m -> Format.sprintf "%s" "br_1m"
  | Am1s_t.I_1m -> Format.sprintf "%s" "i_1m"
;;

let print ppf = function
  | Am1s_t.F_1m -> Format.fprintf ppf "%s" "f_1m"
  | Am1s_t.H_1m -> Format.fprintf ppf "%s" "h_1m"
  | Am1s_t.Cl_1m -> Format.fprintf ppf "%s" "cl_1m"
  | Am1s_t.Br_1m -> Format.fprintf ppf "%s" "br_1m"
  | Am1s_t.I_1m -> Format.fprintf ppf "%s" "i_1m"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_zerotied_anion_minus_one_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting F_1m from Atom_zerotied_anion_minus_one.} *)

(* No Extraction from f_1m 0. *)

(** {6 Extracting H_1m from Atom_zerotied_anion_minus_one.} *)

(* No Extraction from h_1m 0. *)

(** {6 Extracting Cl_1m from Atom_zerotied_anion_minus_one.} *)

(* No Extraction from cl_1m 0. *)

(** {6 Extracting Br_1m from Atom_zerotied_anion_minus_one.} *)

(* No Extraction from br_1m 0. *)

(** {6 Extracting I_1m from Atom_zerotied_anion_minus_one.} *)

(* No Extraction from i_1m 0. *)

(** {6 Querying.} *)

(** {6 Querying F_1m in Atom_zerotied_anion_minus_one.} *)

(* No Query from f_1m 0. *)

(** {6 Querying H_1m in Atom_zerotied_anion_minus_one.} *)

(* No Query from h_1m 0. *)

(** {6 Querying Cl_1m in Atom_zerotied_anion_minus_one.} *)

(* No Query from cl_1m 0. *)

(** {6 Querying Br_1m in Atom_zerotied_anion_minus_one.} *)

(* No Query from br_1m 0. *)

(** {6 Querying I_1m in Atom_zerotied_anion_minus_one.} *)

(* No Query from i_1m 0. *)

(** {6 Upgrading from F_1m to Atom_zerotied_anion_minus_one.} *)

let f_1m = Am1s_t.F_1m;;

(** {6 Upgrading from H_1m to Atom_zerotied_anion_minus_one.} *)

let h_1m = Am1s_t.H_1m;;

(** {6 Upgrading from Cl_1m to Atom_zerotied_anion_minus_one.} *)

let cl_1m = Am1s_t.Cl_1m;;

(** {6 Upgrading from Br_1m to Atom_zerotied_anion_minus_one.} *)

let br_1m = Am1s_t.Br_1m;;

(** {6 Upgrading from I_1m to Atom_zerotied_anion_minus_one.} *)

let i_1m = Am1s_t.I_1m;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_zerotied_anion_minus_one 12 January 2011. *)

