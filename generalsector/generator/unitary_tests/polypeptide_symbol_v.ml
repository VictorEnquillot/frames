(** {3 A Symbol for a Polypeptide.} *)

let nam_cod = "polypeptide_symbol_v.ml";;


(** {6 Modules.} *)

module Prs_v = Polypeptide_regular_symbol_v
module Pgs_v = Polyglycine_symbol_v
module Pps_v = Polyproline_symbol_v

module Pgs_t = Polyglycine_symbol_t
module Pps_t = Polyproline_symbol_t
module Prs_t = Polypeptide_regular_symbol_t
module Pds_t = Polypeptide_symbol_t



(** {6 Naming.} *)

let name = function
  | Pds_t.Polypeptide_regular_symbol smb_prg ->
      Prs_v.name smb_prg
  | Pds_t.Polyproline_symbol smb_ppn ->
      Pps_v.name smb_ppn
  | Pds_t.Polyglycine_symbol smb_pgn ->
      Pgs_v.name smb_pgn
;;


(** {6 Printing.} *)

let print ppf = function
  | Pds_t.Polypeptide_regular_symbol smb_prg ->
      Prs_v.print ppf smb_prg
  | Pds_t.Polyproline_symbol smb_ppn ->
      Pps_v.print ppf smb_ppn
  | Pds_t.Polyglycine_symbol smb_pgn ->
      Pgs_v.print ppf smb_pgn
;;


(** {6 Extracting.} *)


let polypeptide_regular_symbol_off_polypeptide_symbol = function
  | Pds_t.Polypeptide_regular_symbol smb_prg -> smb_prg
  | s -> Erm_v.print_fatal_error nam_cod
     "polypeptide_regular_symbol_off_polypeptide_symbol"
     "Polypeptide_regular_symbol"
     (name s)
    "check"
;;

let polyproline_symbol_off_polypeptide_symbol = function
  | Pds_t.Polyproline_symbol smb_ppn -> smb_ppn
  | s -> Erm_v.print_fatal_error nam_cod
     "polyproline_symbol_off_polypeptide_symbol"
     "Polyproline_symbol"
     (name s)
    "check"
;;

let polyglycine_symbol_off_polypeptide_symbol = function
  | Pds_t.Polyglycine_symbol smb_pgn -> smb_pgn
  | s -> Erm_v.print_fatal_error nam_cod
     "polyglycine_symbol_off_polypeptide_symbol"
     "Polyglycine_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)


let is_polypeptide_regular_symbol_off_polypeptide_symbol = function
  | Pds_t.Polypeptide_regular_symbol _ -> true
  | _ -> false
;;

let is_polyproline_symbol_off_polypeptide_symbol = function
  | Pds_t.Polyproline_symbol _ -> true
  | _ -> false
;;

let is_polyglycine_symbol_off_polypeptide_symbol = function
  | Pds_t.Polyglycine_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)


let polypeptide_symbol_of_polypeptide_regular_symbol smb_prg =
Pds_t.Polypeptide_regular_symbol smb_prg
;;

let acg = polypeptide_symbol_of_polypeptide_regular_symbol Prs_t.Acg;;

let adh = polypeptide_symbol_of_polypeptide_regular_symbol Prs_t.Adh;;

let agagag = polypeptide_symbol_of_polypeptide_regular_symbol Prs_t.Agagag;;

let agc = polypeptide_symbol_of_polypeptide_regular_symbol Prs_t.Agc;;

let agg = polypeptide_symbol_of_polypeptide_regular_symbol Prs_t.Agg;;

let agp = polypeptide_symbol_of_polypeptide_regular_symbol Prs_t.Agp;;

let gac = polypeptide_symbol_of_polypeptide_regular_symbol Prs_t.Gac;;

let gap = polypeptide_symbol_of_polypeptide_regular_symbol Prs_t.Gap;;

let ggg = polypeptide_symbol_of_polypeptide_regular_symbol Prs_t.Ggg;;

let ggacgg = polypeptide_symbol_of_polypeptide_regular_symbol Prs_t.Ggacgg;;

let ggaggg = polypeptide_symbol_of_polypeptide_regular_symbol Prs_t.Ggaggg;;

let gagaga = polypeptide_symbol_of_polypeptide_regular_symbol Prs_t.Gagaga;;

let mhb = polypeptide_symbol_of_polypeptide_regular_symbol Prs_t.Mhb;;

let pac = polypeptide_symbol_of_polypeptide_regular_symbol Prs_t.Pac;;

let pag = polypeptide_symbol_of_polypeptide_regular_symbol Prs_t.Pag;;

let pgk = polypeptide_symbol_of_polypeptide_regular_symbol Prs_t.Pgk;;

let pti = polypeptide_symbol_of_polypeptide_regular_symbol Prs_t.Pti;;

let sac = polypeptide_symbol_of_polypeptide_regular_symbol Prs_t.Sac;;

let tab = polypeptide_symbol_of_polypeptide_regular_symbol Prs_t.Tab;;

let try = polypeptide_symbol_of_polypeptide_regular_symbol Prs_t.Try;;


let polypeptide_symbol_of_polyproline_symbol smb_ppn =
Pds_t.Polyproline_symbol smb_ppn
;;

let polypeptide_symbol_of_polyglycine_symbol smb_pgn =
Pds_t.Polyglycine_symbol smb_pgn
;;



(** created by ./generator polypeptide v symbol at 18:46 11 May 2011. *)



