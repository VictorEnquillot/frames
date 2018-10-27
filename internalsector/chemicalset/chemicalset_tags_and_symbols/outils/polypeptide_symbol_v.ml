(** {3 A Symbol for a Polypeptide.} *)

let nam_cod = "polypeptide_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Prs_v = Polypeptide_regular_symbol_v
module Pps_v = Polyproline_symbol_v
module Pgs_v = Polyglycine_symbol_v


let name = function
  | Pds_v smb_prg ->
      Prs_v.name smb_prg
  | Pds_v smb_ppn ->
      Pps_v.name smb_ppn
  | Pds_v smb_pgn ->
      Pgs_v.name smb_pgn
;;


let print ppf = function
  | Pds_v smb_prg ->
      Prs_v.print ppf smb_prg
  | Pds_v smb_ppn ->
      Pps_v.print ppf smb_ppn
  | Pds_v smb_pgn ->
      Pgs_v.print ppf smb_pgn
;;


(** {6 Extracting.} *)

let polypeptide_regular_symbol_off_polypeptide_symbol = function
  | Pds_v smb_prg -> smb_prg
  | s -> Erm_v.print_fatal_error nam_cod
     "polypeptide_regular_symbol_off_polypeptide_symbol"
     "Polypeptide_regular_symbol"
     (name s)
    "check"
;;

let polyproline_symbol_off_polypeptide_symbol = function
  | Pds_v smb_ppn -> smb_ppn
  | s -> Erm_v.print_fatal_error nam_cod
     "polyproline_symbol_off_polypeptide_symbol"
     "Polyproline_symbol"
     (name s)
    "check"
;;

let polyglycine_symbol_off_polypeptide_symbol = function
  | Pds_v smb_pgn -> smb_pgn
  | s -> Erm_v.print_fatal_error nam_cod
     "polyglycine_symbol_off_polypeptide_symbol"
     "Polyglycine_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_polypeptide_regular_symbol_off_polypeptide_symbol = function
  | Polypeptide_symbol_t.Polypeptide_regular_symbol _ -> true
  | _ -> false
;;

let is_polyproline_symbol_off_polypeptide_symbol = function
  | Polypeptide_symbol_t.Polyproline_symbol _ -> true
  | _ -> false
;;

let is_polyglycine_symbol_off_polypeptide_symbol = function
  | Polypeptide_symbol_t.Polyglycine_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let polypeptide_symbol_of_polypeptide_regular_symbol smb_prg =
Pds_v.polypeptide_regular_symbol smb_prg
;;

let polypeptide_regular_symbol_of_polypeptide_regular_symbol smb_prg =
Prs_v.polypeptide_regular_symbol smb_prg
;;

let polypeptide_regular_symbol_of_polypeptide_regular_symbol smb_prg =
Prs_v.polypeptide_regular_symbol smb_prg
;;

let polypeptide_regular_symbol_of_polypeptide_regular_symbol smb_prg =
Prs_v.polypeptide_regular_symbol smb_prg
;;

let polypeptide_regular_symbol_of_polypeptide_regular_symbol smb_prg =
Prs_v.polypeptide_regular_symbol smb_prg
;;

let polypeptide_regular_symbol_of_polypeptide_regular_symbol smb_prg =
Prs_v.polypeptide_regular_symbol smb_prg
;;

let polypeptide_regular_symbol_of_polypeptide_regular_symbol smb_prg =
Prs_v.polypeptide_regular_symbol smb_prg
;;

let polypeptide_regular_symbol_of_polypeptide_regular_symbol smb_prg =
Prs_v.polypeptide_regular_symbol smb_prg
;;

let polypeptide_regular_symbol_of_polypeptide_regular_symbol smb_prg =
Prs_v.polypeptide_regular_symbol smb_prg
;;

let polypeptide_regular_symbol_of_polypeptide_regular_symbol smb_prg =
Prs_v.polypeptide_regular_symbol smb_prg
;;

let polypeptide_regular_symbol_of_polypeptide_regular_symbol smb_prg =
Prs_v.polypeptide_regular_symbol smb_prg
;;

let polypeptide_regular_symbol_of_polypeptide_regular_symbol smb_prg =
Prs_v.polypeptide_regular_symbol smb_prg
;;

let polypeptide_regular_symbol_of_polypeptide_regular_symbol smb_prg =
Prs_v.polypeptide_regular_symbol smb_prg
;;

let polypeptide_regular_symbol_of_polypeptide_regular_symbol smb_prg =
Prs_v.polypeptide_regular_symbol smb_prg
;;

let polypeptide_regular_symbol_of_polypeptide_regular_symbol smb_prg =
Prs_v.polypeptide_regular_symbol smb_prg
;;

let polypeptide_regular_symbol_of_polypeptide_regular_symbol smb_prg =
Prs_v.polypeptide_regular_symbol smb_prg
;;

let polypeptide_regular_symbol_of_polypeptide_regular_symbol smb_prg =
Prs_v.polypeptide_regular_symbol smb_prg
;;

let polypeptide_regular_symbol_of_polypeptide_regular_symbol smb_prg =
Prs_v.polypeptide_regular_symbol smb_prg
;;

let polypeptide_regular_symbol_of_polypeptide_regular_symbol smb_prg =
Prs_v.polypeptide_regular_symbol smb_prg
;;

let polypeptide_regular_symbol_of_polypeptide_regular_symbol smb_prg =
Prs_v.polypeptide_regular_symbol smb_prg
;;

let polypeptide_regular_symbol_of_polypeptide_regular_symbol smb_prg =
Prs_v.polypeptide_regular_symbol smb_prg
;;


let polypeptide_symbol_of_polyproline_symbol smb_ppn =
Pds_v.polyproline_symbol smb_ppn
;;

let polypeptide_symbol_of_polyglycine_symbol smb_pgn =
Pds_v.polyglycine_symbol smb_pgn
;;



(** created by ./generator polypeptide v symbol at 11:8 26 Apr 2011. *)



