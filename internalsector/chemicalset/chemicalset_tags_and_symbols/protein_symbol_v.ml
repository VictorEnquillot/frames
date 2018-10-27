(** {3 A Symbol for a Protein.} *)

let nam_mod = "Protein_symbol_v";;

(** {6 Modules.} *)

module Prs_t = Protein_symbol_t

(** {6 Displaying.} *)

let name = function
  | Prs_t.Acg -> Format.sprintf "%s" "Acg"
  | Prs_t.Adh -> Format.sprintf "%s" "Adh"
  | Prs_t.Agagag -> Format.sprintf "%s" "Agagag"
  | Prs_t.Agc -> Format.sprintf "%s" "Agc"
  | Prs_t.Agg -> Format.sprintf "%s" "Agg"
  | Prs_t.Agp -> Format.sprintf "%s" "Agp"
  | Prs_t.Gac -> Format.sprintf "%s" "Gac"
  | Prs_t.Gap -> Format.sprintf "%s" "Gap"
  | Prs_t.Ggg -> Format.sprintf "%s" "Ggg"
  | Prs_t.Ggacgg -> Format.sprintf "%s" "Ggacgg"
  | Prs_t.Ggaggg -> Format.sprintf "%s" "Ggaggg"
  | Prs_t.Gagaga -> Format.sprintf "%s" "Gagaga"
  | Prs_t.Mhb -> Format.sprintf "%s" "Mhb"
  | Prs_t.Pac -> Format.sprintf "%s" "Pac"
  | Prs_t.Pag -> Format.sprintf "%s" "Pag"
  | Prs_t.Pgk -> Format.sprintf "%s" "Pgk"
  | Prs_t.Pti -> Format.sprintf "%s" "Pti"
  | Prs_t.Sac -> Format.sprintf "%s" "Sac"
  | Prs_t.Tab -> Format.sprintf "%s" "Tab"
  | Prs_t.Try -> Format.sprintf "%s" "Try"
  | Prs_t.String str -> Format.sprintf "%s" str
;;

let print ppf = function
  | Prs_t.Acg -> Format.fprintf ppf "%s" "Acg"
  | Prs_t.Adh -> Format.fprintf ppf "%s" "Adh"
  | Prs_t.Agagag -> Format.fprintf ppf "%s" "Agagag"
  | Prs_t.Agc -> Format.fprintf ppf "%s" "Agc"
  | Prs_t.Agg -> Format.fprintf ppf "%s" "Agg"
  | Prs_t.Agp -> Format.fprintf ppf "%s" "Agp"
  | Prs_t.Gac -> Format.fprintf ppf "%s" "Gac"
  | Prs_t.Gap -> Format.fprintf ppf "%s" "Gap"
  | Prs_t.Ggg -> Format.fprintf ppf "%s" "Ggg"
  | Prs_t.Ggacgg -> Format.fprintf ppf "%s" "Ggacgg"
  | Prs_t.Ggaggg -> Format.fprintf ppf "%s" "Ggaggg"
  | Prs_t.Gagaga -> Format.fprintf ppf "%s" "Gagaga"
  | Prs_t.Mhb -> Format.fprintf ppf "%s" "Mhb"
  | Prs_t.Pac -> Format.fprintf ppf "%s" "Pac"
  | Prs_t.Pag -> Format.fprintf ppf "%s" "Pag"
  | Prs_t.Pgk -> Format.fprintf ppf "%s" "Pgk"
  | Prs_t.Pti -> Format.fprintf ppf "%s" "Pti"
  | Prs_t.Sac -> Format.fprintf ppf "%s" "Sac"
  | Prs_t.Tab -> Format.fprintf ppf "%s" "Tab"
  | Prs_t.Try -> Format.fprintf ppf "%s" "Try"
  | Prs_t.String str -> Format.fprintf ppf "%s" str
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found protein_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Acg from Protein.} *)

(* No Extraction from Acg 0. *)

(** {6 Extracting Adh from Protein.} *)

(* No Extraction from Adh 0. *)

(** {6 Extracting Agagag from Protein.} *)

(* No Extraction from Agagag 0. *)

(** {6 Extracting Agc from Protein.} *)

(* No Extraction from Agc 0. *)

(** {6 Extracting Agg from Protein.} *)

(* No Extraction from Agg 0. *)

(** {6 Extracting Agp from Protein.} *)

(* No Extraction from Agp 0. *)

(** {6 Extracting Gac from Protein.} *)

(* No Extraction from Gac 0. *)

(** {6 Extracting Gap from Protein.} *)

(* No Extraction from Gap 0. *)

(** {6 Extracting Ggg from Protein.} *)

(* No Extraction from Ggg 0. *)

(** {6 Extracting Ggacgg from Protein.} *)

(* No Extraction from Ggacgg 0. *)

(** {6 Extracting Ggaggg from Protein.} *)

(* No Extraction from Ggaggg 0. *)

(** {6 Extracting Gagaga from Protein.} *)

(* No Extraction from Gagaga 0. *)

(** {6 Extracting Mhb from Protein.} *)

(* No Extraction from Mhb 0. *)

(** {6 Extracting Pac from Protein.} *)

(* No Extraction from Pac 0. *)

(** {6 Extracting Pag from Protein.} *)

(* No Extraction from Pag 0. *)

(** {6 Extracting Pgk from Protein.} *)

(* No Extraction from Pgk 0. *)

(** {6 Extracting Pti from Protein.} *)

(* No Extraction from Pti 0. *)

(** {6 Extracting Sac from Protein.} *)

(* No Extraction from Sac 0. *)

(** {6 Extracting Tab from Protein.} *)

(* No Extraction from Tab 0. *)

(** {6 Extracting Try from Protein.} *)

(* No Extraction from Try 0. *)

(** {6 Extracting String from Protein.} *)

let protein_string_off_protein_symbol = function
  | Prs_t.String s -> s
  | s ->  print_fatal_error
      "string_symbol_off_protein_symbol"
      "String_symbol" (name s)
;;

(** {6 Querying.} *)

(** {6 Querying Acg in Protein.} *)

(* No Query from Acg 0. *)

(** {6 Querying Adh in Protein.} *)

(* No Query from Adh 0. *)

(** {6 Querying Agagag in Protein.} *)

(* No Query from Agagag 0. *)

(** {6 Querying Agc in Protein.} *)

(* No Query from Agc 0. *)

(** {6 Querying Agg in Protein.} *)

(* No Query from Agg 0. *)

(** {6 Querying Agp in Protein.} *)

(* No Query from Agp 0. *)

(** {6 Querying Gac in Protein.} *)

(* No Query from Gac 0. *)

(** {6 Querying Gap in Protein.} *)

(* No Query from Gap 0. *)

(** {6 Querying Ggg in Protein.} *)

(* No Query from Ggg 0. *)

(** {6 Querying Ggacgg in Protein.} *)

(* No Query from Ggacgg 0. *)

(** {6 Querying Ggaggg in Protein.} *)

(* No Query from Ggaggg 0. *)

(** {6 Querying Gagaga in Protein.} *)

(* No Query from Gagaga 0. *)

(** {6 Querying Mhb in Protein.} *)

(* No Query from Mhb 0. *)

(** {6 Querying Pac in Protein.} *)

(* No Query from Pac 0. *)

(** {6 Querying Pag in Protein.} *)

(* No Query from Pag 0. *)

(** {6 Querying Pgk in Protein.} *)

(* No Query from Pgk 0. *)

(** {6 Querying Pti in Protein.} *)

(* No Query from Pti 0. *)

(** {6 Querying Sac in Protein.} *)

(* No Query from Sac 0. *)

(** {6 Querying Tab in Protein.} *)

(* No Query from Tab 0. *)

(** {6 Querying Try in Protein.} *)

(* No Query from Try 0. *)

(** {6 Querying String in Protein.} *)

let is_protein_string_off_protein_symbol = function
  | Prs_t.String _ -> true
  | _ -> false
;;

(** {6 Upgrading from Acg to Protein.} *)

let acg = Prs_t.Acg;;

(** {6 Upgrading from Adh to Protein.} *)

let adh = Prs_t.Adh;;

(** {6 Upgrading from Agagag to Protein.} *)

let agagag = Prs_t.Agagag;;

(** {6 Upgrading from Agc to Protein.} *)

let agc = Prs_t.Agc;;

(** {6 Upgrading from Agg to Protein.} *)

let agg = Prs_t.Agg;;

(** {6 Upgrading from Agp to Protein.} *)

let agp = Prs_t.Agp;;

(** {6 Upgrading from Gac to Protein.} *)

let gac = Prs_t.Gac;;

(** {6 Upgrading from Gap to Protein.} *)

let gap = Prs_t.Gap;;

(** {6 Upgrading from Ggg to Protein.} *)

let ggg = Prs_t.Ggg;;

(** {6 Upgrading from Ggacgg to Protein.} *)

let ggacgg = Prs_t.Ggacgg;;

(** {6 Upgrading from Ggaggg to Protein.} *)

let ggaggg = Prs_t.Ggaggg;;

(** {6 Upgrading from Gagaga to Protein.} *)

let gagaga = Prs_t.Gagaga;;

(** {6 Upgrading from Mhb to Protein.} *)

let mhb = Prs_t.Mhb;;

(** {6 Upgrading from Pac to Protein.} *)

let pac = Prs_t.Pac;;

(** {6 Upgrading from Pag to Protein.} *)

let pag = Prs_t.Pag;;

(** {6 Upgrading from Pgk to Protein.} *)

let pgk = Prs_t.Pgk;;

(** {6 Upgrading from Pti to Protein.} *)

let pti = Prs_t.Pti;;

(** {6 Upgrading from Sac to Protein.} *)

let sac = Prs_t.Sac;;

(** {6 Upgrading from Tab to Protein.} *)

let tab = Prs_t.Tab;;

(** {6 Upgrading from Try to Protein.} *)

let tr_ = Prs_t.Try;;

(** {6 Upgrading from String to Protein.} *)

let make s =
  Prs_t.String s
;;

let protein_symbol_of_protein_string s =
  Prs_t.String s
;;

(** created by ./do_entitysum_symbol_v_ml.sh protein 12 January 2011. *)

