(** {3 A Symbol for a Purine_base.} *)

let nam_mod = "Purine_base_symbol_v";;

(** {6 Modules.} *)

module Pus_t = Purine_base_symbol_t

(** {6 Displaying.} *)

let name = function
  | Pus_t.Adenosine -> Format.sprintf "%s" "Adenosine"
  | Pus_t.Guanine -> Format.sprintf "%s" "Guanine"
;;

let print ppf = function
  | Pus_t.Adenosine -> Format.fprintf ppf "%s" "Adenosine"
  | Pus_t.Guanine -> Format.fprintf ppf "%s" "Guanine"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found purine_base_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Adenosine from Purine_base.} *)

(* No Extraction from Adenosine 0. *)

(** {6 Extracting Guanine from Purine_base.} *)

(* No Extraction from Guanine 0. *)

(** {6 Querying.} *)

(** {6 Querying Adenosine in Purine_base.} *)

(* No Query from Adenosine 0. *)

(** {6 Querying Guanine in Purine_base.} *)

(* No Query from Guanine 0. *)

(** {6 Upgrading from Adenosine to Purine_base.} *)

let adenosine = Pus_t.Adenosine;;

(** {6 Upgrading from Guanine to Purine_base.} *)

let guanine = Pus_t.Guanine;;

(** created by ./do_entitysum_symbol_v_ml.sh purine_base 12 January 2011. *)

