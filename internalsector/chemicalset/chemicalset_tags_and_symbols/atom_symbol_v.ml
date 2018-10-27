(** {3 A Symbol for a Atom.} *)

let nam_mod = "Atom_symbol_v";;

(** {6 Modules.} *)

module Aans_t = Atom_zerotied_anion_symbol_t
module Aans_v = Atom_zerotied_anion_symbol_v
module Ac1s_t = Atom_zerotied_cation_plus_one_symbol_t
module Ac1s_v = Atom_zerotied_cation_plus_one_symbol_v
module Ac2s_t = Atom_zerotied_cation_plus_two_symbol_t
module Ac2s_v = Atom_zerotied_cation_plus_two_symbol_v
module Ac3s_t = Atom_zerotied_cation_plus_three_symbol_t
module Ac3s_v = Atom_zerotied_cation_plus_three_symbol_v
module Acccs_t = Atom_threetied_conjugated_conjugated_conjugated_symbol_t
module Acccs_v = Atom_threetied_conjugated_conjugated_conjugated_symbol_v
module Accs_t = Atom_twotied_conjugated_conjugated_symbol_t
module Accs_v = Atom_twotied_conjugated_conjugated_symbol_v
module Acds_t = Atom_twotied_conjugated_double_symbol_t
module Acds_v = Atom_twotied_conjugated_double_symbol_v
module Acns_t = Atom_zerotied_cation_symbol_t
module Acns_v = Atom_zerotied_cation_symbol_v
module Addds_t = Atom_threetied_double_double_double_symbol_t
module Addds_v = Atom_threetied_double_double_double_symbol_v
module Adds_t = Atom_twotied_double_double_symbol_t
module Adds_v = Atom_twotied_double_double_symbol_v
module Afos_t = Atom_fourtied_symbol_t
module Afos_v = Atom_fourtied_symbol_v
module Afvs_t = Atom_fivetied_symbol_t
module Afvs_v = Atom_fivetied_symbol_v
module Am1s_t = Atom_zerotied_anion_minus_one_symbol_t
module Am1s_v = Atom_zerotied_anion_minus_one_symbol_v
module Am2s_t = Atom_zerotied_anion_minus_two_symbol_t
module Am2s_v = Atom_zerotied_anion_minus_two_symbol_v
module Aocs_t = Atom_onetied_conjugated_symbol_t
module Aocs_v = Atom_onetied_conjugated_symbol_v
module Aods_t = Atom_onetied_double_symbol_t
module Aods_v = Atom_onetied_double_symbol_v
module Aons_t = Atom_onetied_symbol_t
module Aons_v = Atom_onetied_symbol_v
module Aoss_t = Atom_onetied_single_symbol_t
module Aoss_v = Atom_onetied_single_symbol_v
module Aots_t = Atom_onetied_triple_symbol_t
module Aots_v = Atom_onetied_triple_symbol_v
module Args_t = Atom_zerotied_raregas_symbol_t
module Args_v = Atom_zerotied_raregas_symbol_v
module Asccs_t = Atom_threetied_single_conjugated_conjugated_symbol_t
module Asccs_v = Atom_threetied_single_conjugated_conjugated_symbol_v
module Ascs_t = Atom_twotied_single_conjugated_symbol_t
module Ascs_v = Atom_twotied_single_conjugated_symbol_v
module Asds_t = Atom_twotied_single_double_symbol_t
module Asds_v = Atom_twotied_single_double_symbol_v
module Assds_t = Atom_threetied_single_single_double_symbol_t
module Assds_v = Atom_threetied_single_single_double_symbol_v
module Assss_t = Atom_threetied_single_single_single_symbol_t
module Assss_v = Atom_threetied_single_single_single_symbol_v
module Asss_t = Atom_twotied_single_single_symbol_t
module Asss_v = Atom_twotied_single_single_symbol_v
module Asts_t = Atom_twotied_single_triple_symbol_t
module Asts_v = Atom_twotied_single_triple_symbol_v
module Asxs_t = Atom_sixtied_symbol_t
module Asxs_v = Atom_sixtied_symbol_v
module Aths_t = Atom_threetied_symbol_t
module Aths_v = Atom_threetied_symbol_v
module Ats_t = Atom_symbol_t
module Atws_t = Atom_twotied_symbol_t
module Atws_v = Atom_twotied_symbol_v
module Azes_t = Atom_zerotied_symbol_t
module Azes_v = Atom_zerotied_symbol_v
module Hbs_t = Halfbridge_symbol_t
module Hbs_v = Halfbridge_symbol_v

(** {6 Displaying.} *)

let name = function
  | Ats_t.Atom_zerotied_symbol smb_aze -> 
      Azes_v.name smb_aze
  | Ats_t.Atom_onetied_symbol smb_aon -> 
      Aons_v.name smb_aon
  | Ats_t.Atom_twotied_symbol smb_atw -> 
      Atws_v.name smb_atw
  | Ats_t.Atom_threetied_symbol smb_ath -> 
      Aths_v.name smb_ath
  | Ats_t.Atom_fourtied_symbol smb_afo -> 
      Afos_v.name smb_afo
  | Ats_t.Atom_fivetied_symbol smb_afi -> 
      Afvs_v.name smb_afi
  | Ats_t.Atom_sixtied_symbol smb_asi -> 
      Asxs_v.name smb_asi
;;

let print ppf = function
  | Ats_t.Atom_zerotied_symbol smb_aze -> 
      Azes_v.print ppf smb_aze
  | Ats_t.Atom_onetied_symbol smb_aon -> 
      Aons_v.print ppf smb_aon
  | Ats_t.Atom_twotied_symbol smb_atw -> 
      Atws_v.print ppf smb_atw
  | Ats_t.Atom_threetied_symbol smb_ath -> 
      Aths_v.print ppf smb_ath
  | Ats_t.Atom_fourtied_symbol smb_afo -> 
      Afos_v.print ppf smb_afo
  | Ats_t.Atom_fivetied_symbol smb_afi -> 
      Afvs_v.print ppf smb_afi
  | Ats_t.Atom_sixtied_symbol smb_asi -> 
      Asxs_v.print ppf smb_asi
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Atom_zerotied from Atom.} *)

let atom_zerotied_symbol_off_atom_symbol = function
  | Ats_t.Atom_zerotied_symbol smb_aze -> smb_aze
  | s ->  print_fatal_error
      "atom_zerotied_symbol_off_atom_symbol"
      "Atom_zerotied_symbol" (name s)
;;

(** {9 Extracting Atom_zerotied_raregas from Atom_zerotied from Atom.} *)

let atom_zerotied_raregas_symbol_off_atom_symbol smb_atm =
  let smb_aze = atom_zerotied_symbol_off_atom_symbol smb_atm in
    Azes_v.atom_zerotied_raregas_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Ar from Atom_zerotied_raregas from Atom_zerotied from Atom.} *)

(* No Extraction from ar 0. *)

(** {12 Extracting He from Atom_zerotied_raregas from Atom_zerotied from Atom.} *)

(* No Extraction from he 0. *)

(** {12 Extracting Kr from Atom_zerotied_raregas from Atom_zerotied from Atom.} *)

(* No Extraction from kr 0. *)

(** {12 Extracting Ne from Atom_zerotied_raregas from Atom_zerotied from Atom.} *)

(* No Extraction from ne 0. *)

(** {12 Extracting Xe from Atom_zerotied_raregas from Atom_zerotied from Atom.} *)

(* No Extraction from xe 0. *)

(** {9 Extracting Atom_zerotied_anion from Atom_zerotied from Atom.} *)

let atom_zerotied_anion_symbol_off_atom_symbol smb_atm =
  let smb_aze = atom_zerotied_symbol_off_atom_symbol smb_atm in
    Azes_v.atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Atom_zerotied_anion_minus_one from Atom_zerotied_anion from Atom_zerotied from Atom.} *)

let atom_zerotied_anion_minus_one_symbol_off_atom_symbol smb_atm =
  let smb_aza = atom_zerotied_anion_symbol_off_atom_symbol smb_atm in
    Aans_v.atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol smb_aza
;;

(** {12 Extracting Atom_zerotied_anion_minus_two from Atom_zerotied_anion from Atom_zerotied from Atom.} *)

let atom_zerotied_anion_minus_two_symbol_off_atom_symbol smb_atm =
  let smb_aza = atom_zerotied_anion_symbol_off_atom_symbol smb_atm in
    Aans_v.atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol smb_aza
;;

(** {9 Extracting Atom_zerotied_cation from Atom_zerotied from Atom.} *)

let atom_zerotied_cation_symbol_off_atom_symbol smb_atm =
  let smb_aze = atom_zerotied_symbol_off_atom_symbol smb_atm in
    Azes_v.atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Atom_zerotied_cation_plus_one from Atom_zerotied_cation from Atom_zerotied from Atom.} *)

let atom_zerotied_cation_plus_one_symbol_off_atom_symbol smb_atm =
  let smb_acn = atom_zerotied_cation_symbol_off_atom_symbol smb_atm in
    Acns_v.atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol smb_acn
;;

(** {12 Extracting Atom_zerotied_cation_plus_two from Atom_zerotied_cation from Atom_zerotied from Atom.} *)

let atom_zerotied_cation_plus_two_symbol_off_atom_symbol smb_atm =
  let smb_acn = atom_zerotied_cation_symbol_off_atom_symbol smb_atm in
    Acns_v.atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol smb_acn
;;

(** {12 Extracting Atom_zerotied_cation_plus_three from Atom_zerotied_cation from Atom_zerotied from Atom.} *)

let atom_zerotied_cation_plus_three_symbol_off_atom_symbol smb_atm =
  let smb_acn = atom_zerotied_cation_symbol_off_atom_symbol smb_atm in
    Acns_v.atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol smb_acn
;;

(** {9 Extracting Halfbridge from Atom_zerotied from Atom.} *)

let halfbridge_symbol_off_atom_symbol smb_atm =
  let smb_aze = atom_zerotied_symbol_off_atom_symbol smb_atm in
    Azes_v.halfbridge_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Hbc from Halfbridge from Atom_zerotied from Atom.} *)

(* No Extraction from Hbc 0. *)

(** {12 Extracting Hbd from Halfbridge from Atom_zerotied from Atom.} *)

(* No Extraction from Hbd 0. *)

(** {12 Extracting Hbs from Halfbridge from Atom_zerotied from Atom.} *)

(* No Extraction from Hbs 0. *)

(** {12 Extracting Hbt from Halfbridge from Atom_zerotied from Atom.} *)

(* No Extraction from Hbt 0. *)

(** {6 Extracting Atom_onetied from Atom.} *)

let atom_onetied_symbol_off_atom_symbol = function
  | Ats_t.Atom_onetied_symbol smb_aon -> smb_aon
  | s ->  print_fatal_error
      "atom_onetied_symbol_off_atom_symbol"
      "Atom_onetied_symbol" (name s)
;;

(** {9 Extracting Atom_onetied_conjugated from Atom_onetied from Atom.} *)

let atom_onetied_conjugated_symbol_off_atom_symbol smb_atm =
  let smb_aon = atom_onetied_symbol_off_atom_symbol smb_atm in
    Aons_v.atom_onetied_conjugated_symbol_off_atom_onetied_symbol smb_aon
;;

(** {12 Extracting O_c from Atom_onetied_conjugated from Atom_onetied from Atom.} *)

(* No Extraction from o_c 0. *)

(** {9 Extracting Atom_onetied_double from Atom_onetied from Atom.} *)

let atom_onetied_double_symbol_off_atom_symbol smb_atm =
  let smb_aon = atom_onetied_symbol_off_atom_symbol smb_atm in
    Aons_v.atom_onetied_double_symbol_off_atom_onetied_symbol smb_aon
;;

(** {12 Extracting O_d from Atom_onetied_double from Atom_onetied from Atom.} *)

(* No Extraction from o_d 0. *)

(** {9 Extracting Atom_onetied_single from Atom_onetied from Atom.} *)

let atom_onetied_single_symbol_off_atom_symbol smb_atm =
  let smb_aon = atom_onetied_symbol_off_atom_symbol smb_atm in
    Aons_v.atom_onetied_single_symbol_off_atom_onetied_symbol smb_aon
;;

(** {12 Extracting H_s from Atom_onetied_single from Atom_onetied from Atom.} *)

(* No Extraction from h_s 0. *)

(** {12 Extracting F_s from Atom_onetied_single from Atom_onetied from Atom.} *)

(* No Extraction from f_s 0. *)

(** {9 Extracting Atom_onetied_triple from Atom_onetied from Atom.} *)

let atom_onetied_triple_symbol_off_atom_symbol smb_atm =
  let smb_aon = atom_onetied_symbol_off_atom_symbol smb_atm in
    Aons_v.atom_onetied_triple_symbol_off_atom_onetied_symbol smb_aon
;;

(** {12 Extracting N_t from Atom_onetied_triple from Atom_onetied from Atom.} *)

(* No Extraction from n_t 0. *)

(** {12 Extracting O_t from Atom_onetied_triple from Atom_onetied from Atom.} *)

(* No Extraction from o_t 0. *)

(** {6 Extracting Atom_twotied from Atom.} *)

let atom_twotied_symbol_off_atom_symbol = function
  | Ats_t.Atom_twotied_symbol smb_atw -> smb_atw
  | s ->  print_fatal_error
      "atom_twotied_symbol_off_atom_symbol"
      "Atom_twotied_symbol" (name s)
;;

(** {9 Extracting Atom_twotied_single_single from Atom_twotied from Atom.} *)

let atom_twotied_single_single_symbol_off_atom_symbol smb_atm =
  let smb_atw = atom_twotied_symbol_off_atom_symbol smb_atm in
    Atws_v.atom_twotied_single_single_symbol_off_atom_twotied_symbol smb_atw
;;

(** {12 Extracting Cl_ss from Atom_twotied_single_single from Atom_twotied from Atom.} *)

(* No Extraction from cl_ss 0. *)

(** {12 Extracting F_ss from Atom_twotied_single_single from Atom_twotied from Atom.} *)

(* No Extraction from f_ss 0. *)

(** {12 Extracting H_ss from Atom_twotied_single_single from Atom_twotied from Atom.} *)

(* No Extraction from h_ss 0. *)

(** {9 Extracting Atom_twotied_single_conjugated from Atom_twotied from Atom.} *)

let atom_twotied_single_conjugated_symbol_off_atom_symbol smb_atm =
  let smb_atw = atom_twotied_symbol_off_atom_symbol smb_atm in
    Atws_v.atom_twotied_single_conjugated_symbol_off_atom_twotied_symbol smb_atw
;;

(** {12 Extracting N_sc from Atom_twotied_single_conjugated from Atom_twotied from Atom.} *)

(* No Extraction from n_sc 0. *)

(** {12 Extracting O_sc from Atom_twotied_single_conjugated from Atom_twotied from Atom.} *)

(* No Extraction from o_sc 0. *)

(** {9 Extracting Atom_twotied_single_double from Atom_twotied from Atom.} *)

let atom_twotied_single_double_symbol_off_atom_symbol smb_atm =
  let smb_atw = atom_twotied_symbol_off_atom_symbol smb_atm in
    Atws_v.atom_twotied_single_double_symbol_off_atom_twotied_symbol smb_atw
;;

(** {12 Extracting N_sd from Atom_twotied_single_double from Atom_twotied from Atom.} *)

(* No Extraction from n_sd 0. *)

(** {9 Extracting Atom_twotied_single_triple from Atom_twotied from Atom.} *)

let atom_twotied_single_triple_symbol_off_atom_symbol smb_atm =
  let smb_atw = atom_twotied_symbol_off_atom_symbol smb_atm in
    Atws_v.atom_twotied_single_triple_symbol_off_atom_twotied_symbol smb_atw
;;

(** {12 Extracting C_st from Atom_twotied_single_triple from Atom_twotied from Atom.} *)

(* No Extraction from c_st 0. *)

(** {12 Extracting N_st from Atom_twotied_single_triple from Atom_twotied from Atom.} *)

(* No Extraction from n_st 0. *)

(** {9 Extracting Atom_twotied_conjugated_conjugated from Atom_twotied from Atom.} *)

let atom_twotied_conjugated_conjugated_symbol_off_atom_symbol smb_atm =
  let smb_atw = atom_twotied_symbol_off_atom_symbol smb_atm in
    Atws_v.atom_twotied_conjugated_conjugated_symbol_off_atom_twotied_symbol smb_atw
;;

(** {12 Extracting N_cc from Atom_twotied_conjugated_conjugated from Atom_twotied from Atom.} *)

(* No Extraction from n_cc 0. *)

(** {12 Extracting O_cc from Atom_twotied_conjugated_conjugated from Atom_twotied from Atom.} *)

(* No Extraction from o_cc 0. *)

(** {9 Extracting Atom_twotied_conjugated_double from Atom_twotied from Atom.} *)

let atom_twotied_conjugated_double_symbol_off_atom_symbol smb_atm =
  let smb_atw = atom_twotied_symbol_off_atom_symbol smb_atm in
    Atws_v.atom_twotied_conjugated_double_symbol_off_atom_twotied_symbol smb_atw
;;

(** {12 Extracting C_cd from Atom_twotied_conjugated_double from Atom_twotied from Atom.} *)

(* No Extraction from c_cd 0. *)

(** {9 Extracting Atom_twotied_double_double from Atom_twotied from Atom.} *)

let atom_twotied_double_double_symbol_off_atom_symbol smb_atm =
  let smb_atw = atom_twotied_symbol_off_atom_symbol smb_atm in
    Atws_v.atom_twotied_double_double_symbol_off_atom_twotied_symbol smb_atw
;;

(** {12 Extracting C_dd from Atom_twotied_double_double from Atom_twotied from Atom.} *)

(* No Extraction from c_dd 0. *)

(** {12 Extracting S_dd from Atom_twotied_double_double from Atom_twotied from Atom.} *)

(* No Extraction from s_dd 0. *)

(** {6 Extracting Atom_threetied from Atom.} *)

let atom_threetied_symbol_off_atom_symbol = function
  | Ats_t.Atom_threetied_symbol smb_ath -> smb_ath
  | s ->  print_fatal_error
      "atom_threetied_symbol_off_atom_symbol"
      "Atom_threetied_symbol" (name s)
;;

(** {9 Extracting Atom_threetied_single_single_single from Atom_threetied from Atom.} *)

let atom_threetied_single_single_single_symbol_off_atom_symbol smb_atm =
  let smb_ath = atom_threetied_symbol_off_atom_symbol smb_atm in
    Aths_v.atom_threetied_single_single_single_symbol_off_atom_threetied_symbol smb_ath
;;

(** {12 Extracting N_sss from Atom_threetied_single_single_single from Atom_threetied from Atom.} *)

(* No Extraction from n_sss 0. *)

(** {12 Extracting Cl_sss from Atom_threetied_single_single_single from Atom_threetied from Atom.} *)

(* No Extraction from cl_sss 0. *)

(** {9 Extracting Atom_threetied_single_single_double from Atom_threetied from Atom.} *)

let atom_threetied_single_single_double_symbol_off_atom_symbol smb_atm =
  let smb_ath = atom_threetied_symbol_off_atom_symbol smb_atm in
    Aths_v.atom_threetied_single_single_double_symbol_off_atom_threetied_symbol smb_ath
;;

(** {12 Extracting C_ssd from Atom_threetied_single_single_double from Atom_threetied from Atom.} *)

(* No Extraction from c_ssd 0. *)

(** {12 Extracting N_sdd from Atom_threetied_single_single_double from Atom_threetied from Atom.} *)

(* No Extraction from n_sdd 0. *)

(** {12 Extracting S_sdd from Atom_threetied_single_single_double from Atom_threetied from Atom.} *)

(* No Extraction from s_sdd 0. *)

(** {9 Extracting Atom_threetied_single_conjugated_conjugated from Atom_threetied from Atom.} *)

let atom_threetied_single_conjugated_conjugated_symbol_off_atom_symbol smb_atm =
  let smb_ath = atom_threetied_symbol_off_atom_symbol smb_atm in
    Aths_v.atom_threetied_single_conjugated_conjugated_symbol_off_atom_threetied_symbol smb_ath
;;

(** {12 Extracting C_scc from Atom_threetied_single_conjugated_conjugated from Atom_threetied from Atom.} *)

(* No Extraction from c_scc 0. *)

(** {12 Extracting N_scc from Atom_threetied_single_conjugated_conjugated from Atom_threetied from Atom.} *)

(* No Extraction from n_scc 0. *)

(** {9 Extracting Atom_threetied_conjugated_conjugated_conjugated from Atom_threetied from Atom.} *)

let atom_threetied_conjugated_conjugated_conjugated_symbol_off_atom_symbol smb_atm =
  let smb_ath = atom_threetied_symbol_off_atom_symbol smb_atm in
    Aths_v.atom_threetied_conjugated_conjugated_conjugated_symbol_off_atom_threetied_symbol smb_ath
;;

(** {12 Extracting C_ccc from Atom_threetied_conjugated_conjugated_conjugated from Atom_threetied from Atom.} *)

(* No Extraction from c_ccc 0. *)

(** {12 Extracting N_ccc from Atom_threetied_conjugated_conjugated_conjugated from Atom_threetied from Atom.} *)

(* No Extraction from n_ccc 0. *)

(** {9 Extracting Atom_threetied_double_double_double from Atom_threetied from Atom.} *)

let atom_threetied_double_double_double_symbol_off_atom_symbol smb_atm =
  let smb_ath = atom_threetied_symbol_off_atom_symbol smb_atm in
    Aths_v.atom_threetied_double_double_double_symbol_off_atom_threetied_symbol smb_ath
;;

(** {12 Extracting S_ddd from Atom_threetied_double_double_double from Atom_threetied from Atom.} *)

(* No Extraction from s_ddd 0. *)

(** {6 Extracting Atom_fourtied from Atom.} *)

let atom_fourtied_symbol_off_atom_symbol = function
  | Ats_t.Atom_fourtied_symbol smb_afo -> smb_afo
  | s ->  print_fatal_error
      "atom_fourtied_symbol_off_atom_symbol"
      "Atom_fourtied_symbol" (name s)
;;

(** {9 Extracting C_4s from Atom_fourtied from Atom.} *)

(* No Extraction from c_4s 0. *)

(** {9 Extracting N_4s from Atom_fourtied from Atom.} *)

(* No Extraction from n_4s 0. *)

(** {9 Extracting S_4s from Atom_fourtied from Atom.} *)

(* No Extraction from s_4s 0. *)

(** {9 Extracting Xe_4s from Atom_fourtied from Atom.} *)

(* No Extraction from xe_4s 0. *)

(** {6 Extracting Atom_fivetied from Atom.} *)

let atom_fivetied_symbol_off_atom_symbol = function
  | Ats_t.Atom_fivetied_symbol smb_afi -> smb_afi
  | s ->  print_fatal_error
      "atom_fivetied_symbol_off_atom_symbol"
      "Atom_fivetied_symbol" (name s)
;;

(** {9 Extracting Cl_5s from Atom_fivetied from Atom.} *)

(* No Extraction from cl_5s 0. *)

(** {6 Extracting Atom_sixtied from Atom.} *)

let atom_sixtied_symbol_off_atom_symbol = function
  | Ats_t.Atom_sixtied_symbol smb_asi -> smb_asi
  | s ->  print_fatal_error
      "atom_sixtied_symbol_off_atom_symbol"
      "Atom_sixtied_symbol" (name s)
;;

(** {9 Extracting S_6s from Atom_sixtied from Atom.} *)

(* No Extraction from s_6s 0. *)

(** {6 Querying.} *)

(** {6 Querying Atom_zerotied in Atom.} *)

let is_atom_zerotied_symbol_off_atom_symbol = function
  | Ats_t.Atom_zerotied_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Atom_zerotied_raregas in Atom_zerotied in Atom.} *)

let is_atom_zerotied_raregas_symbol_off_atom_symbol smb_atm =
  if not (is_atom_zerotied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_atom_symbol smb_atm in
      Azes_v.is_atom_zerotied_raregas_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Ar in Atom_zerotied_raregas in Atom_zerotied in Atom.} *)

(* No Query from ar 0. *)

(** {12 Querying He in Atom_zerotied_raregas in Atom_zerotied in Atom.} *)

(* No Query from he 0. *)

(** {12 Querying Kr in Atom_zerotied_raregas in Atom_zerotied in Atom.} *)

(* No Query from kr 0. *)

(** {12 Querying Ne in Atom_zerotied_raregas in Atom_zerotied in Atom.} *)

(* No Query from ne 0. *)

(** {12 Querying Xe in Atom_zerotied_raregas in Atom_zerotied in Atom.} *)

(* No Query from xe 0. *)

(** {9 Querying Atom_zerotied_anion in Atom_zerotied in Atom.} *)

let is_atom_zerotied_anion_symbol_off_atom_symbol smb_atm =
  if not (is_atom_zerotied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_atom_symbol smb_atm in
      Azes_v.is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Atom_zerotied_anion_minus_one in Atom_zerotied_anion in Atom_zerotied in Atom.} *)

let is_atom_zerotied_anion_minus_one_symbol_off_atom_symbol smb_atm =
  if not (is_atom_zerotied_anion_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_aza = atom_zerotied_anion_symbol_off_atom_symbol smb_atm in
      Aans_v.is_atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol smb_aza
    end
;;

(** {12 Querying Atom_zerotied_anion_minus_two in Atom_zerotied_anion in Atom_zerotied in Atom.} *)

let is_atom_zerotied_anion_minus_two_symbol_off_atom_symbol smb_atm =
  if not (is_atom_zerotied_anion_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_aza = atom_zerotied_anion_symbol_off_atom_symbol smb_atm in
      Aans_v.is_atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol smb_aza
    end
;;

(** {9 Querying Atom_zerotied_cation in Atom_zerotied in Atom.} *)

let is_atom_zerotied_cation_symbol_off_atom_symbol smb_atm =
  if not (is_atom_zerotied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_atom_symbol smb_atm in
      Azes_v.is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Atom_zerotied_cation_plus_one in Atom_zerotied_cation in Atom_zerotied in Atom.} *)

let is_atom_zerotied_cation_plus_one_symbol_off_atom_symbol smb_atm =
  if not (is_atom_zerotied_cation_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_acn = atom_zerotied_cation_symbol_off_atom_symbol smb_atm in
      Acns_v.is_atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol smb_acn
    end
;;

(** {12 Querying Atom_zerotied_cation_plus_two in Atom_zerotied_cation in Atom_zerotied in Atom.} *)

let is_atom_zerotied_cation_plus_two_symbol_off_atom_symbol smb_atm =
  if not (is_atom_zerotied_cation_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_acn = atom_zerotied_cation_symbol_off_atom_symbol smb_atm in
      Acns_v.is_atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol smb_acn
    end
;;

(** {12 Querying Atom_zerotied_cation_plus_three in Atom_zerotied_cation in Atom_zerotied in Atom.} *)

let is_atom_zerotied_cation_plus_three_symbol_off_atom_symbol smb_atm =
  if not (is_atom_zerotied_cation_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_acn = atom_zerotied_cation_symbol_off_atom_symbol smb_atm in
      Acns_v.is_atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol smb_acn
    end
;;

(** {9 Querying Halfbridge in Atom_zerotied in Atom.} *)

let is_halfbridge_symbol_off_atom_symbol smb_atm =
  if not (is_atom_zerotied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_atom_symbol smb_atm in
      Azes_v.is_halfbridge_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Hbc in Halfbridge in Atom_zerotied in Atom.} *)

(* No Query from Hbc 0. *)

(** {12 Querying Hbd in Halfbridge in Atom_zerotied in Atom.} *)

(* No Query from Hbd 0. *)

(** {12 Querying Hbs in Halfbridge in Atom_zerotied in Atom.} *)

(* No Query from Hbs 0. *)

(** {12 Querying Hbt in Halfbridge in Atom_zerotied in Atom.} *)

(* No Query from Hbt 0. *)

(** {6 Querying Atom_onetied in Atom.} *)

let is_atom_onetied_symbol_off_atom_symbol = function
  | Ats_t.Atom_onetied_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Atom_onetied_conjugated in Atom_onetied in Atom.} *)

let is_atom_onetied_conjugated_symbol_off_atom_symbol smb_atm =
  if not (is_atom_onetied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_aon = atom_onetied_symbol_off_atom_symbol smb_atm in
      Aons_v.is_atom_onetied_conjugated_symbol_off_atom_onetied_symbol smb_aon
    end
;;

(** {12 Querying O_c in Atom_onetied_conjugated in Atom_onetied in Atom.} *)

(* No Query from o_c 0. *)

(** {9 Querying Atom_onetied_double in Atom_onetied in Atom.} *)

let is_atom_onetied_double_symbol_off_atom_symbol smb_atm =
  if not (is_atom_onetied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_aon = atom_onetied_symbol_off_atom_symbol smb_atm in
      Aons_v.is_atom_onetied_double_symbol_off_atom_onetied_symbol smb_aon
    end
;;

(** {12 Querying O_d in Atom_onetied_double in Atom_onetied in Atom.} *)

(* No Query from o_d 0. *)

(** {9 Querying Atom_onetied_single in Atom_onetied in Atom.} *)

let is_atom_onetied_single_symbol_off_atom_symbol smb_atm =
  if not (is_atom_onetied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_aon = atom_onetied_symbol_off_atom_symbol smb_atm in
      Aons_v.is_atom_onetied_single_symbol_off_atom_onetied_symbol smb_aon
    end
;;

(** {12 Querying H_s in Atom_onetied_single in Atom_onetied in Atom.} *)

(* No Query from h_s 0. *)

(** {12 Querying F_s in Atom_onetied_single in Atom_onetied in Atom.} *)

(* No Query from f_s 0. *)

(** {9 Querying Atom_onetied_triple in Atom_onetied in Atom.} *)

let is_atom_onetied_triple_symbol_off_atom_symbol smb_atm =
  if not (is_atom_onetied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_aon = atom_onetied_symbol_off_atom_symbol smb_atm in
      Aons_v.is_atom_onetied_triple_symbol_off_atom_onetied_symbol smb_aon
    end
;;

(** {12 Querying N_t in Atom_onetied_triple in Atom_onetied in Atom.} *)

(* No Query from n_t 0. *)

(** {12 Querying O_t in Atom_onetied_triple in Atom_onetied in Atom.} *)

(* No Query from o_t 0. *)

(** {6 Querying Atom_twotied in Atom.} *)

let is_atom_twotied_symbol_off_atom_symbol = function
  | Ats_t.Atom_twotied_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Atom_twotied_single_single in Atom_twotied in Atom.} *)

let is_atom_twotied_single_single_symbol_off_atom_symbol smb_atm =
  if not (is_atom_twotied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_atw = atom_twotied_symbol_off_atom_symbol smb_atm in
      Atws_v.is_atom_twotied_single_single_symbol_off_atom_twotied_symbol smb_atw
    end
;;

(** {12 Querying Cl_ss in Atom_twotied_single_single in Atom_twotied in Atom.} *)

(* No Query from cl_ss 0. *)

(** {12 Querying F_ss in Atom_twotied_single_single in Atom_twotied in Atom.} *)

(* No Query from f_ss 0. *)

(** {12 Querying H_ss in Atom_twotied_single_single in Atom_twotied in Atom.} *)

(* No Query from h_ss 0. *)

(** {9 Querying Atom_twotied_single_conjugated in Atom_twotied in Atom.} *)

let is_atom_twotied_single_conjugated_symbol_off_atom_symbol smb_atm =
  if not (is_atom_twotied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_atw = atom_twotied_symbol_off_atom_symbol smb_atm in
      Atws_v.is_atom_twotied_single_conjugated_symbol_off_atom_twotied_symbol smb_atw
    end
;;

(** {12 Querying N_sc in Atom_twotied_single_conjugated in Atom_twotied in Atom.} *)

(* No Query from n_sc 0. *)

(** {12 Querying O_sc in Atom_twotied_single_conjugated in Atom_twotied in Atom.} *)

(* No Query from o_sc 0. *)

(** {9 Querying Atom_twotied_single_double in Atom_twotied in Atom.} *)

let is_atom_twotied_single_double_symbol_off_atom_symbol smb_atm =
  if not (is_atom_twotied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_atw = atom_twotied_symbol_off_atom_symbol smb_atm in
      Atws_v.is_atom_twotied_single_double_symbol_off_atom_twotied_symbol smb_atw
    end
;;

(** {12 Querying N_sd in Atom_twotied_single_double in Atom_twotied in Atom.} *)

(* No Query from n_sd 0. *)

(** {9 Querying Atom_twotied_single_triple in Atom_twotied in Atom.} *)

let is_atom_twotied_single_triple_symbol_off_atom_symbol smb_atm =
  if not (is_atom_twotied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_atw = atom_twotied_symbol_off_atom_symbol smb_atm in
      Atws_v.is_atom_twotied_single_triple_symbol_off_atom_twotied_symbol smb_atw
    end
;;

(** {12 Querying C_st in Atom_twotied_single_triple in Atom_twotied in Atom.} *)

(* No Query from c_st 0. *)

(** {12 Querying N_st in Atom_twotied_single_triple in Atom_twotied in Atom.} *)

(* No Query from n_st 0. *)

(** {9 Querying Atom_twotied_conjugated_conjugated in Atom_twotied in Atom.} *)

let is_atom_twotied_conjugated_conjugated_symbol_off_atom_symbol smb_atm =
  if not (is_atom_twotied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_atw = atom_twotied_symbol_off_atom_symbol smb_atm in
      Atws_v.is_atom_twotied_conjugated_conjugated_symbol_off_atom_twotied_symbol smb_atw
    end
;;

(** {12 Querying N_cc in Atom_twotied_conjugated_conjugated in Atom_twotied in Atom.} *)

(* No Query from n_cc 0. *)

(** {12 Querying O_cc in Atom_twotied_conjugated_conjugated in Atom_twotied in Atom.} *)

(* No Query from o_cc 0. *)

(** {9 Querying Atom_twotied_conjugated_double in Atom_twotied in Atom.} *)

let is_atom_twotied_conjugated_double_symbol_off_atom_symbol smb_atm =
  if not (is_atom_twotied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_atw = atom_twotied_symbol_off_atom_symbol smb_atm in
      Atws_v.is_atom_twotied_conjugated_double_symbol_off_atom_twotied_symbol smb_atw
    end
;;

(** {12 Querying C_cd in Atom_twotied_conjugated_double in Atom_twotied in Atom.} *)

(* No Query from c_cd 0. *)

(** {9 Querying Atom_twotied_double_double in Atom_twotied in Atom.} *)

let is_atom_twotied_double_double_symbol_off_atom_symbol smb_atm =
  if not (is_atom_twotied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_atw = atom_twotied_symbol_off_atom_symbol smb_atm in
      Atws_v.is_atom_twotied_double_double_symbol_off_atom_twotied_symbol smb_atw
    end
;;

(** {12 Querying C_dd in Atom_twotied_double_double in Atom_twotied in Atom.} *)

(* No Query from c_dd 0. *)

(** {12 Querying S_dd in Atom_twotied_double_double in Atom_twotied in Atom.} *)

(* No Query from s_dd 0. *)

(** {6 Querying Atom_threetied in Atom.} *)

let is_atom_threetied_symbol_off_atom_symbol = function
  | Ats_t.Atom_threetied_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Atom_threetied_single_single_single in Atom_threetied in Atom.} *)

let is_atom_threetied_single_single_single_symbol_off_atom_symbol smb_atm =
  if not (is_atom_threetied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_ath = atom_threetied_symbol_off_atom_symbol smb_atm in
      Aths_v.is_atom_threetied_single_single_single_symbol_off_atom_threetied_symbol smb_ath
    end
;;

(** {12 Querying N_sss in Atom_threetied_single_single_single in Atom_threetied in Atom.} *)

(* No Query from n_sss 0. *)

(** {12 Querying Cl_sss in Atom_threetied_single_single_single in Atom_threetied in Atom.} *)

(* No Query from cl_sss 0. *)

(** {9 Querying Atom_threetied_single_single_double in Atom_threetied in Atom.} *)

let is_atom_threetied_single_single_double_symbol_off_atom_symbol smb_atm =
  if not (is_atom_threetied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_ath = atom_threetied_symbol_off_atom_symbol smb_atm in
      Aths_v.is_atom_threetied_single_single_double_symbol_off_atom_threetied_symbol smb_ath
    end
;;

(** {12 Querying C_ssd in Atom_threetied_single_single_double in Atom_threetied in Atom.} *)

(* No Query from c_ssd 0. *)

(** {12 Querying N_sdd in Atom_threetied_single_single_double in Atom_threetied in Atom.} *)

(* No Query from n_sdd 0. *)

(** {12 Querying S_sdd in Atom_threetied_single_single_double in Atom_threetied in Atom.} *)

(* No Query from s_sdd 0. *)

(** {9 Querying Atom_threetied_single_conjugated_conjugated in Atom_threetied in Atom.} *)

let is_atom_threetied_single_conjugated_conjugated_symbol_off_atom_symbol smb_atm =
  if not (is_atom_threetied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_ath = atom_threetied_symbol_off_atom_symbol smb_atm in
      Aths_v.is_atom_threetied_single_conjugated_conjugated_symbol_off_atom_threetied_symbol smb_ath
    end
;;

(** {12 Querying C_scc in Atom_threetied_single_conjugated_conjugated in Atom_threetied in Atom.} *)

(* No Query from c_scc 0. *)

(** {12 Querying N_scc in Atom_threetied_single_conjugated_conjugated in Atom_threetied in Atom.} *)

(* No Query from n_scc 0. *)

(** {9 Querying Atom_threetied_conjugated_conjugated_conjugated in Atom_threetied in Atom.} *)

let is_atom_threetied_conjugated_conjugated_conjugated_symbol_off_atom_symbol smb_atm =
  if not (is_atom_threetied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_ath = atom_threetied_symbol_off_atom_symbol smb_atm in
      Aths_v.is_atom_threetied_conjugated_conjugated_conjugated_symbol_off_atom_threetied_symbol smb_ath
    end
;;

(** {12 Querying C_ccc in Atom_threetied_conjugated_conjugated_conjugated in Atom_threetied in Atom.} *)

(* No Query from c_ccc 0. *)

(** {12 Querying N_ccc in Atom_threetied_conjugated_conjugated_conjugated in Atom_threetied in Atom.} *)

(* No Query from n_ccc 0. *)

(** {9 Querying Atom_threetied_double_double_double in Atom_threetied in Atom.} *)

let is_atom_threetied_double_double_double_symbol_off_atom_symbol smb_atm =
  if not (is_atom_threetied_symbol_off_atom_symbol smb_atm)
  then false
  else
    begin
      let smb_ath = atom_threetied_symbol_off_atom_symbol smb_atm in
      Aths_v.is_atom_threetied_double_double_double_symbol_off_atom_threetied_symbol smb_ath
    end
;;

(** {12 Querying S_ddd in Atom_threetied_double_double_double in Atom_threetied in Atom.} *)

(* No Query from s_ddd 0. *)

(** {6 Querying Atom_fourtied in Atom.} *)

let is_atom_fourtied_symbol_off_atom_symbol = function
  | Ats_t.Atom_fourtied_symbol _ -> true
  | _ -> false
;;

(** {9 Querying C_4s in Atom_fourtied in Atom.} *)

(* No Query from c_4s 0. *)


(** {9 Querying N_4s in Atom_fourtied in Atom.} *)

(* No Query from n_4s 0. *)


(** {9 Querying S_4s in Atom_fourtied in Atom.} *)

(* No Query from s_4s 0. *)


(** {9 Querying Xe_4s in Atom_fourtied in Atom.} *)

(* No Query from xe_4s 0. *)


(** {6 Querying Atom_fivetied in Atom.} *)

let is_atom_fivetied_symbol_off_atom_symbol = function
  | Ats_t.Atom_fivetied_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Cl_5s in Atom_fivetied in Atom.} *)

(* No Query from cl_5s 0. *)


(** {6 Querying Atom_sixtied in Atom.} *)

let is_atom_sixtied_symbol_off_atom_symbol = function
  | Ats_t.Atom_sixtied_symbol _ -> true
  | _ -> false
;;

(** {9 Querying S_6s in Atom_sixtied in Atom.} *)

(* No Query from s_6s 0. *)


(** {6 Upgrading from Atom_zerotied to Atom.} *)

let atom_symbol_of_atom_zerotied_symbol smb_aze =
  Ats_t.Atom_zerotied_symbol smb_aze
;;

(** {9 Upgrading from Atom_zerotied_raregas through Atom_zerotied to Atom.} *)

let atom_symbol_of_atom_zerotied_raregas_symbol smb_arg =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_arg in
  atom_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Ar through Atom_zerotied_raregas through Atom_zerotied to Atom.} *)

let ar = atom_symbol_of_atom_zerotied_raregas_symbol Args_t.Ar;;

(** {12 Upgrading from He through Atom_zerotied_raregas through Atom_zerotied to Atom.} *)

let he = atom_symbol_of_atom_zerotied_raregas_symbol Args_t.He;;

(** {12 Upgrading from Kr through Atom_zerotied_raregas through Atom_zerotied to Atom.} *)

let kr = atom_symbol_of_atom_zerotied_raregas_symbol Args_t.Kr;;

(** {12 Upgrading from Ne through Atom_zerotied_raregas through Atom_zerotied to Atom.} *)

let ne = atom_symbol_of_atom_zerotied_raregas_symbol Args_t.Ne;;

(** {12 Upgrading from Xe through Atom_zerotied_raregas through Atom_zerotied to Atom.} *)

let xe = atom_symbol_of_atom_zerotied_raregas_symbol Args_t.Xe;;

(** {9 Upgrading from Atom_zerotied_anion through Atom_zerotied to Atom.} *)

let atom_symbol_of_atom_zerotied_anion_symbol smb_aza =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_aza in
  atom_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Atom_zerotied_anion_minus_one through Atom_zerotied_anion through Atom_zerotied to Atom.} *)

let atom_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 =
  let smb_aza = Aans_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 in
    atom_symbol_of_atom_zerotied_anion_symbol smb_aza
;;

(** {12 Upgrading from Atom_zerotied_anion_minus_two through Atom_zerotied_anion through Atom_zerotied to Atom.} *)

let atom_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 =
  let smb_aza = Aans_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 in
    atom_symbol_of_atom_zerotied_anion_symbol smb_aza
;;

(** {9 Upgrading from Atom_zerotied_cation through Atom_zerotied to Atom.} *)

let atom_symbol_of_atom_zerotied_cation_symbol smb_acn =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_acn in
  atom_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Atom_zerotied_cation_plus_one through Atom_zerotied_cation through Atom_zerotied to Atom.} *)

let atom_symbol_of_atom_zerotied_cation_plus_one_symbol smb_ac1 =
  let smb_acn = Acns_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_ac1 in
    atom_symbol_of_atom_zerotied_cation_symbol smb_acn
;;

(** {12 Upgrading from Atom_zerotied_cation_plus_two through Atom_zerotied_cation through Atom_zerotied to Atom.} *)

let atom_symbol_of_atom_zerotied_cation_plus_two_symbol smb_ac2 =
  let smb_acn = Acns_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_ac2 in
    atom_symbol_of_atom_zerotied_cation_symbol smb_acn
;;

(** {12 Upgrading from Atom_zerotied_cation_plus_three through Atom_zerotied_cation through Atom_zerotied to Atom.} *)

let atom_symbol_of_atom_zerotied_cation_plus_three_symbol smb_ac3 =
  let smb_acn = Acns_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_ac3 in
    atom_symbol_of_atom_zerotied_cation_symbol smb_acn
;;

(** {9 Upgrading from Halfbridge through Atom_zerotied to Atom.} *)

let atom_symbol_of_halfbridge_symbol smb_hbd =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_halfbridge_symbol smb_hbd in
  atom_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Hbc through Halfbridge through Atom_zerotied to Atom.} *)

let hbc = atom_symbol_of_halfbridge_symbol Hbs_t.Hbc;;

(** {12 Upgrading from Hbd through Halfbridge through Atom_zerotied to Atom.} *)

let hbd = atom_symbol_of_halfbridge_symbol Hbs_t.Hbd;;

(** {12 Upgrading from Hbs through Halfbridge through Atom_zerotied to Atom.} *)

let hbs = atom_symbol_of_halfbridge_symbol Hbs_t.Hbs;;

(** {12 Upgrading from Hbt through Halfbridge through Atom_zerotied to Atom.} *)

let hbt = atom_symbol_of_halfbridge_symbol Hbs_t.Hbt;;

(** {6 Upgrading from Atom_onetied to Atom.} *)

let atom_symbol_of_atom_onetied_symbol smb_aon =
  Ats_t.Atom_onetied_symbol smb_aon
;;

(** {9 Upgrading from Atom_onetied_conjugated through Atom_onetied to Atom.} *)

let atom_symbol_of_atom_onetied_conjugated_symbol smb_aoc =
  let smb_aon = Aons_v.atom_onetied_symbol_of_atom_onetied_conjugated_symbol smb_aoc in
  atom_symbol_of_atom_onetied_symbol smb_aon
;;

(** {12 Upgrading from O_c through Atom_onetied_conjugated through Atom_onetied to Atom.} *)

let o_c = atom_symbol_of_atom_onetied_conjugated_symbol Aocs_t.O_c;;

(** {9 Upgrading from Atom_onetied_double through Atom_onetied to Atom.} *)

let atom_symbol_of_atom_onetied_double_symbol smb_aod =
  let smb_aon = Aons_v.atom_onetied_symbol_of_atom_onetied_double_symbol smb_aod in
  atom_symbol_of_atom_onetied_symbol smb_aon
;;

(** {12 Upgrading from O_d through Atom_onetied_double through Atom_onetied to Atom.} *)

let o_d = atom_symbol_of_atom_onetied_double_symbol Aods_t.O_d;;

(** {9 Upgrading from Atom_onetied_single through Atom_onetied to Atom.} *)

let atom_symbol_of_atom_onetied_single_symbol smb_aos =
  let smb_aon = Aons_v.atom_onetied_symbol_of_atom_onetied_single_symbol smb_aos in
  atom_symbol_of_atom_onetied_symbol smb_aon
;;

(** {12 Upgrading from H_s through Atom_onetied_single through Atom_onetied to Atom.} *)

let h_s = atom_symbol_of_atom_onetied_single_symbol Aoss_t.H_s;;

(** {12 Upgrading from F_s through Atom_onetied_single through Atom_onetied to Atom.} *)

let f_s = atom_symbol_of_atom_onetied_single_symbol Aoss_t.F_s;;

(** {9 Upgrading from Atom_onetied_triple through Atom_onetied to Atom.} *)

let atom_symbol_of_atom_onetied_triple_symbol smb_aot =
  let smb_aon = Aons_v.atom_onetied_symbol_of_atom_onetied_triple_symbol smb_aot in
  atom_symbol_of_atom_onetied_symbol smb_aon
;;

(** {12 Upgrading from N_t through Atom_onetied_triple through Atom_onetied to Atom.} *)

let n_t = atom_symbol_of_atom_onetied_triple_symbol Aots_t.N_t;;

(** {12 Upgrading from O_t through Atom_onetied_triple through Atom_onetied to Atom.} *)

let o_t = atom_symbol_of_atom_onetied_triple_symbol Aots_t.O_t;;

(** {6 Upgrading from Atom_twotied to Atom.} *)

let atom_symbol_of_atom_twotied_symbol smb_atw =
  Ats_t.Atom_twotied_symbol smb_atw
;;

(** {9 Upgrading from Atom_twotied_single_single through Atom_twotied to Atom.} *)

let atom_symbol_of_atom_twotied_single_single_symbol smb_ass =
  let smb_atw = Atws_v.atom_twotied_symbol_of_atom_twotied_single_single_symbol smb_ass in
  atom_symbol_of_atom_twotied_symbol smb_atw
;;

(** {12 Upgrading from Cl_ss through Atom_twotied_single_single through Atom_twotied to Atom.} *)

let cl_ss = atom_symbol_of_atom_twotied_single_single_symbol Asss_t.Cl_ss;;

(** {12 Upgrading from F_ss through Atom_twotied_single_single through Atom_twotied to Atom.} *)

let f_ss = atom_symbol_of_atom_twotied_single_single_symbol Asss_t.F_ss;;

(** {12 Upgrading from H_ss through Atom_twotied_single_single through Atom_twotied to Atom.} *)

let h_ss = atom_symbol_of_atom_twotied_single_single_symbol Asss_t.H_ss;;

(** {9 Upgrading from Atom_twotied_single_conjugated through Atom_twotied to Atom.} *)

let atom_symbol_of_atom_twotied_single_conjugated_symbol smb_asc =
  let smb_atw = Atws_v.atom_twotied_symbol_of_atom_twotied_single_conjugated_symbol smb_asc in
  atom_symbol_of_atom_twotied_symbol smb_atw
;;

(** {12 Upgrading from N_sc through Atom_twotied_single_conjugated through Atom_twotied to Atom.} *)

let n_sc = atom_symbol_of_atom_twotied_single_conjugated_symbol Ascs_t.N_sc;;

(** {12 Upgrading from O_sc through Atom_twotied_single_conjugated through Atom_twotied to Atom.} *)

let o_sc = atom_symbol_of_atom_twotied_single_conjugated_symbol Ascs_t.O_sc;;

(** {9 Upgrading from Atom_twotied_single_double through Atom_twotied to Atom.} *)

let atom_symbol_of_atom_twotied_single_double_symbol smb_asd =
  let smb_atw = Atws_v.atom_twotied_symbol_of_atom_twotied_single_double_symbol smb_asd in
  atom_symbol_of_atom_twotied_symbol smb_atw
;;

(** {12 Upgrading from N_sd through Atom_twotied_single_double through Atom_twotied to Atom.} *)

let n_sd = atom_symbol_of_atom_twotied_single_double_symbol Asds_t.N_sd;;

(** {9 Upgrading from Atom_twotied_single_triple through Atom_twotied to Atom.} *)

let atom_symbol_of_atom_twotied_single_triple_symbol smb_ast =
  let smb_atw = Atws_v.atom_twotied_symbol_of_atom_twotied_single_triple_symbol smb_ast in
  atom_symbol_of_atom_twotied_symbol smb_atw
;;

(** {12 Upgrading from C_st through Atom_twotied_single_triple through Atom_twotied to Atom.} *)

let c_st = atom_symbol_of_atom_twotied_single_triple_symbol Asts_t.C_st;;

(** {12 Upgrading from N_st through Atom_twotied_single_triple through Atom_twotied to Atom.} *)

let n_st = atom_symbol_of_atom_twotied_single_triple_symbol Asts_t.N_st;;

(** {9 Upgrading from Atom_twotied_conjugated_conjugated through Atom_twotied to Atom.} *)

let atom_symbol_of_atom_twotied_conjugated_conjugated_symbol smb_acc =
  let smb_atw = Atws_v.atom_twotied_symbol_of_atom_twotied_conjugated_conjugated_symbol smb_acc in
  atom_symbol_of_atom_twotied_symbol smb_atw
;;

(** {12 Upgrading from N_cc through Atom_twotied_conjugated_conjugated through Atom_twotied to Atom.} *)

let n_cc = atom_symbol_of_atom_twotied_conjugated_conjugated_symbol Accs_t.N_cc;;

(** {12 Upgrading from O_cc through Atom_twotied_conjugated_conjugated through Atom_twotied to Atom.} *)

let o_cc = atom_symbol_of_atom_twotied_conjugated_conjugated_symbol Accs_t.O_cc;;

(** {9 Upgrading from Atom_twotied_conjugated_double through Atom_twotied to Atom.} *)

let atom_symbol_of_atom_twotied_conjugated_double_symbol smb_acd =
  let smb_atw = Atws_v.atom_twotied_symbol_of_atom_twotied_conjugated_double_symbol smb_acd in
  atom_symbol_of_atom_twotied_symbol smb_atw
;;

(** {12 Upgrading from C_cd through Atom_twotied_conjugated_double through Atom_twotied to Atom.} *)

let c_cd = atom_symbol_of_atom_twotied_conjugated_double_symbol Acds_t.C_cd;;

(** {9 Upgrading from Atom_twotied_double_double through Atom_twotied to Atom.} *)

let atom_symbol_of_atom_twotied_double_double_symbol smb_add =
  let smb_atw = Atws_v.atom_twotied_symbol_of_atom_twotied_double_double_symbol smb_add in
  atom_symbol_of_atom_twotied_symbol smb_atw
;;

(** {12 Upgrading from C_dd through Atom_twotied_double_double through Atom_twotied to Atom.} *)

let c_dd = atom_symbol_of_atom_twotied_double_double_symbol Adds_t.C_dd;;

(** {12 Upgrading from S_dd through Atom_twotied_double_double through Atom_twotied to Atom.} *)

let s_dd = atom_symbol_of_atom_twotied_double_double_symbol Adds_t.S_dd;;

(** {6 Upgrading from Atom_threetied to Atom.} *)

let atom_symbol_of_atom_threetied_symbol smb_ath =
  Ats_t.Atom_threetied_symbol smb_ath
;;

(** {9 Upgrading from Atom_threetied_single_single_single through Atom_threetied to Atom.} *)

let atom_symbol_of_atom_threetied_single_single_single_symbol smb_asss =
  let smb_ath = Aths_v.atom_threetied_symbol_of_atom_threetied_single_single_single_symbol smb_asss in
  atom_symbol_of_atom_threetied_symbol smb_ath
;;

(** {12 Upgrading from N_sss through Atom_threetied_single_single_single through Atom_threetied to Atom.} *)

let n_sss = atom_symbol_of_atom_threetied_single_single_single_symbol Assss_t.N_sss;;

(** {12 Upgrading from Cl_sss through Atom_threetied_single_single_single through Atom_threetied to Atom.} *)

let cl_sss = atom_symbol_of_atom_threetied_single_single_single_symbol Assss_t.Cl_sss;;

(** {9 Upgrading from Atom_threetied_single_single_double through Atom_threetied to Atom.} *)

let atom_symbol_of_atom_threetied_single_single_double_symbol smb_assd =
  let smb_ath = Aths_v.atom_threetied_symbol_of_atom_threetied_single_single_double_symbol smb_assd in
  atom_symbol_of_atom_threetied_symbol smb_ath
;;

(** {12 Upgrading from C_ssd through Atom_threetied_single_single_double through Atom_threetied to Atom.} *)

let c_ssd = atom_symbol_of_atom_threetied_single_single_double_symbol Assds_t.C_ssd;;

(** {12 Upgrading from N_sdd through Atom_threetied_single_single_double through Atom_threetied to Atom.} *)

let n_sdd = atom_symbol_of_atom_threetied_single_single_double_symbol Assds_t.N_sdd;;

(** {12 Upgrading from S_sdd through Atom_threetied_single_single_double through Atom_threetied to Atom.} *)

let s_sdd = atom_symbol_of_atom_threetied_single_single_double_symbol Assds_t.S_sdd;;

(** {9 Upgrading from Atom_threetied_single_conjugated_conjugated through Atom_threetied to Atom.} *)

let atom_symbol_of_atom_threetied_single_conjugated_conjugated_symbol smb_ascc =
  let smb_ath = Aths_v.atom_threetied_symbol_of_atom_threetied_single_conjugated_conjugated_symbol smb_ascc in
  atom_symbol_of_atom_threetied_symbol smb_ath
;;

(** {12 Upgrading from C_scc through Atom_threetied_single_conjugated_conjugated through Atom_threetied to Atom.} *)

let c_scc = atom_symbol_of_atom_threetied_single_conjugated_conjugated_symbol Asccs_t.C_scc;;

(** {12 Upgrading from N_scc through Atom_threetied_single_conjugated_conjugated through Atom_threetied to Atom.} *)

let n_scc = atom_symbol_of_atom_threetied_single_conjugated_conjugated_symbol Asccs_t.N_scc;;

(** {9 Upgrading from Atom_threetied_conjugated_conjugated_conjugated through Atom_threetied to Atom.} *)

let atom_symbol_of_atom_threetied_conjugated_conjugated_conjugated_symbol smb_accc =
  let smb_ath = Aths_v.atom_threetied_symbol_of_atom_threetied_conjugated_conjugated_conjugated_symbol smb_accc in
  atom_symbol_of_atom_threetied_symbol smb_ath
;;

(** {12 Upgrading from C_ccc through Atom_threetied_conjugated_conjugated_conjugated through Atom_threetied to Atom.} *)

let c_ccc = atom_symbol_of_atom_threetied_conjugated_conjugated_conjugated_symbol Acccs_t.C_ccc;;

(** {12 Upgrading from N_ccc through Atom_threetied_conjugated_conjugated_conjugated through Atom_threetied to Atom.} *)

let n_ccc = atom_symbol_of_atom_threetied_conjugated_conjugated_conjugated_symbol Acccs_t.N_ccc;;

(** {9 Upgrading from Atom_threetied_double_double_double through Atom_threetied to Atom.} *)

let atom_symbol_of_atom_threetied_double_double_double_symbol smb_addd =
  let smb_ath = Aths_v.atom_threetied_symbol_of_atom_threetied_double_double_double_symbol smb_addd in
  atom_symbol_of_atom_threetied_symbol smb_ath
;;

(** {12 Upgrading from S_ddd through Atom_threetied_double_double_double through Atom_threetied to Atom.} *)

let s_ddd = atom_symbol_of_atom_threetied_double_double_double_symbol Addds_t.S_ddd;;

(** {6 Upgrading from Atom_fourtied to Atom.} *)

let atom_symbol_of_atom_fourtied_symbol smb_afo =
  Ats_t.Atom_fourtied_symbol smb_afo
;;

(** {9 Upgrading from C_4s through Atom_fourtied to Atom.} *)

let c_4s = atom_symbol_of_atom_fourtied_symbol Afos_t.C_4s;;

(** {9 Upgrading from N_4s through Atom_fourtied to Atom.} *)

let n_4s = atom_symbol_of_atom_fourtied_symbol Afos_t.N_4s;;

(** {9 Upgrading from S_4s through Atom_fourtied to Atom.} *)

let s_4s = atom_symbol_of_atom_fourtied_symbol Afos_t.S_4s;;

(** {9 Upgrading from Xe_4s through Atom_fourtied to Atom.} *)

let xe_4s = atom_symbol_of_atom_fourtied_symbol Afos_t.Xe_4s;;

(** {6 Upgrading from Atom_fivetied to Atom.} *)

let atom_symbol_of_atom_fivetied_symbol smb_afi =
  Ats_t.Atom_fivetied_symbol smb_afi
;;

(** {9 Upgrading from Cl_5s through Atom_fivetied to Atom.} *)

let cl_5s = atom_symbol_of_atom_fivetied_symbol Afvs_t.Cl_5s;;

(** {6 Upgrading from Atom_sixtied to Atom.} *)

let atom_symbol_of_atom_sixtied_symbol smb_asi =
  Ats_t.Atom_sixtied_symbol smb_asi
;;

(** {9 Upgrading from S_6s through Atom_sixtied to Atom.} *)

let s_6s = atom_symbol_of_atom_sixtied_symbol Asxs_t.S_6s;;

(** {9 Valence.} *)

module Mns_v = Mendeleev_symbol_v

let mendeleev_symbol_off_atom_symbol smb_atm =
  let nam = name smb_atm in
  let str = Scanf.sscanf nam "%_s@_%s" (fun s -> s) in
  Mns_v.mendeleev_symbol_of_string str 
;;

let valence_of_atom_symbol smb_atm = 
(* need to be done at each elementary level *) 
  let smb_mnd = mendeleev_symbol_off_atom_symbol smb_atm in	
  Mns_v.default_valence_of_mendeleev_symbol smb_mnd 
;;(** created by ./do_entitysum_symbol_v_ml.sh atom 12 January 2011. *)

