(** {3 A Symbol for a Deoxyribonucleotide.} *)

let nam_cod = "deoxyribonucleotide_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Dpus_v = Deoxyribonucleotide_purinic_symbol_v
module Dpys_v = Deoxyribonucleotide_pyrimidinic_symbol_v


let name = function
  | Des_v smb_dpu ->
      Dpus_v.name smb_dpu
  | Des_v smb_dpy ->
      Dpys_v.name smb_dpy
;;


let print ppf = function
  | Des_v smb_dpu ->
      Dpus_v.print ppf smb_dpu
  | Des_v smb_dpy ->
      Dpys_v.print ppf smb_dpy
;;


(** {6 Extracting.} *)

let deoxyribonucleotide_purinic_symbol_off_deoxyribonucleotide_symbol = function
  | Des_v smb_dpu -> smb_dpu
  | s -> Erm_v.print_fatal_error nam_cod
     "deoxyribonucleotide_purinic_symbol_off_deoxyribonucleotide_symbol"
     "Deoxyribonucleotide_purinic_symbol"
     (name s)
    "check"
;;

let deoxyribonucleotide_pyrimidinic_symbol_off_deoxyribonucleotide_symbol = function
  | Des_v smb_dpy -> smb_dpy
  | s -> Erm_v.print_fatal_error nam_cod
     "deoxyribonucleotide_pyrimidinic_symbol_off_deoxyribonucleotide_symbol"
     "Deoxyribonucleotide_pyrimidinic_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_deoxyribonucleotide_purinic_symbol_off_deoxyribonucleotide_symbol = function
  | Deoxyribonucleotide_symbol_t.Deoxyribonucleotide_purinic_symbol _ -> true
  | _ -> false
;;

let is_deoxyribonucleotide_pyrimidinic_symbol_off_deoxyribonucleotide_symbol = function
  | Deoxyribonucleotide_symbol_t.Deoxyribonucleotide_pyrimidinic_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let deoxyribonucleotide_symbol_of_deoxyribonucleotide_purinic_symbol smb_dpu =
Des_v.deoxyribonucleotide_purinic_symbol smb_dpu
;;

let deoxyribonucleotide_purinic_symbol_of_deoxyribonucleotide_purinic_symbol smb_dpu =
Dpus_v.deoxyribonucleotide_purinic_symbol smb_dpu
;;

let deoxyribonucleotide_purinic_symbol_of_deoxyribonucleotide_purinic_symbol smb_dpu =
Dpus_v.deoxyribonucleotide_purinic_symbol smb_dpu
;;

let deoxyribonucleotide_symbol_of_deoxyribonucleotide_pyrimidinic_symbol smb_dpy =
Des_v.deoxyribonucleotide_pyrimidinic_symbol smb_dpy
;;

let deoxyribonucleotide_pyrimidinic_symbol_of_deoxyribonucleotide_pyrimidinic_symbol smb_dpy =
Dpys_v.deoxyribonucleotide_pyrimidinic_symbol smb_dpy
;;

let deoxyribonucleotide_pyrimidinic_symbol_of_deoxyribonucleotide_pyrimidinic_symbol smb_dpy =
Dpys_v.deoxyribonucleotide_pyrimidinic_symbol smb_dpy
;;

let deoxyribonucleotide_pyrimidinic_symbol_of_deoxyribonucleotide_pyrimidinic_symbol smb_dpy =
Dpys_v.deoxyribonucleotide_pyrimidinic_symbol smb_dpy
;;



(** created by ./generator deoxyribonucleotide v symbol at 11:8 26 Apr 2011. *)



