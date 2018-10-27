(** {3 A Symbol for a Polypeptide_regular.} *)

let nam_mod = "Polypeptide_regular_symbol_v";;

(** {6 Modules.} *)

module Plrs_t = Polypeptide_regular_symbol_t

(** {6 Displaying.} *)

let name = function
  | Plrs_t.Acg -> Format.sprintf "%s" "Acg"
  | Plrs_t.Adh -> Format.sprintf "%s" "Adh"
  | Plrs_t.Agagag -> Format.sprintf "%s" "Agagag"
  | Plrs_t.Agc -> Format.sprintf "%s" "Agc"
  | Plrs_t.Agg -> Format.sprintf "%s" "Agg"
  | Plrs_t.Agp -> Format.sprintf "%s" "Agp"
  | Plrs_t.Gac -> Format.sprintf "%s" "Gac"
  | Plrs_t.Gap -> Format.sprintf "%s" "Gap"
  | Plrs_t.Ggg -> Format.sprintf "%s" "Ggg"
  | Plrs_t.Ggacgg -> Format.sprintf "%s" "Ggacgg"
  | Plrs_t.Ggaggg -> Format.sprintf "%s" "Ggaggg"
  | Plrs_t.Gagaga -> Format.sprintf "%s" "Gagaga"
  | Plrs_t.Mhb -> Format.sprintf "%s" "Mhb"
  | Plrs_t.Pac -> Format.sprintf "%s" "Pac"
  | Plrs_t.Pag -> Format.sprintf "%s" "Pag"
  | Plrs_t.Pgk -> Format.sprintf "%s" "Pgk"
  | Plrs_t.Pti -> Format.sprintf "%s" "Pti"
  | Plrs_t.Sac -> Format.sprintf "%s" "Sac"
  | Plrs_t.Tab -> Format.sprintf "%s" "Tab"
  | Plrs_t.Try -> Format.sprintf "%s" "Try"
  | Plrs_t.String str -> Format.sprintf "%s" str
;;

let print ppf = function
  | Plrs_t.Acg -> Format.fprintf ppf "%s" "Acg"
  | Plrs_t.Adh -> Format.fprintf ppf "%s" "Adh"
  | Plrs_t.Agagag -> Format.fprintf ppf "%s" "Agagag"
  | Plrs_t.Agc -> Format.fprintf ppf "%s" "Agc"
  | Plrs_t.Agg -> Format.fprintf ppf "%s" "Agg"
  | Plrs_t.Agp -> Format.fprintf ppf "%s" "Agp"
  | Plrs_t.Gac -> Format.fprintf ppf "%s" "Gac"
  | Plrs_t.Gap -> Format.fprintf ppf "%s" "Gap"
  | Plrs_t.Ggg -> Format.fprintf ppf "%s" "Ggg"
  | Plrs_t.Ggacgg -> Format.fprintf ppf "%s" "Ggacgg"
  | Plrs_t.Ggaggg -> Format.fprintf ppf "%s" "Ggaggg"
  | Plrs_t.Gagaga -> Format.fprintf ppf "%s" "Gagaga"
  | Plrs_t.Mhb -> Format.fprintf ppf "%s" "Mhb"
  | Plrs_t.Pac -> Format.fprintf ppf "%s" "Pac"
  | Plrs_t.Pag -> Format.fprintf ppf "%s" "Pag"
  | Plrs_t.Pgk -> Format.fprintf ppf "%s" "Pgk"
  | Plrs_t.Pti -> Format.fprintf ppf "%s" "Pti"
  | Plrs_t.Sac -> Format.fprintf ppf "%s" "Sac"
  | Plrs_t.Tab -> Format.fprintf ppf "%s" "Tab"
  | Plrs_t.Try -> Format.fprintf ppf "%s" "Try"
  | Plrs_t.String str -> Format.fprintf ppf "%s" str
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found polypeptide_regular_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Acg from Polypeptide_regular.} *)

(* No Extraction from Acg 0. *)

(** {6 Extracting Adh from Polypeptide_regular.} *)

(* No Extraction from Adh 0. *)

(** {6 Extracting Agagag from Polypeptide_regular.} *)

(* No Extraction from Agagag 0. *)

(** {6 Extracting Agc from Polypeptide_regular.} *)

(* No Extraction from Agc 0. *)

(** {6 Extracting Agg from Polypeptide_regular.} *)

(* No Extraction from Agg 0. *)

(** {6 Extracting Agp from Polypeptide_regular.} *)

(* No Extraction from Agp 0. *)

(** {6 Extracting Gac from Polypeptide_regular.} *)

(* No Extraction from Gac 0. *)

(** {6 Extracting Gap from Polypeptide_regular.} *)

(* No Extraction from Gap 0. *)

(** {6 Extracting Ggg from Polypeptide_regular.} *)

(* No Extraction from Ggg 0. *)

(** {6 Extracting Ggacgg from Polypeptide_regular.} *)

(* No Extraction from Ggacgg 0. *)

(** {6 Extracting Ggaggg from Polypeptide_regular.} *)

(* No Extraction from Ggaggg 0. *)

(** {6 Extracting Gagaga from Polypeptide_regular.} *)

(* No Extraction from Gagaga 0. *)

(** {6 Extracting Mhb from Polypeptide_regular.} *)

(* No Extraction from Mhb 0. *)

(** {6 Extracting Pac from Polypeptide_regular.} *)

(* No Extraction from Pac 0. *)

(** {6 Extracting Pag from Polypeptide_regular.} *)

(* No Extraction from Pag 0. *)

(** {6 Extracting Pgk from Polypeptide_regular.} *)

(* No Extraction from Pgk 0. *)

(** {6 Extracting Pti from Polypeptide_regular.} *)

(* No Extraction from Pti 0. *)

(** {6 Extracting Sac from Polypeptide_regular.} *)

(* No Extraction from Sac 0. *)

(** {6 Extracting Tab from Polypeptide_regular.} *)

(* No Extraction from Tab 0. *)

(** {6 Extracting Try from Polypeptide_regular.} *)

(* No Extraction from Try 0. *)

(** {6 Extracting String from Polypeptide_regular.} *)

let polypeptide_regular_string_off_polypeptide_regular_symbol = function
  | Plrs_t.String s -> s
  | s ->  print_fatal_error
      "string_symbol_off_polypeptide_regular_symbol"
      "String_symbol" (name s)
;;

(** {6 Querying.} *)

(** {6 Querying Acg in Polypeptide_regular.} *)

(* No Query from Acg 0. *)

(** {6 Querying Adh in Polypeptide_regular.} *)

(* No Query from Adh 0. *)

(** {6 Querying Agagag in Polypeptide_regular.} *)

(* No Query from Agagag 0. *)

(** {6 Querying Agc in Polypeptide_regular.} *)

(* No Query from Agc 0. *)

(** {6 Querying Agg in Polypeptide_regular.} *)

(* No Query from Agg 0. *)

(** {6 Querying Agp in Polypeptide_regular.} *)

(* No Query from Agp 0. *)

(** {6 Querying Gac in Polypeptide_regular.} *)

(* No Query from Gac 0. *)

(** {6 Querying Gap in Polypeptide_regular.} *)

(* No Query from Gap 0. *)

(** {6 Querying Ggg in Polypeptide_regular.} *)

(* No Query from Ggg 0. *)

(** {6 Querying Ggacgg in Polypeptide_regular.} *)

(* No Query from Ggacgg 0. *)

(** {6 Querying Ggaggg in Polypeptide_regular.} *)

(* No Query from Ggaggg 0. *)

(** {6 Querying Gagaga in Polypeptide_regular.} *)

(* No Query from Gagaga 0. *)

(** {6 Querying Mhb in Polypeptide_regular.} *)

(* No Query from Mhb 0. *)

(** {6 Querying Pac in Polypeptide_regular.} *)

(* No Query from Pac 0. *)

(** {6 Querying Pag in Polypeptide_regular.} *)

(* No Query from Pag 0. *)

(** {6 Querying Pgk in Polypeptide_regular.} *)

(* No Query from Pgk 0. *)

(** {6 Querying Pti in Polypeptide_regular.} *)

(* No Query from Pti 0. *)

(** {6 Querying Sac in Polypeptide_regular.} *)

(* No Query from Sac 0. *)

(** {6 Querying Tab in Polypeptide_regular.} *)

(* No Query from Tab 0. *)

(** {6 Querying Try in Polypeptide_regular.} *)

(* No Query from Try 0. *)

(** {6 Querying String in Polypeptide_regular.} *)

let is_polypeptide_regular_string_off_polypeptide_regular_symbol = function
  | Plrs_t.String _ -> true
  | _ -> false
;;

(** {6 Upgrading from Acg to Polypeptide_regular.} *)

let acg = Plrs_t.Acg;;

(** {6 Upgrading from Adh to Polypeptide_regular.} *)

let adh = Plrs_t.Adh;;

(** {6 Upgrading from Agagag to Polypeptide_regular.} *)

let agagag = Plrs_t.Agagag;;

(** {6 Upgrading from Agc to Polypeptide_regular.} *)

let agc = Plrs_t.Agc;;

(** {6 Upgrading from Agg to Polypeptide_regular.} *)

let agg = Plrs_t.Agg;;

(** {6 Upgrading from Agp to Polypeptide_regular.} *)

let agp = Plrs_t.Agp;;

(** {6 Upgrading from Gac to Polypeptide_regular.} *)

let gac = Plrs_t.Gac;;

(** {6 Upgrading from Gap to Polypeptide_regular.} *)

let gap = Plrs_t.Gap;;

(** {6 Upgrading from Ggg to Polypeptide_regular.} *)

let ggg = Plrs_t.Ggg;;

(** {6 Upgrading from Ggacgg to Polypeptide_regular.} *)

let ggacgg = Plrs_t.Ggacgg;;

(** {6 Upgrading from Ggaggg to Polypeptide_regular.} *)

let ggaggg = Plrs_t.Ggaggg;;

(** {6 Upgrading from Gagaga to Polypeptide_regular.} *)

let gagaga = Plrs_t.Gagaga;;

(** {6 Upgrading from Mhb to Polypeptide_regular.} *)

let mhb = Plrs_t.Mhb;;

(** {6 Upgrading from Pac to Polypeptide_regular.} *)

let pac = Plrs_t.Pac;;

(** {6 Upgrading from Pag to Polypeptide_regular.} *)

let pag = Plrs_t.Pag;;

(** {6 Upgrading from Pgk to Polypeptide_regular.} *)

let pgk = Plrs_t.Pgk;;

(** {6 Upgrading from Pti to Polypeptide_regular.} *)

let pti = Plrs_t.Pti;;

(** {6 Upgrading from Sac to Polypeptide_regular.} *)

let sac = Plrs_t.Sac;;

(** {6 Upgrading from Tab to Polypeptide_regular.} *)

let tab = Plrs_t.Tab;;

(** {6 Upgrading from Try to Polypeptide_regular.} *)

let tr_ = Plrs_t.Try;;

(** {6 Upgrading from String to Polypeptide_regular.} *)

let make s =
  Plrs_t.String s
;;

let polypeptide_regular_symbol_of_polypeptide_regular_string s =
  Plrs_t.String s
;;

(** created by ./do_entitysum_symbol_v_ml.sh polypeptide_regular 12 January 2011. *)

