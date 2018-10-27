(** {3 A Symbol for a Grouping_polyfragment.} *)

let nam_mod = "Grouping_polyfragment_symbol_v";;

(** {6 Modules.} *)

module Gps_t = Grouping_polyfragment_symbol_t

(** {6 Displaying.} *)

let name = function
  | Gps_t.DiMethineTriMethyl -> Format.sprintf "%s" "DiMethineTriMethyl"
  | Gps_t.Ethcaracidmethyllamine -> Format.sprintf "%s" "Ethcaracidmethyllamine"
  | Gps_t.Ethcaracidmethylramine -> Format.sprintf "%s" "Ethcaracidmethylramine"
  | Gps_t.Ethineacidlamine -> Format.sprintf "%s" "Ethineacidlamine"
  | Gps_t.Ethineacidramine -> Format.sprintf "%s" "Ethineacidramine"
  | Gps_t.Guanidine -> Format.sprintf "%s" "Guanidine"
  | Gps_t.Guanidinium -> Format.sprintf "%s" "Guanidinium"
  | Gps_t.MetheneMethineDiMethyl -> Format.sprintf "%s" "MetheneMethineDiMethyl"
  | Gps_t.MethineDiMethyl -> Format.sprintf "%s" "MethineDiMethyl"
  | Gps_t.MethineEthylMethyl -> Format.sprintf "%s" "MethineEthylMethyl"
  | Gps_t.MethinolMethyl -> Format.sprintf "%s" "MethinolMethyl"
  | Gps_t.TriMetheneGuanidinium -> Format.sprintf "%s" "TriMetheneGuanidinium"
  | Gps_t.TriMethineTetraMethyl -> Format.sprintf "%s" "TriMethineTetraMethyl"
;;

let print ppf = function
  | Gps_t.DiMethineTriMethyl -> Format.fprintf ppf "%s" "DiMethineTriMethyl"
  | Gps_t.Ethcaracidmethyllamine -> Format.fprintf ppf "%s" "Ethcaracidmethyllamine"
  | Gps_t.Ethcaracidmethylramine -> Format.fprintf ppf "%s" "Ethcaracidmethylramine"
  | Gps_t.Ethineacidlamine -> Format.fprintf ppf "%s" "Ethineacidlamine"
  | Gps_t.Ethineacidramine -> Format.fprintf ppf "%s" "Ethineacidramine"
  | Gps_t.Guanidine -> Format.fprintf ppf "%s" "Guanidine"
  | Gps_t.Guanidinium -> Format.fprintf ppf "%s" "Guanidinium"
  | Gps_t.MetheneMethineDiMethyl -> Format.fprintf ppf "%s" "MetheneMethineDiMethyl"
  | Gps_t.MethineDiMethyl -> Format.fprintf ppf "%s" "MethineDiMethyl"
  | Gps_t.MethineEthylMethyl -> Format.fprintf ppf "%s" "MethineEthylMethyl"
  | Gps_t.MethinolMethyl -> Format.fprintf ppf "%s" "MethinolMethyl"
  | Gps_t.TriMetheneGuanidinium -> Format.fprintf ppf "%s" "TriMetheneGuanidinium"
  | Gps_t.TriMethineTetraMethyl -> Format.fprintf ppf "%s" "TriMethineTetraMethyl"
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found grouping_polyfragment_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting DiMethineTriMethyl from Grouping_polyfragment.} *)

(* No Extraction from DiMethineTriMethyl 0. *)

(** {6 Extracting Ethcaracidmethyllamine from Grouping_polyfragment.} *)

(* No Extraction from Ethcaracidmethyllamine 0. *)

(** {6 Extracting Ethcaracidmethylramine from Grouping_polyfragment.} *)

(* No Extraction from Ethcaracidmethylramine 0. *)

(** {6 Extracting Ethineacidlamine from Grouping_polyfragment.} *)

(* No Extraction from Ethineacidlamine 0. *)

(** {6 Extracting Ethineacidramine from Grouping_polyfragment.} *)

(* No Extraction from Ethineacidramine 0. *)

(** {6 Extracting Guanidine from Grouping_polyfragment.} *)

(* No Extraction from Guanidine 0. *)

(** {6 Extracting Guanidinium from Grouping_polyfragment.} *)

(* No Extraction from Guanidinium 0. *)

(** {6 Extracting MetheneMethineDiMethyl from Grouping_polyfragment.} *)

(* No Extraction from MetheneMethineDiMethyl 0. *)

(** {6 Extracting MethineDiMethyl from Grouping_polyfragment.} *)

(* No Extraction from MethineDiMethyl 0. *)

(** {6 Extracting MethineEthylMethyl from Grouping_polyfragment.} *)

(* No Extraction from MethineEthylMethyl 0. *)

(** {6 Extracting MethinolMethyl from Grouping_polyfragment.} *)

(* No Extraction from MethinolMethyl 0. *)

(** {6 Extracting TriMetheneGuanidinium from Grouping_polyfragment.} *)

(* No Extraction from TriMetheneGuanidinium 0. *)

(** {6 Extracting TriMethineTetraMethyl from Grouping_polyfragment.} *)

(* No Extraction from TriMethineTetraMethyl 0. *)

(** {6 Querying.} *)

(** {6 Querying DiMethineTriMethyl in Grouping_polyfragment.} *)

(* No Query from DiMethineTriMethyl 0. *)

(** {6 Querying Ethcaracidmethyllamine in Grouping_polyfragment.} *)

(* No Query from Ethcaracidmethyllamine 0. *)

(** {6 Querying Ethcaracidmethylramine in Grouping_polyfragment.} *)

(* No Query from Ethcaracidmethylramine 0. *)

(** {6 Querying Ethineacidlamine in Grouping_polyfragment.} *)

(* No Query from Ethineacidlamine 0. *)

(** {6 Querying Ethineacidramine in Grouping_polyfragment.} *)

(* No Query from Ethineacidramine 0. *)

(** {6 Querying Guanidine in Grouping_polyfragment.} *)

(* No Query from Guanidine 0. *)

(** {6 Querying Guanidinium in Grouping_polyfragment.} *)

(* No Query from Guanidinium 0. *)

(** {6 Querying MetheneMethineDiMethyl in Grouping_polyfragment.} *)

(* No Query from MetheneMethineDiMethyl 0. *)

(** {6 Querying MethineDiMethyl in Grouping_polyfragment.} *)

(* No Query from MethineDiMethyl 0. *)

(** {6 Querying MethineEthylMethyl in Grouping_polyfragment.} *)

(* No Query from MethineEthylMethyl 0. *)

(** {6 Querying MethinolMethyl in Grouping_polyfragment.} *)

(* No Query from MethinolMethyl 0. *)

(** {6 Querying TriMetheneGuanidinium in Grouping_polyfragment.} *)

(* No Query from TriMetheneGuanidinium 0. *)

(** {6 Querying TriMethineTetraMethyl in Grouping_polyfragment.} *)

(* No Query from TriMethineTetraMethyl 0. *)

(** {6 Upgrading from DiMethineTriMethyl to Grouping_polyfragment.} *)

let dimethinetrimethyl = Gps_t.DiMethineTriMethyl;;

(** {6 Upgrading from Ethcaracidmethyllamine to Grouping_polyfragment.} *)

let ethcaracidmethyllamine = Gps_t.Ethcaracidmethyllamine;;

(** {6 Upgrading from Ethcaracidmethylramine to Grouping_polyfragment.} *)

let ethcaracidmethylramine = Gps_t.Ethcaracidmethylramine;;

(** {6 Upgrading from Ethineacidlamine to Grouping_polyfragment.} *)

let ethineacidlamine = Gps_t.Ethineacidlamine;;

(** {6 Upgrading from Ethineacidramine to Grouping_polyfragment.} *)

let ethineacidramine = Gps_t.Ethineacidramine;;

(** {6 Upgrading from Guanidine to Grouping_polyfragment.} *)

let guanidine = Gps_t.Guanidine;;

(** {6 Upgrading from Guanidinium to Grouping_polyfragment.} *)

let guanidinium = Gps_t.Guanidinium;;

(** {6 Upgrading from MetheneMethineDiMethyl to Grouping_polyfragment.} *)

let methenemethinedimethyl = Gps_t.MetheneMethineDiMethyl;;

(** {6 Upgrading from MethineDiMethyl to Grouping_polyfragment.} *)

let methinedimethyl = Gps_t.MethineDiMethyl;;

(** {6 Upgrading from MethineEthylMethyl to Grouping_polyfragment.} *)

let methineethylmethyl = Gps_t.MethineEthylMethyl;;

(** {6 Upgrading from MethinolMethyl to Grouping_polyfragment.} *)

let methinolmethyl = Gps_t.MethinolMethyl;;

(** {6 Upgrading from TriMetheneGuanidinium to Grouping_polyfragment.} *)

let trimetheneguanidinium = Gps_t.TriMetheneGuanidinium;;

(** {6 Upgrading from TriMethineTetraMethyl to Grouping_polyfragment.} *)

let trimethinetetramethyl = Gps_t.TriMethineTetraMethyl;;

(** created by ./do_entitysum_symbol_v_ml.sh grouping_polyfragment 12 January 2011. *)

