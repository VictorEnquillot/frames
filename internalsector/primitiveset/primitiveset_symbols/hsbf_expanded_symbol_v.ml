(** {3 Pripath functionalities A Symbol for a Hsbf Expanded.} *)

let mod_nam = "Hsbf_expanded_symbol_v";;

(** {6 Modules.} *)

module Shd_t = Spherical_harmonics_data_t
module Hss_t = Hsbf_expanded_symbol_t

module Qun_p = Quantum_numbers_p
module Shd_v = Spherical_harmonics_data_v
module Utl_v = Utils_v

(** {6 Making.} *)

let make l m =
  Qun_p.make_lm_of_int_of_int l m 
;;

let read ib =
  Utl_v.not_yet_implemented mod_nam "Hsbf_expanded_symbol_v.read"
;;

(** {6 Extracting.} *)

let quantum_numbers_lm_off_hsbf_expanded_symbol smb_hss =
  smb_hss
;;

let spherical_harmonics_data_of_hsbf_expanded_symbol smb_hss =
  let qlm = quantum_numbers_lm_off_hsbf_expanded_symbol smb_hss in
  Shd_v.make qlm
;;

let quantum_number_l_of_hsbf_expanded_symbol smb_hss =
  let qlm = quantum_numbers_lm_off_hsbf_expanded_symbol smb_hss in
  Qun_p.quantum_number_l_off_quantum_numbers_lm qlm 
;;

let quantum_number_m_of_hsbf_expanded_symbol smb_hss =
  let qlm = quantum_numbers_lm_off_hsbf_expanded_symbol smb_hss in
  Qun_p.quantum_number_m_off_quantum_numbers_lm qlm 
;;

(** {9 Inferring.} *)

(** {6 Converting.} *)

let print ppf smb_hss = Qun_p.print_lm ppf smb_hss
;;

let name smb_hss = Qun_p.name_lm smb_hss
;;


