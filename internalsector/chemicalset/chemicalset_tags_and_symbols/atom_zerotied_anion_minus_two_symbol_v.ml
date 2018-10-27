(** {3 A Symbol for a Atom_zerotied_anion_minus_two.} *)

let nam_mod = "Atom_zerotied_anion_minus_two_symbol_v";;

(** {6 Modules.} *)

module Am2s_t = Atom_zerotied_anion_minus_two_symbol_t

(** {6 Displaying.} *)

let name = function
  | Am2s_t.O_2m -> Format.sprintf "%s" "o_2m"
  | Am2s_t.S_2m -> Format.sprintf "%s" "s_2m"
;;

let print ppf = function
  | Am2s_t.O_2m -> Format.fprintf ppf "%s" "o_2m"
  | Am2s_t.S_2m -> Format.fprintf ppf "%s" "s_2m"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_zerotied_anion_minus_two_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting O_2m from Atom_zerotied_anion_minus_two.} *)

(* No Extraction from o_2m 0. *)

(** {6 Extracting S_2m from Atom_zerotied_anion_minus_two.} *)

(* No Extraction from s_2m 0. *)

(** {6 Querying.} *)

(** {6 Querying O_2m in Atom_zerotied_anion_minus_two.} *)

(* No Query from o_2m 0. *)

(** {6 Querying S_2m in Atom_zerotied_anion_minus_two.} *)

(* No Query from s_2m 0. *)

(** {6 Upgrading from O_2m to Atom_zerotied_anion_minus_two.} *)

let o_2m = Am2s_t.O_2m;;

(** {6 Upgrading from S_2m to Atom_zerotied_anion_minus_two.} *)

let s_2m = Am2s_t.S_2m;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_zerotied_anion_minus_two 12 January 2011. *)

