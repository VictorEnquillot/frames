(** {3 A Symbol for a Ribonucleotide.} *)

let nam_cod = "ribonucleotide_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Rpus_v = Ribonucleotide_purinic_symbol_v
module Rps_v = Ribonucleotide_pyrimidinic_symbol_v


let name = function
  | Ris_v smb_rpu ->
      Rpus_v.name smb_rpu
  | Ris_v smb_rip ->
      Rps_v.name smb_rip
;;


let print ppf = function
  | Ris_v smb_rpu ->
      Rpus_v.print ppf smb_rpu
  | Ris_v smb_rip ->
      Rps_v.print ppf smb_rip
;;


(** {6 Extracting.} *)

let ribonucleotide_purinic_symbol_off_ribonucleotide_symbol = function
  | Ris_v smb_rpu -> smb_rpu
  | s -> Erm_v.print_fatal_error nam_cod
     "ribonucleotide_purinic_symbol_off_ribonucleotide_symbol"
     "Ribonucleotide_purinic_symbol"
     (name s)
    "check"
;;

let ribonucleotide_pyrimidinic_symbol_off_ribonucleotide_symbol = function
  | Ris_v smb_rip -> smb_rip
  | s -> Erm_v.print_fatal_error nam_cod
     "ribonucleotide_pyrimidinic_symbol_off_ribonucleotide_symbol"
     "Ribonucleotide_pyrimidinic_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_ribonucleotide_purinic_symbol_off_ribonucleotide_symbol = function
  | Ribonucleotide_symbol_t.Ribonucleotide_purinic_symbol _ -> true
  | _ -> false
;;

let is_ribonucleotide_pyrimidinic_symbol_off_ribonucleotide_symbol = function
  | Ribonucleotide_symbol_t.Ribonucleotide_pyrimidinic_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let ribonucleotide_symbol_of_ribonucleotide_purinic_symbol smb_rpu =
Ris_v.ribonucleotide_purinic_symbol smb_rpu
;;

let ribonucleotide_purinic_symbol_of_ribonucleotide_purinic_symbol smb_rpu =
Rpus_v.ribonucleotide_purinic_symbol smb_rpu
;;

let ribonucleotide_purinic_symbol_of_ribonucleotide_purinic_symbol smb_rpu =
Rpus_v.ribonucleotide_purinic_symbol smb_rpu
;;

let ribonucleotide_symbol_of_ribonucleotide_pyrimidinic_symbol smb_rip =
Ris_v.ribonucleotide_pyrimidinic_symbol smb_rip
;;

let ribonucleotide_pyrimidinic_symbol_of_ribonucleotide_pyrimidinic_symbol smb_rip =
Rps_v.ribonucleotide_pyrimidinic_symbol smb_rip
;;

let ribonucleotide_pyrimidinic_symbol_of_ribonucleotide_pyrimidinic_symbol smb_rip =
Rps_v.ribonucleotide_pyrimidinic_symbol smb_rip
;;



(** created by ./generator ribonucleotide v symbol at 11:8 26 Apr 2011. *)



