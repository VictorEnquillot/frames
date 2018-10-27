(** {3 A Symbol for a Grouping_bridged.} *)

let nam_mod = "Grouping_bridged_symbol_v";;

(** {6 Modules.} *)

module Gbs_t = Grouping_bridged_symbol_t

(** {6 Displaying.} *)

let name = function
  | Gbs_t.Benzale -> Format.sprintf "%s" "Benzale"
  | Gbs_t.Benzole -> Format.sprintf "%s" "Benzole"
  | Gbs_t.Benzyl -> Format.sprintf "%s" "Benzyl"
  | Gbs_t.Indole -> Format.sprintf "%s" "Indole"
  | Gbs_t.Metheneimidazole -> Format.sprintf "%s" "Metheneimidazole"
  | Gbs_t.MetheneIndole -> Format.sprintf "%s" "MetheneIndole"
  | Gbs_t.Dimethonecarbonhydroxyldimethone -> Format.sprintf "%s" "Dimethonecarbonhydroxyldimethone"
  | Gbs_t.Dimethone -> Format.sprintf "%s" "Dimethone"
  | Gbs_t.Phenol -> Format.sprintf "%s" "Phenol"
  | Gbs_t.Pyrrole -> Format.sprintf "%s" "Pyrrole"
  | Gbs_t.Methenephenol -> Format.sprintf "%s" "Methenephenol"
;;

let print ppf = function
  | Gbs_t.Benzale -> Format.fprintf ppf "%s" "Benzale"
  | Gbs_t.Benzole -> Format.fprintf ppf "%s" "Benzole"
  | Gbs_t.Benzyl -> Format.fprintf ppf "%s" "Benzyl"
  | Gbs_t.Indole -> Format.fprintf ppf "%s" "Indole"
  | Gbs_t.Metheneimidazole -> Format.fprintf ppf "%s" "Metheneimidazole"
  | Gbs_t.MetheneIndole -> Format.fprintf ppf "%s" "MetheneIndole"
  | Gbs_t.Dimethonecarbonhydroxyldimethone -> Format.fprintf ppf "%s" "Dimethonecarbonhydroxyldimethone"
  | Gbs_t.Dimethone -> Format.fprintf ppf "%s" "Dimethone"
  | Gbs_t.Phenol -> Format.fprintf ppf "%s" "Phenol"
  | Gbs_t.Pyrrole -> Format.fprintf ppf "%s" "Pyrrole"
  | Gbs_t.Methenephenol -> Format.fprintf ppf "%s" "Methenephenol"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found grouping_bridged_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Benzale from Grouping_bridged.} *)

(* No Extraction from Benzale 0. *)

(** {6 Extracting Benzole from Grouping_bridged.} *)

(* No Extraction from Benzole 0. *)

(** {6 Extracting Benzyl from Grouping_bridged.} *)

(* No Extraction from Benzyl 0. *)

(** {6 Extracting Indole from Grouping_bridged.} *)

(* No Extraction from Indole 0. *)

(** {6 Extracting Metheneimidazole from Grouping_bridged.} *)

(* No Extraction from Metheneimidazole 0. *)

(** {6 Extracting MetheneIndole from Grouping_bridged.} *)

(* No Extraction from MetheneIndole 0. *)

(** {6 Extracting Dimethonecarbonhydroxyldimethone from Grouping_bridged.} *)

(* No Extraction from Dimethonecarbonhydroxyldimethone 0. *)

(** {6 Extracting Dimethone from Grouping_bridged.} *)

(* No Extraction from Dimethone 0. *)

(** {6 Extracting Phenol from Grouping_bridged.} *)

(* No Extraction from Phenol 0. *)

(** {6 Extracting Pyrrole from Grouping_bridged.} *)

(* No Extraction from Pyrrole 0. *)

(** {6 Extracting Methenephenol from Grouping_bridged.} *)

(* No Extraction from Methenephenol 0. *)

(** {6 Querying.} *)

(** {6 Querying Benzale in Grouping_bridged.} *)

(* No Query from Benzale 0. *)

(** {6 Querying Benzole in Grouping_bridged.} *)

(* No Query from Benzole 0. *)

(** {6 Querying Benzyl in Grouping_bridged.} *)

(* No Query from Benzyl 0. *)

(** {6 Querying Indole in Grouping_bridged.} *)

(* No Query from Indole 0. *)

(** {6 Querying Metheneimidazole in Grouping_bridged.} *)

(* No Query from Metheneimidazole 0. *)

(** {6 Querying MetheneIndole in Grouping_bridged.} *)

(* No Query from MetheneIndole 0. *)

(** {6 Querying Dimethonecarbonhydroxyldimethone in Grouping_bridged.} *)

(* No Query from Dimethonecarbonhydroxyldimethone 0. *)

(** {6 Querying Dimethone in Grouping_bridged.} *)

(* No Query from Dimethone 0. *)

(** {6 Querying Phenol in Grouping_bridged.} *)

(* No Query from Phenol 0. *)

(** {6 Querying Pyrrole in Grouping_bridged.} *)

(* No Query from Pyrrole 0. *)

(** {6 Querying Methenephenol in Grouping_bridged.} *)

(* No Query from Methenephenol 0. *)

(** {6 Upgrading from Benzale to Grouping_bridged.} *)

let benzale = Gbs_t.Benzale;;

(** {6 Upgrading from Benzole to Grouping_bridged.} *)

let benzole = Gbs_t.Benzole;;

(** {6 Upgrading from Benzyl to Grouping_bridged.} *)

let benzyl = Gbs_t.Benzyl;;

(** {6 Upgrading from Indole to Grouping_bridged.} *)

let indole = Gbs_t.Indole;;

(** {6 Upgrading from Metheneimidazole to Grouping_bridged.} *)

let metheneimidazole = Gbs_t.Metheneimidazole;;

(** {6 Upgrading from MetheneIndole to Grouping_bridged.} *)

let metheneindole = Gbs_t.MetheneIndole;;

(** {6 Upgrading from Dimethonecarbonhydroxyldimethone to Grouping_bridged.} *)

let dimethonecarbonhydroxyldimethone = Gbs_t.Dimethonecarbonhydroxyldimethone;;

(** {6 Upgrading from Dimethone to Grouping_bridged.} *)

let dimethone = Gbs_t.Dimethone;;

(** {6 Upgrading from Phenol to Grouping_bridged.} *)

let phenol = Gbs_t.Phenol;;

(** {6 Upgrading from Pyrrole to Grouping_bridged.} *)

let pyrrole = Gbs_t.Pyrrole;;

(** {6 Upgrading from Methenephenol to Grouping_bridged.} *)

let methenephenol = Gbs_t.Methenephenol;;

(** created by ./do_entitysum_symbol_v_ml.sh grouping_bridged 12 January 2011. *)

