(** {3 A Symbol functionalities for a Hsbf Bundle ( N, L) .} *)

let mod_nam = "Hsbf_bundle_symbol_v";;

module Hbs_t = Hsbf_bundle_symbol_t
module Lss_v = L_symmetry_symbol_v
module Ord_p = Ordinal_p
module Qns_p = Quantum_numbers_p
module Shd_v = Spherical_harmonics_data_v
module Shn_p = Shell_name_p

(** {6 Making.} *)

let make nam_shl = nam_shl;;

let make_of_int_of_l_symmetry_symbol = 
  Shn_p.make_of_int_of_l_symmetry_symbol;;

let make_of_ordinal_of_l_symmetry_symbol = 
  Shn_p.make_of_ordinal_of_l_symmetry_symbol;;

let make_of_shell_ordinal_of_l_symmetry_symbol =
  Shn_p.make_of_shell_ordinal_of_l_symmetry_symbol;;

let make_of_int_of_int = Shn_p.make_of_int_of_int;; 

let read ib =
  Utils_v.not_yet_implemented mod_nam "Xfp_single_symbol_v.read"
;;

(** {6 Extracting.} *)

let ordinal_off_hsbf_bundle_symbol smb_hsb =
  Shn_p.ordinal_off_shell_name smb_hsb
;;

let l_symmetry_symbol_off_hsbf_bundle_symbol smb_hsb =
  Shn_p.l_symmetry_symbol_off_shell_name smb_hsb
;;

let quantum_number_l_off_hsbf_bundle_symbol smb_hsb =
  Shn_p.quantum_number_l_off_shell_name smb_hsb
;;

let index_off_hsbf_bundle_symbol smb_hsb =
  let smb_lsy = l_symmetry_symbol_off_hsbf_bundle_symbol smb_hsb in
  Lss_v.index_of_l_symmetry_symbol smb_lsy
;;

let quantum_numbers_nl_off_hsbf_bundle_symbol smb_hsb =
  Shn_p.quantum_numbers_nl_off_shell_name smb_hsb 
;;

(** {9 Inferring.} *)

let spherical_harmonics_data_array_of_hsbf_bundle_symbol smb_hsb =
  let smb_lsy = l_symmetry_symbol_off_hsbf_bundle_symbol smb_hsb in 
  let qnl = 
    Qns_p.quantum_number_l_of_l_symmetry_symbol smb_lsy in
  Shd_v.spherical_harmonics_data_array_of_quantum_number_l qnl
;;

(** {6 Converting.} *)

let print = Shn_p.print
;;

let string_of_hsbf_bundle_symbol smb_chs =
  print Format.str_formatter smb_chs;
  Format.flush_str_formatter () 
;;

let name = Shn_p.name
;;

