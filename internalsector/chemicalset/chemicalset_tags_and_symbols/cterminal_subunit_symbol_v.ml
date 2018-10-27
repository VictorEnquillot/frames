(** {3 A Symbol for a Cterminal_subunit.} *)

let nam_mod = "Cterminal_subunit_symbol_v";;

(** {6 Modules.} *)

module Ctss_t = Cterminal_subunit_symbol_t

(** {6 Displaying.} *)

let name = function
  | Ctss_t.Carboxyl_leftextended -> Format.sprintf "%s" "Carboxyl_leftextended"
  | Ctss_t.Carboxylate_leftextended -> Format.sprintf "%s" "Carboxylate_leftextended"
;;

let print ppf = function
  | Ctss_t.Carboxyl_leftextended -> Format.fprintf ppf "%s" "Carboxyl_leftextended"
  | Ctss_t.Carboxylate_leftextended -> Format.fprintf ppf "%s" "Carboxylate_leftextended"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found cterminal_subunit_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Carboxyl_leftextended from Cterminal_subunit.} *)

(* No Extraction from Carboxyl_leftextended 0. *)

(** {6 Extracting Carboxylate_leftextended from Cterminal_subunit.} *)

(* No Extraction from Carboxylate_leftextended 0. *)

(** {6 Querying.} *)

(** {6 Querying Carboxyl_leftextended in Cterminal_subunit.} *)

(* No Query from Carboxyl_leftextended 0. *)

(** {6 Querying Carboxylate_leftextended in Cterminal_subunit.} *)

(* No Query from Carboxylate_leftextended 0. *)

(** {6 Upgrading from Carboxyl_leftextended to Cterminal_subunit.} *)

let carboxyl_leftextended = Ctss_t.Carboxyl_leftextended;;

(** {6 Upgrading from Carboxylate_leftextended to Cterminal_subunit.} *)

let carboxylate_leftextended = Ctss_t.Carboxylate_leftextended;;

(** created by ./do_entitysum_symbol_v_ml.sh cterminal_subunit 12 January 2011. *)

