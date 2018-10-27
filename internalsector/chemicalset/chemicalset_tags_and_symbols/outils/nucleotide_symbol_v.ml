(** {3 A Symbol for a Nucleotide.} *)

let nam_cod = "nucleotide_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Ris_v = Ribonucleotide_symbol_v
module Des_v = Deoxyribonucleotide_symbol_v


let name = function
  | Nts_v smb_rie ->
      Ris_v.name smb_rie
  | Nts_v smb_dee ->
      Des_v.name smb_dee
;;


let print ppf = function
  | Nts_v smb_rie ->
      Ris_v.print ppf smb_rie
  | Nts_v smb_dee ->
      Des_v.print ppf smb_dee
;;


(** {6 Extracting.} *)

let ribonucleotide_symbol_off_nucleotide_symbol = function
  | Nts_v smb_rie -> smb_rie
  | s -> Erm_v.print_fatal_error nam_cod
     "ribonucleotide_symbol_off_nucleotide_symbol"
     "Ribonucleotide_symbol"
     (name s)
    "check"
;;

let ribonucleotide_purinic_symbol_off_nucleotide_symbol smb_nut =
  let smb_rie = ribonucleotide_symbol_off_nucleotide_symbol smb_nut in
    Ris_v_off_ribonucleotide_symbol smb_rie
;;

let ribonucleotide_pyrimidinic_symbol_off_nucleotide_symbol smb_nut =
  let smb_rie = ribonucleotide_symbol_off_nucleotide_symbol smb_nut in
    Ris_v_off_ribonucleotide_symbol smb_rie
;;

let deoxyribonucleotide_symbol_off_nucleotide_symbol = function
  | Nts_v smb_dee -> smb_dee
  | s -> Erm_v.print_fatal_error nam_cod
     "deoxyribonucleotide_symbol_off_nucleotide_symbol"
     "Deoxyribonucleotide_symbol"
     (name s)
    "check"
;;

let deoxyribonucleotide_purinic_symbol_off_nucleotide_symbol smb_nut =
  let smb_dee = deoxyribonucleotide_symbol_off_nucleotide_symbol smb_nut in
    Des_v_off_deoxyribonucleotide_symbol smb_dee
;;

let deoxyribonucleotide_pyrimidinic_symbol_off_nucleotide_symbol smb_nut =
  let smb_dee = deoxyribonucleotide_symbol_off_nucleotide_symbol smb_nut in
    Des_v_off_deoxyribonucleotide_symbol smb_dee
;;


(** {6 Querying.} *)

let is_ribonucleotide_symbol_off_nucleotide_symbol = function
  | Nucleotide_symbol_t.Ribonucleotide_symbol _ -> true
  | _ -> false
;;

let is_ribonucleotide_purinic_symbol_off_nucleotide_symbol smb_nut =
  if not (is_ribonucleotide_symbol_off_nucleotide_symbol smb_nut)
  then false
  else
    begin
  let smb_rie = ribonucleotide_symbol_off_nucleotide_symbol smb_nut in
      Ris_v.is_ribonucleotide_purinic_symbol_off_ribonucleotide_symbol smb_rie
    end
;;

let is_ribonucleotide_pyrimidinic_symbol_off_nucleotide_symbol smb_nut =
  if not (is_ribonucleotide_symbol_off_nucleotide_symbol smb_nut)
  then false
  else
    begin
  let smb_rie = ribonucleotide_symbol_off_nucleotide_symbol smb_nut in
      Ris_v.is_ribonucleotide_pyrimidinic_symbol_off_ribonucleotide_symbol smb_rie
    end
;;

let is_deoxyribonucleotide_symbol_off_nucleotide_symbol = function
  | Nucleotide_symbol_t.Deoxyribonucleotide_symbol _ -> true
  | _ -> false
;;

let is_deoxyribonucleotide_purinic_symbol_off_nucleotide_symbol smb_nut =
  if not (is_deoxyribonucleotide_symbol_off_nucleotide_symbol smb_nut)
  then false
  else
    begin
  let smb_dee = deoxyribonucleotide_symbol_off_nucleotide_symbol smb_nut in
      Des_v.is_deoxyribonucleotide_purinic_symbol_off_deoxyribonucleotide_symbol smb_dee
    end
;;

let is_deoxyribonucleotide_pyrimidinic_symbol_off_nucleotide_symbol smb_nut =
  if not (is_deoxyribonucleotide_symbol_off_nucleotide_symbol smb_nut)
  then false
  else
    begin
  let smb_dee = deoxyribonucleotide_symbol_off_nucleotide_symbol smb_nut in
      Des_v.is_deoxyribonucleotide_pyrimidinic_symbol_off_deoxyribonucleotide_symbol smb_dee
    end
;;


(** {6 Upgrading.} *)

let nucleotide_symbol_of_ribonucleotide_symbol smb_rie =
Nts_v.ribonucleotide_symbol smb_rie
;;

let ribonucleotide_symbol_of_ribonucleotide_purinic_symbol smb_rpu =
  let smb_rie = Ris_v.ribonucleotide_symbol_of_ribonucleotide_purinic_symbol smb_rpu in
nucleotide_symbol_of_ribonucleotide_symbol smb_rie
;;

let ribonucleotide_purinic_symbol_of_ribonucleotide_symbol smb_rie =
Rpus_v.ribonucleotide_symbol smb_rie
;;

let ribonucleotide_purinic_symbol_of_ribonucleotide_symbol smb_rie =
Rpus_v.ribonucleotide_symbol smb_rie
;;

let ribonucleotide_symbol_of_ribonucleotide_pyrimidinic_symbol smb_rip =
  let smb_rie = Ris_v.ribonucleotide_symbol_of_ribonucleotide_pyrimidinic_symbol smb_rip in
nucleotide_symbol_of_ribonucleotide_symbol smb_rie
;;

let ribonucleotide_pyrimidinic_symbol_of_ribonucleotide_symbol smb_rie =
Rps_v.ribonucleotide_symbol smb_rie
;;

let ribonucleotide_pyrimidinic_symbol_of_ribonucleotide_symbol smb_rie =
Rps_v.ribonucleotide_symbol smb_rie
;;

let nucleotide_symbol_of_deoxyribonucleotide_symbol smb_dee =
Nts_v.deoxyribonucleotide_symbol smb_dee
;;

let deoxyribonucleotide_symbol_of_deoxyribonucleotide_purinic_symbol smb_dpu =
  let smb_dee = Des_v.deoxyribonucleotide_symbol_of_deoxyribonucleotide_purinic_symbol smb_dpu in
nucleotide_symbol_of_deoxyribonucleotide_symbol smb_dee
;;

let deoxyribonucleotide_purinic_symbol_of_deoxyribonucleotide_symbol smb_dee =
Dpus_v.deoxyribonucleotide_symbol smb_dee
;;

let deoxyribonucleotide_purinic_symbol_of_deoxyribonucleotide_symbol smb_dee =
Dpus_v.deoxyribonucleotide_symbol smb_dee
;;

let deoxyribonucleotide_symbol_of_deoxyribonucleotide_pyrimidinic_symbol smb_dpy =
  let smb_dee = Des_v.deoxyribonucleotide_symbol_of_deoxyribonucleotide_pyrimidinic_symbol smb_dpy in
nucleotide_symbol_of_deoxyribonucleotide_symbol smb_dee
;;

let deoxyribonucleotide_pyrimidinic_symbol_of_deoxyribonucleotide_symbol smb_dee =
Dpys_v.deoxyribonucleotide_symbol smb_dee
;;

let deoxyribonucleotide_pyrimidinic_symbol_of_deoxyribonucleotide_symbol smb_dee =
Dpys_v.deoxyribonucleotide_symbol smb_dee
;;

let deoxyribonucleotide_pyrimidinic_symbol_of_deoxyribonucleotide_symbol smb_dee =
Dpys_v.deoxyribonucleotide_symbol smb_dee
;;



(** created by ./generator nucleotide v symbol at 11:8 26 Apr 2011. *)



