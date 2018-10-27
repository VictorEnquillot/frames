(** {3 A Symbol for a Hsbf Single (L, M) .} *)

let mod_nam = "Hsbf_single_symbol_v";;

(** {6 Modules.} *)

module Hss_t = Hsbf_single_symbol_t
module Lsy_v = L_symmetry_symbol_v
module Qun_p = Quantum_numbers_p
module Shd_t = Spherical_harmonics_data_t
module Shd_v = Spherical_harmonics_data_v
module Utl_v = Utils_v

(** {6 Making.} *)

let make qlm = 
  qlm
;;

let make_of_quantum_number_l_of_quantum_number_m q_l q_m = 
  Qun_p.make_lm q_l q_m
;;

let make_of_int_of_int = Qun_p.make_lm_of_int_of_int;;

let make_of_l_symmetry_symbol_of_int smb_lsy m =
  let l = Lsy_v.int_of_l_symmetry_symbol smb_lsy in
  make_of_int_of_int l m
;;

let read ib =
  Utl_v.not_yet_implemented mod_nam "Hsbf_single_symbol_v.read"
;;

(** {6 Extracting.} *)

let quantum_numbers_lm_off_hsbf_single_symbol smb_hss =
  smb_hss
;;

let spherical_harmonics_data_off_hsbf_single_symbol smb_hss =
  let qlm = quantum_numbers_lm_off_hsbf_single_symbol smb_hss in
  Shd_v.make qlm
;;

let quantum_number_l_off_hsbf_single_symbol smb_hss =
  let qlm = quantum_numbers_lm_off_hsbf_single_symbol smb_hss in
  Qun_p.quantum_number_l_off_quantum_numbers_lm qlm 
;;

let quantum_number_m_off_hsbf_single_symbol smb_hss =
  let qlm = quantum_numbers_lm_off_hsbf_single_symbol smb_hss in
  Qun_p.quantum_number_m_off_quantum_numbers_lm qlm 
;;

(** {9 Inferring.} *)

(** {6 Converting.} *)

let print ppf smb_hss =
  let sph = spherical_harmonics_data_off_hsbf_single_symbol smb_hss in
    match sph with  
      | Shd_t.Cartesian _ -> 
	  failwith ("Cartesian_representation : need to implement array")
      | Shd_t.Spherical (qnl, qnm) -> 
	  Format.fprintf ppf "Ylm (%a, %i)"
	    Index_p.print qnl 
            qnm
;;

let string_of_hsbf_single_symbol smb_hss =
  print Format.str_formatter smb_hss;
  Format.flush_str_formatter () 
;;

let name smb_hss =
  let shd = spherical_harmonics_data_off_hsbf_single_symbol smb_hss in
  Shd_v.name shd
;;
 
