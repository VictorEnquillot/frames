(** {3 A Symbol functionalities for a Hsbf Cluster ( N ).} *)

let mod_nam = "Hsbf_cluster_symbol_v";;

module Sho_p = Shell_ordinal_p

(** {6 Making.} *)

let make ord_shl = 
  ord_shl
;;

let make_of_int = 
  Sho_p.make_of_int
;;

let make_of_index = 
  Sho_p.make_of_index
;;

let read ib =
  Utils_v.not_yet_implemented mod_nam "Xfp_single_symbol_v.read"
;;

(** {6 Extracting.} *)

let quantum_number_n_off_hsbf_cluster_symbol smb_hss =
  Sho_p.quantum_number_n_off_shell_ordinal smb_hss 
;;

let ordinal_off_hsbf_cluster_symbol smb_hsb =
  Sho_p.ordinal_of_shell_ordinal smb_hsb
;;

(** {6 Converting.} *)

let print = Sho_p.print
;;

let string_of_hsbf_cluster_symbol smb_chs =
  print Format.str_formatter smb_chs;
  Format.flush_str_formatter () 
;;

let name = Sho_p.name
;;

