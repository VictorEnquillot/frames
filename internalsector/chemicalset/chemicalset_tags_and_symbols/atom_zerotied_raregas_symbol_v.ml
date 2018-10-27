(** {3 A Symbol for a Atom_zerotied_raregas.} *)

let nam_mod = "Atom_zerotied_raregas_symbol_v";;

(** {6 Modules.} *)

module Args_t = Atom_zerotied_raregas_symbol_t

(** {6 Displaying.} *)

let name = function
  | Args_t.Ar -> Format.sprintf "%s" "ar"
  | Args_t.He -> Format.sprintf "%s" "he"
  | Args_t.Kr -> Format.sprintf "%s" "kr"
  | Args_t.Ne -> Format.sprintf "%s" "ne"
  | Args_t.Xe -> Format.sprintf "%s" "xe"
;;

let print ppf = function
  | Args_t.Ar -> Format.fprintf ppf "%s" "ar"
  | Args_t.He -> Format.fprintf ppf "%s" "he"
  | Args_t.Kr -> Format.fprintf ppf "%s" "kr"
  | Args_t.Ne -> Format.fprintf ppf "%s" "ne"
  | Args_t.Xe -> Format.fprintf ppf "%s" "xe"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_zerotied_raregas_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Ar from Atom_zerotied_raregas.} *)

(* No Extraction from ar 0. *)

(** {6 Extracting He from Atom_zerotied_raregas.} *)

(* No Extraction from he 0. *)

(** {6 Extracting Kr from Atom_zerotied_raregas.} *)

(* No Extraction from kr 0. *)

(** {6 Extracting Ne from Atom_zerotied_raregas.} *)

(* No Extraction from ne 0. *)

(** {6 Extracting Xe from Atom_zerotied_raregas.} *)

(* No Extraction from xe 0. *)

(** {6 Querying.} *)

(** {6 Querying Ar in Atom_zerotied_raregas.} *)

(* No Query from ar 0. *)

(** {6 Querying He in Atom_zerotied_raregas.} *)

(* No Query from he 0. *)

(** {6 Querying Kr in Atom_zerotied_raregas.} *)

(* No Query from kr 0. *)

(** {6 Querying Ne in Atom_zerotied_raregas.} *)

(* No Query from ne 0. *)

(** {6 Querying Xe in Atom_zerotied_raregas.} *)

(* No Query from xe 0. *)

(** {6 Upgrading from Ar to Atom_zerotied_raregas.} *)

let ar = Args_t.Ar;;

(** {6 Upgrading from He to Atom_zerotied_raregas.} *)

let he = Args_t.He;;

(** {6 Upgrading from Kr to Atom_zerotied_raregas.} *)

let kr = Args_t.Kr;;

(** {6 Upgrading from Ne to Atom_zerotied_raregas.} *)

let ne = Args_t.Ne;;

(** {6 Upgrading from Xe to Atom_zerotied_raregas.} *)

let xe = Args_t.Xe;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_zerotied_raregas 12 January 2011. *)

