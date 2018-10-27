(** {3 A Symbol for a Atom.} *)

(** {6 Displaying.} *)

val name :
  Atom_symbol_t.atom_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_symbol_t.atom_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Atom_zerotied from Atom.} *)

val atom_zerotied_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_zerotied_symbol_t.atom_zerotied_symbol
;;

(** {9 Extracting Atom_zerotied_raregas from Atom_zerotied from Atom.} *)

val atom_zerotied_raregas_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol
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

val atom_zerotied_anion_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol
;;

(** {12 Extracting Atom_zerotied_anion_minus_one from Atom_zerotied_anion from Atom_zerotied from Atom.} *)

val atom_zerotied_anion_minus_one_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_zerotied_anion_minus_one_symbol_t.atom_zerotied_anion_minus_one_symbol
;;

(** {12 Extracting Atom_zerotied_anion_minus_two from Atom_zerotied_anion from Atom_zerotied from Atom.} *)

val atom_zerotied_anion_minus_two_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_zerotied_anion_minus_two_symbol_t.atom_zerotied_anion_minus_two_symbol
;;

(** {9 Extracting Atom_zerotied_cation from Atom_zerotied from Atom.} *)

val atom_zerotied_cation_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol
;;

(** {12 Extracting Atom_zerotied_cation_plus_one from Atom_zerotied_cation from Atom_zerotied from Atom.} *)

val atom_zerotied_cation_plus_one_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_zerotied_cation_plus_one_symbol_t.atom_zerotied_cation_plus_one_symbol
;;

(** {12 Extracting Atom_zerotied_cation_plus_two from Atom_zerotied_cation from Atom_zerotied from Atom.} *)

val atom_zerotied_cation_plus_two_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_zerotied_cation_plus_two_symbol_t.atom_zerotied_cation_plus_two_symbol
;;

(** {12 Extracting Atom_zerotied_cation_plus_three from Atom_zerotied_cation from Atom_zerotied from Atom.} *)

val atom_zerotied_cation_plus_three_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_zerotied_cation_plus_three_symbol_t.atom_zerotied_cation_plus_three_symbol
;;

(** {9 Extracting Halfbridge from Atom_zerotied from Atom.} *)

val halfbridge_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Halfbridge_symbol_t.halfbridge_symbol
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

val atom_onetied_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_onetied_symbol_t.atom_onetied_symbol
;;

(** {9 Extracting Atom_onetied_conjugated from Atom_onetied from Atom.} *)

val atom_onetied_conjugated_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_onetied_conjugated_symbol_t.atom_onetied_conjugated_symbol
;;

(** {12 Extracting O_c from Atom_onetied_conjugated from Atom_onetied from Atom.} *)

(* No Extraction from o_c 0. *)

(** {9 Extracting Atom_onetied_double from Atom_onetied from Atom.} *)

val atom_onetied_double_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_onetied_double_symbol_t.atom_onetied_double_symbol
;;

(** {12 Extracting O_d from Atom_onetied_double from Atom_onetied from Atom.} *)

(* No Extraction from o_d 0. *)

(** {9 Extracting Atom_onetied_single from Atom_onetied from Atom.} *)

val atom_onetied_single_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_onetied_single_symbol_t.atom_onetied_single_symbol
;;

(** {12 Extracting H_s from Atom_onetied_single from Atom_onetied from Atom.} *)

(* No Extraction from h_s 0. *)

(** {12 Extracting F_s from Atom_onetied_single from Atom_onetied from Atom.} *)

(* No Extraction from f_s 0. *)

(** {9 Extracting Atom_onetied_triple from Atom_onetied from Atom.} *)

val atom_onetied_triple_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_onetied_triple_symbol_t.atom_onetied_triple_symbol
;;

(** {12 Extracting N_t from Atom_onetied_triple from Atom_onetied from Atom.} *)

(* No Extraction from n_t 0. *)

(** {12 Extracting O_t from Atom_onetied_triple from Atom_onetied from Atom.} *)

(* No Extraction from o_t 0. *)

(** {6 Extracting Atom_twotied from Atom.} *)

val atom_twotied_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_twotied_symbol_t.atom_twotied_symbol
;;

(** {9 Extracting Atom_twotied_single_single from Atom_twotied from Atom.} *)

val atom_twotied_single_single_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_twotied_single_single_symbol_t.atom_twotied_single_single_symbol
;;

(** {12 Extracting Cl_ss from Atom_twotied_single_single from Atom_twotied from Atom.} *)

(* No Extraction from cl_ss 0. *)

(** {12 Extracting F_ss from Atom_twotied_single_single from Atom_twotied from Atom.} *)

(* No Extraction from f_ss 0. *)

(** {12 Extracting H_ss from Atom_twotied_single_single from Atom_twotied from Atom.} *)

(* No Extraction from h_ss 0. *)

(** {9 Extracting Atom_twotied_single_conjugated from Atom_twotied from Atom.} *)

val atom_twotied_single_conjugated_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_twotied_single_conjugated_symbol_t.atom_twotied_single_conjugated_symbol
;;

(** {12 Extracting N_sc from Atom_twotied_single_conjugated from Atom_twotied from Atom.} *)

(* No Extraction from n_sc 0. *)

(** {12 Extracting O_sc from Atom_twotied_single_conjugated from Atom_twotied from Atom.} *)

(* No Extraction from o_sc 0. *)

(** {9 Extracting Atom_twotied_single_double from Atom_twotied from Atom.} *)

val atom_twotied_single_double_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_twotied_single_double_symbol_t.atom_twotied_single_double_symbol
;;

(** {12 Extracting N_sd from Atom_twotied_single_double from Atom_twotied from Atom.} *)

(* No Extraction from n_sd 0. *)

(** {9 Extracting Atom_twotied_single_triple from Atom_twotied from Atom.} *)

val atom_twotied_single_triple_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_twotied_single_triple_symbol_t.atom_twotied_single_triple_symbol
;;

(** {12 Extracting C_st from Atom_twotied_single_triple from Atom_twotied from Atom.} *)

(* No Extraction from c_st 0. *)

(** {12 Extracting N_st from Atom_twotied_single_triple from Atom_twotied from Atom.} *)

(* No Extraction from n_st 0. *)

(** {9 Extracting Atom_twotied_conjugated_conjugated from Atom_twotied from Atom.} *)

val atom_twotied_conjugated_conjugated_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_twotied_conjugated_conjugated_symbol_t.atom_twotied_conjugated_conjugated_symbol
;;

(** {12 Extracting N_cc from Atom_twotied_conjugated_conjugated from Atom_twotied from Atom.} *)

(* No Extraction from n_cc 0. *)

(** {12 Extracting O_cc from Atom_twotied_conjugated_conjugated from Atom_twotied from Atom.} *)

(* No Extraction from o_cc 0. *)

(** {9 Extracting Atom_twotied_conjugated_double from Atom_twotied from Atom.} *)

val atom_twotied_conjugated_double_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_twotied_conjugated_double_symbol_t.atom_twotied_conjugated_double_symbol
;;

(** {12 Extracting C_cd from Atom_twotied_conjugated_double from Atom_twotied from Atom.} *)

(* No Extraction from c_cd 0. *)

(** {9 Extracting Atom_twotied_double_double from Atom_twotied from Atom.} *)

val atom_twotied_double_double_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_twotied_double_double_symbol_t.atom_twotied_double_double_symbol
;;

(** {12 Extracting C_dd from Atom_twotied_double_double from Atom_twotied from Atom.} *)

(* No Extraction from c_dd 0. *)

(** {12 Extracting S_dd from Atom_twotied_double_double from Atom_twotied from Atom.} *)

(* No Extraction from s_dd 0. *)

(** {6 Extracting Atom_threetied from Atom.} *)

val atom_threetied_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_threetied_symbol_t.atom_threetied_symbol
;;

(** {9 Extracting Atom_threetied_single_single_single from Atom_threetied from Atom.} *)

val atom_threetied_single_single_single_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_threetied_single_single_single_symbol_t.atom_threetied_single_single_single_symbol
;;

(** {12 Extracting N_sss from Atom_threetied_single_single_single from Atom_threetied from Atom.} *)

(* No Extraction from n_sss 0. *)

(** {12 Extracting Cl_sss from Atom_threetied_single_single_single from Atom_threetied from Atom.} *)

(* No Extraction from cl_sss 0. *)

(** {9 Extracting Atom_threetied_single_single_double from Atom_threetied from Atom.} *)

val atom_threetied_single_single_double_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_threetied_single_single_double_symbol_t.atom_threetied_single_single_double_symbol
;;

(** {12 Extracting C_ssd from Atom_threetied_single_single_double from Atom_threetied from Atom.} *)

(* No Extraction from c_ssd 0. *)

(** {12 Extracting N_sdd from Atom_threetied_single_single_double from Atom_threetied from Atom.} *)

(* No Extraction from n_sdd 0. *)

(** {12 Extracting S_sdd from Atom_threetied_single_single_double from Atom_threetied from Atom.} *)

(* No Extraction from s_sdd 0. *)

(** {9 Extracting Atom_threetied_single_conjugated_conjugated from Atom_threetied from Atom.} *)

val atom_threetied_single_conjugated_conjugated_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_threetied_single_conjugated_conjugated_symbol_t.atom_threetied_single_conjugated_conjugated_symbol
;;

(** {12 Extracting C_scc from Atom_threetied_single_conjugated_conjugated from Atom_threetied from Atom.} *)

(* No Extraction from c_scc 0. *)

(** {12 Extracting N_scc from Atom_threetied_single_conjugated_conjugated from Atom_threetied from Atom.} *)

(* No Extraction from n_scc 0. *)

(** {9 Extracting Atom_threetied_conjugated_conjugated_conjugated from Atom_threetied from Atom.} *)

val atom_threetied_conjugated_conjugated_conjugated_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_threetied_conjugated_conjugated_conjugated_symbol_t.atom_threetied_conjugated_conjugated_conjugated_symbol
;;

(** {12 Extracting C_ccc from Atom_threetied_conjugated_conjugated_conjugated from Atom_threetied from Atom.} *)

(* No Extraction from c_ccc 0. *)

(** {12 Extracting N_ccc from Atom_threetied_conjugated_conjugated_conjugated from Atom_threetied from Atom.} *)

(* No Extraction from n_ccc 0. *)

(** {9 Extracting Atom_threetied_double_double_double from Atom_threetied from Atom.} *)

val atom_threetied_double_double_double_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_threetied_double_double_double_symbol_t.atom_threetied_double_double_double_symbol
;;

(** {12 Extracting S_ddd from Atom_threetied_double_double_double from Atom_threetied from Atom.} *)

(* No Extraction from s_ddd 0. *)

(** {6 Extracting Atom_fourtied from Atom.} *)

val atom_fourtied_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_fourtied_symbol_t.atom_fourtied_symbol
;;

(** {9 Extracting C_4s from Atom_fourtied from Atom.} *)

(* No Extraction from doublet c_4s. *)

(** {9 Extracting N_4s from Atom_fourtied from Atom.} *)

(* No Extraction from doublet n_4s. *)

(** {9 Extracting S_4s from Atom_fourtied from Atom.} *)

(* No Extraction from doublet s_4s. *)

(** {9 Extracting Xe_4s from Atom_fourtied from Atom.} *)

(* No Extraction from doublet xe_4s. *)

(** {6 Extracting Atom_fivetied from Atom.} *)

val atom_fivetied_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_fivetied_symbol_t.atom_fivetied_symbol
;;

(** {9 Extracting Cl_5s from Atom_fivetied from Atom.} *)

(* No Extraction from doublet cl_5s. *)

(** {6 Extracting Atom_sixtied from Atom.} *)

val atom_sixtied_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Atom_sixtied_symbol_t.atom_sixtied_symbol
;;

(** {9 Extracting S_6s from Atom_sixtied from Atom.} *)

(* No Extraction from doublet s_6s. *)

(** {6 Querying.} *)

(** {6 Querying Atom_zerotied in Atom.} *)

val is_atom_zerotied_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {9 Querying Atom_zerotied_raregas in Atom_zerotied in Atom.} *)

val is_atom_zerotied_raregas_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
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

val is_atom_zerotied_anion_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_anion_minus_one in Atom_zerotied_anion in Atom_zerotied in Atom.} *)

val is_atom_zerotied_anion_minus_one_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_anion_minus_two in Atom_zerotied_anion in Atom_zerotied in Atom.} *)

val is_atom_zerotied_anion_minus_two_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {9 Querying Atom_zerotied_cation in Atom_zerotied in Atom.} *)

val is_atom_zerotied_cation_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_cation_plus_one in Atom_zerotied_cation in Atom_zerotied in Atom.} *)

val is_atom_zerotied_cation_plus_one_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_cation_plus_two in Atom_zerotied_cation in Atom_zerotied in Atom.} *)

val is_atom_zerotied_cation_plus_two_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_cation_plus_three in Atom_zerotied_cation in Atom_zerotied in Atom.} *)

val is_atom_zerotied_cation_plus_three_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {9 Querying Halfbridge in Atom_zerotied in Atom.} *)

val is_halfbridge_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
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

val is_atom_onetied_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {9 Querying Atom_onetied_conjugated in Atom_onetied in Atom.} *)

val is_atom_onetied_conjugated_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {12 Querying O_c in Atom_onetied_conjugated in Atom_onetied in Atom.} *)

(* No Query from o_c 0. *)

(** {9 Querying Atom_onetied_double in Atom_onetied in Atom.} *)

val is_atom_onetied_double_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {12 Querying O_d in Atom_onetied_double in Atom_onetied in Atom.} *)

(* No Query from o_d 0. *)

(** {9 Querying Atom_onetied_single in Atom_onetied in Atom.} *)

val is_atom_onetied_single_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {12 Querying H_s in Atom_onetied_single in Atom_onetied in Atom.} *)

(* No Query from h_s 0. *)

(** {12 Querying F_s in Atom_onetied_single in Atom_onetied in Atom.} *)

(* No Query from f_s 0. *)

(** {9 Querying Atom_onetied_triple in Atom_onetied in Atom.} *)

val is_atom_onetied_triple_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {12 Querying N_t in Atom_onetied_triple in Atom_onetied in Atom.} *)

(* No Query from n_t 0. *)

(** {12 Querying O_t in Atom_onetied_triple in Atom_onetied in Atom.} *)

(* No Query from o_t 0. *)

(** {6 Querying Atom_twotied in Atom.} *)

val is_atom_twotied_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {9 Querying Atom_twotied_single_single in Atom_twotied in Atom.} *)

val is_atom_twotied_single_single_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {12 Querying Cl_ss in Atom_twotied_single_single in Atom_twotied in Atom.} *)

(* No Query from cl_ss 0. *)

(** {12 Querying F_ss in Atom_twotied_single_single in Atom_twotied in Atom.} *)

(* No Query from f_ss 0. *)

(** {12 Querying H_ss in Atom_twotied_single_single in Atom_twotied in Atom.} *)

(* No Query from h_ss 0. *)

(** {9 Querying Atom_twotied_single_conjugated in Atom_twotied in Atom.} *)

val is_atom_twotied_single_conjugated_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {12 Querying N_sc in Atom_twotied_single_conjugated in Atom_twotied in Atom.} *)

(* No Query from n_sc 0. *)

(** {12 Querying O_sc in Atom_twotied_single_conjugated in Atom_twotied in Atom.} *)

(* No Query from o_sc 0. *)

(** {9 Querying Atom_twotied_single_double in Atom_twotied in Atom.} *)

val is_atom_twotied_single_double_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {12 Querying N_sd in Atom_twotied_single_double in Atom_twotied in Atom.} *)

(* No Query from n_sd 0. *)

(** {9 Querying Atom_twotied_single_triple in Atom_twotied in Atom.} *)

val is_atom_twotied_single_triple_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {12 Querying C_st in Atom_twotied_single_triple in Atom_twotied in Atom.} *)

(* No Query from c_st 0. *)

(** {12 Querying N_st in Atom_twotied_single_triple in Atom_twotied in Atom.} *)

(* No Query from n_st 0. *)

(** {9 Querying Atom_twotied_conjugated_conjugated in Atom_twotied in Atom.} *)

val is_atom_twotied_conjugated_conjugated_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {12 Querying N_cc in Atom_twotied_conjugated_conjugated in Atom_twotied in Atom.} *)

(* No Query from n_cc 0. *)

(** {12 Querying O_cc in Atom_twotied_conjugated_conjugated in Atom_twotied in Atom.} *)

(* No Query from o_cc 0. *)

(** {9 Querying Atom_twotied_conjugated_double in Atom_twotied in Atom.} *)

val is_atom_twotied_conjugated_double_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {12 Querying C_cd in Atom_twotied_conjugated_double in Atom_twotied in Atom.} *)

(* No Query from c_cd 0. *)

(** {9 Querying Atom_twotied_double_double in Atom_twotied in Atom.} *)

val is_atom_twotied_double_double_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {12 Querying C_dd in Atom_twotied_double_double in Atom_twotied in Atom.} *)

(* No Query from c_dd 0. *)

(** {12 Querying S_dd in Atom_twotied_double_double in Atom_twotied in Atom.} *)

(* No Query from s_dd 0. *)

(** {6 Querying Atom_threetied in Atom.} *)

val is_atom_threetied_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {9 Querying Atom_threetied_single_single_single in Atom_threetied in Atom.} *)

val is_atom_threetied_single_single_single_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {12 Querying N_sss in Atom_threetied_single_single_single in Atom_threetied in Atom.} *)

(* No Query from n_sss 0. *)

(** {12 Querying Cl_sss in Atom_threetied_single_single_single in Atom_threetied in Atom.} *)

(* No Query from cl_sss 0. *)

(** {9 Querying Atom_threetied_single_single_double in Atom_threetied in Atom.} *)

val is_atom_threetied_single_single_double_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {12 Querying C_ssd in Atom_threetied_single_single_double in Atom_threetied in Atom.} *)

(* No Query from c_ssd 0. *)

(** {12 Querying N_sdd in Atom_threetied_single_single_double in Atom_threetied in Atom.} *)

(* No Query from n_sdd 0. *)

(** {12 Querying S_sdd in Atom_threetied_single_single_double in Atom_threetied in Atom.} *)

(* No Query from s_sdd 0. *)

(** {9 Querying Atom_threetied_single_conjugated_conjugated in Atom_threetied in Atom.} *)

val is_atom_threetied_single_conjugated_conjugated_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {12 Querying C_scc in Atom_threetied_single_conjugated_conjugated in Atom_threetied in Atom.} *)

(* No Query from c_scc 0. *)

(** {12 Querying N_scc in Atom_threetied_single_conjugated_conjugated in Atom_threetied in Atom.} *)

(* No Query from n_scc 0. *)

(** {9 Querying Atom_threetied_conjugated_conjugated_conjugated in Atom_threetied in Atom.} *)

val is_atom_threetied_conjugated_conjugated_conjugated_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {12 Querying C_ccc in Atom_threetied_conjugated_conjugated_conjugated in Atom_threetied in Atom.} *)

(* No Query from c_ccc 0. *)

(** {12 Querying N_ccc in Atom_threetied_conjugated_conjugated_conjugated in Atom_threetied in Atom.} *)

(* No Query from n_ccc 0. *)

(** {9 Querying Atom_threetied_double_double_double in Atom_threetied in Atom.} *)

val is_atom_threetied_double_double_double_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {12 Querying S_ddd in Atom_threetied_double_double_double in Atom_threetied in Atom.} *)

(* No Query from s_ddd 0. *)

(** {6 Querying Atom_fourtied in Atom.} *)

val is_atom_fourtied_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
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

val is_atom_fivetied_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {9 Querying Cl_5s in Atom_fivetied in Atom.} *)

(* No Query from cl_5s 0. *)

(** {6 Querying Atom_sixtied in Atom.} *)

val is_atom_sixtied_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
  bool
;;

(** {9 Querying S_6s in Atom_sixtied in Atom.} *)

(* No Query from s_6s 0. *)

(** {6 Upgrading from Atom_zerotied to Atom.} *)

val atom_symbol_of_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {9 Upgrading from Atom_zerotied_raregas through Atom_zerotied to Atom.} *)

val atom_symbol_of_atom_zerotied_raregas_symbol :
  Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {12 Upgrading from Ar through Atom_zerotied_raregas through Atom_zerotied to Atom.} *)

val ar : Atom_symbol_t.atom_symbol;;
(** {12 Upgrading from He through Atom_zerotied_raregas through Atom_zerotied to Atom.} *)

val he : Atom_symbol_t.atom_symbol;;
(** {12 Upgrading from Kr through Atom_zerotied_raregas through Atom_zerotied to Atom.} *)

val kr : Atom_symbol_t.atom_symbol;;
(** {12 Upgrading from Ne through Atom_zerotied_raregas through Atom_zerotied to Atom.} *)

val ne : Atom_symbol_t.atom_symbol;;
(** {12 Upgrading from Xe through Atom_zerotied_raregas through Atom_zerotied to Atom.} *)

val xe : Atom_symbol_t.atom_symbol;;
(** {9 Upgrading from Atom_zerotied_anion through Atom_zerotied to Atom.} *)

val atom_symbol_of_atom_zerotied_anion_symbol :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {12 Upgrading from Atom_zerotied_anion_minus_one through Atom_zerotied_anion through Atom_zerotied to Atom.} *)

val atom_symbol_of_atom_zerotied_anion_minus_one_symbol :
  Atom_zerotied_anion_minus_one_symbol_t.atom_zerotied_anion_minus_one_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {12 Upgrading from Atom_zerotied_anion_minus_two through Atom_zerotied_anion through Atom_zerotied to Atom.} *)

val atom_symbol_of_atom_zerotied_anion_minus_two_symbol :
  Atom_zerotied_anion_minus_two_symbol_t.atom_zerotied_anion_minus_two_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {9 Upgrading from Atom_zerotied_cation through Atom_zerotied to Atom.} *)

val atom_symbol_of_atom_zerotied_cation_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {12 Upgrading from Atom_zerotied_cation_plus_one through Atom_zerotied_cation through Atom_zerotied to Atom.} *)

val atom_symbol_of_atom_zerotied_cation_plus_one_symbol :
  Atom_zerotied_cation_plus_one_symbol_t.atom_zerotied_cation_plus_one_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {12 Upgrading from Atom_zerotied_cation_plus_two through Atom_zerotied_cation through Atom_zerotied to Atom.} *)

val atom_symbol_of_atom_zerotied_cation_plus_two_symbol :
  Atom_zerotied_cation_plus_two_symbol_t.atom_zerotied_cation_plus_two_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {12 Upgrading from Atom_zerotied_cation_plus_three through Atom_zerotied_cation through Atom_zerotied to Atom.} *)

val atom_symbol_of_atom_zerotied_cation_plus_three_symbol :
  Atom_zerotied_cation_plus_three_symbol_t.atom_zerotied_cation_plus_three_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {9 Upgrading from Halfbridge through Atom_zerotied to Atom.} *)

val atom_symbol_of_halfbridge_symbol :
  Halfbridge_symbol_t.halfbridge_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {12 Upgrading from Hbc through Halfbridge through Atom_zerotied to Atom.} *)

val hbc : Atom_symbol_t.atom_symbol;;
(** {12 Upgrading from Hbd through Halfbridge through Atom_zerotied to Atom.} *)

val hbd : Atom_symbol_t.atom_symbol;;
(** {12 Upgrading from Hbs through Halfbridge through Atom_zerotied to Atom.} *)

val hbs : Atom_symbol_t.atom_symbol;;
(** {12 Upgrading from Hbt through Halfbridge through Atom_zerotied to Atom.} *)

val hbt : Atom_symbol_t.atom_symbol;;
(** {6 Upgrading from Atom_onetied to Atom.} *)

val atom_symbol_of_atom_onetied_symbol :
  Atom_onetied_symbol_t.atom_onetied_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {9 Upgrading from Atom_onetied_conjugated through Atom_onetied to Atom.} *)

val atom_symbol_of_atom_onetied_conjugated_symbol :
  Atom_onetied_conjugated_symbol_t.atom_onetied_conjugated_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {12 Upgrading from O_c through Atom_onetied_conjugated through Atom_onetied to Atom.} *)

val o_c : Atom_symbol_t.atom_symbol;;
(** {9 Upgrading from Atom_onetied_double through Atom_onetied to Atom.} *)

val atom_symbol_of_atom_onetied_double_symbol :
  Atom_onetied_double_symbol_t.atom_onetied_double_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {12 Upgrading from O_d through Atom_onetied_double through Atom_onetied to Atom.} *)

val o_d : Atom_symbol_t.atom_symbol;;
(** {9 Upgrading from Atom_onetied_single through Atom_onetied to Atom.} *)

val atom_symbol_of_atom_onetied_single_symbol :
  Atom_onetied_single_symbol_t.atom_onetied_single_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {12 Upgrading from H_s through Atom_onetied_single through Atom_onetied to Atom.} *)

val h_s : Atom_symbol_t.atom_symbol;;
(** {12 Upgrading from F_s through Atom_onetied_single through Atom_onetied to Atom.} *)

val f_s : Atom_symbol_t.atom_symbol;;
(** {9 Upgrading from Atom_onetied_triple through Atom_onetied to Atom.} *)

val atom_symbol_of_atom_onetied_triple_symbol :
  Atom_onetied_triple_symbol_t.atom_onetied_triple_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {12 Upgrading from N_t through Atom_onetied_triple through Atom_onetied to Atom.} *)

val n_t : Atom_symbol_t.atom_symbol;;
(** {12 Upgrading from O_t through Atom_onetied_triple through Atom_onetied to Atom.} *)

val o_t : Atom_symbol_t.atom_symbol;;
(** {6 Upgrading from Atom_twotied to Atom.} *)

val atom_symbol_of_atom_twotied_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {9 Upgrading from Atom_twotied_single_single through Atom_twotied to Atom.} *)

val atom_symbol_of_atom_twotied_single_single_symbol :
  Atom_twotied_single_single_symbol_t.atom_twotied_single_single_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {12 Upgrading from Cl_ss through Atom_twotied_single_single through Atom_twotied to Atom.} *)

val cl_ss : Atom_symbol_t.atom_symbol;;
(** {12 Upgrading from F_ss through Atom_twotied_single_single through Atom_twotied to Atom.} *)

val f_ss : Atom_symbol_t.atom_symbol;;
(** {12 Upgrading from H_ss through Atom_twotied_single_single through Atom_twotied to Atom.} *)

val h_ss : Atom_symbol_t.atom_symbol;;
(** {9 Upgrading from Atom_twotied_single_conjugated through Atom_twotied to Atom.} *)

val atom_symbol_of_atom_twotied_single_conjugated_symbol :
  Atom_twotied_single_conjugated_symbol_t.atom_twotied_single_conjugated_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {12 Upgrading from N_sc through Atom_twotied_single_conjugated through Atom_twotied to Atom.} *)

val n_sc : Atom_symbol_t.atom_symbol;;
(** {12 Upgrading from O_sc through Atom_twotied_single_conjugated through Atom_twotied to Atom.} *)

val o_sc : Atom_symbol_t.atom_symbol;;
(** {9 Upgrading from Atom_twotied_single_double through Atom_twotied to Atom.} *)

val atom_symbol_of_atom_twotied_single_double_symbol :
  Atom_twotied_single_double_symbol_t.atom_twotied_single_double_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {12 Upgrading from N_sd through Atom_twotied_single_double through Atom_twotied to Atom.} *)

val n_sd : Atom_symbol_t.atom_symbol;;
(** {9 Upgrading from Atom_twotied_single_triple through Atom_twotied to Atom.} *)

val atom_symbol_of_atom_twotied_single_triple_symbol :
  Atom_twotied_single_triple_symbol_t.atom_twotied_single_triple_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {12 Upgrading from C_st through Atom_twotied_single_triple through Atom_twotied to Atom.} *)

val c_st : Atom_symbol_t.atom_symbol;;
(** {12 Upgrading from N_st through Atom_twotied_single_triple through Atom_twotied to Atom.} *)

val n_st : Atom_symbol_t.atom_symbol;;
(** {9 Upgrading from Atom_twotied_conjugated_conjugated through Atom_twotied to Atom.} *)

val atom_symbol_of_atom_twotied_conjugated_conjugated_symbol :
  Atom_twotied_conjugated_conjugated_symbol_t.atom_twotied_conjugated_conjugated_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {12 Upgrading from N_cc through Atom_twotied_conjugated_conjugated through Atom_twotied to Atom.} *)

val n_cc : Atom_symbol_t.atom_symbol;;
(** {12 Upgrading from O_cc through Atom_twotied_conjugated_conjugated through Atom_twotied to Atom.} *)

val o_cc : Atom_symbol_t.atom_symbol;;
(** {9 Upgrading from Atom_twotied_conjugated_double through Atom_twotied to Atom.} *)

val atom_symbol_of_atom_twotied_conjugated_double_symbol :
  Atom_twotied_conjugated_double_symbol_t.atom_twotied_conjugated_double_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {12 Upgrading from C_cd through Atom_twotied_conjugated_double through Atom_twotied to Atom.} *)

val c_cd : Atom_symbol_t.atom_symbol;;
(** {9 Upgrading from Atom_twotied_double_double through Atom_twotied to Atom.} *)

val atom_symbol_of_atom_twotied_double_double_symbol :
  Atom_twotied_double_double_symbol_t.atom_twotied_double_double_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {12 Upgrading from C_dd through Atom_twotied_double_double through Atom_twotied to Atom.} *)

val c_dd : Atom_symbol_t.atom_symbol;;
(** {12 Upgrading from S_dd through Atom_twotied_double_double through Atom_twotied to Atom.} *)

val s_dd : Atom_symbol_t.atom_symbol;;
(** {6 Upgrading from Atom_threetied to Atom.} *)

val atom_symbol_of_atom_threetied_symbol :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {9 Upgrading from Atom_threetied_single_single_single through Atom_threetied to Atom.} *)

val atom_symbol_of_atom_threetied_single_single_single_symbol :
  Atom_threetied_single_single_single_symbol_t.atom_threetied_single_single_single_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {12 Upgrading from N_sss through Atom_threetied_single_single_single through Atom_threetied to Atom.} *)

val n_sss : Atom_symbol_t.atom_symbol;;
(** {12 Upgrading from Cl_sss through Atom_threetied_single_single_single through Atom_threetied to Atom.} *)

val cl_sss : Atom_symbol_t.atom_symbol;;
(** {9 Upgrading from Atom_threetied_single_single_double through Atom_threetied to Atom.} *)

val atom_symbol_of_atom_threetied_single_single_double_symbol :
  Atom_threetied_single_single_double_symbol_t.atom_threetied_single_single_double_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {12 Upgrading from C_ssd through Atom_threetied_single_single_double through Atom_threetied to Atom.} *)

val c_ssd : Atom_symbol_t.atom_symbol;;
(** {12 Upgrading from N_sdd through Atom_threetied_single_single_double through Atom_threetied to Atom.} *)

val n_sdd : Atom_symbol_t.atom_symbol;;
(** {12 Upgrading from S_sdd through Atom_threetied_single_single_double through Atom_threetied to Atom.} *)

val s_sdd : Atom_symbol_t.atom_symbol;;
(** {9 Upgrading from Atom_threetied_single_conjugated_conjugated through Atom_threetied to Atom.} *)

val atom_symbol_of_atom_threetied_single_conjugated_conjugated_symbol :
  Atom_threetied_single_conjugated_conjugated_symbol_t.atom_threetied_single_conjugated_conjugated_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {12 Upgrading from C_scc through Atom_threetied_single_conjugated_conjugated through Atom_threetied to Atom.} *)

val c_scc : Atom_symbol_t.atom_symbol;;
(** {12 Upgrading from N_scc through Atom_threetied_single_conjugated_conjugated through Atom_threetied to Atom.} *)

val n_scc : Atom_symbol_t.atom_symbol;;
(** {9 Upgrading from Atom_threetied_conjugated_conjugated_conjugated through Atom_threetied to Atom.} *)

val atom_symbol_of_atom_threetied_conjugated_conjugated_conjugated_symbol :
  Atom_threetied_conjugated_conjugated_conjugated_symbol_t.atom_threetied_conjugated_conjugated_conjugated_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {12 Upgrading from C_ccc through Atom_threetied_conjugated_conjugated_conjugated through Atom_threetied to Atom.} *)

val c_ccc : Atom_symbol_t.atom_symbol;;
(** {12 Upgrading from N_ccc through Atom_threetied_conjugated_conjugated_conjugated through Atom_threetied to Atom.} *)

val n_ccc : Atom_symbol_t.atom_symbol;;
(** {9 Upgrading from Atom_threetied_double_double_double through Atom_threetied to Atom.} *)

val atom_symbol_of_atom_threetied_double_double_double_symbol :
  Atom_threetied_double_double_double_symbol_t.atom_threetied_double_double_double_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {12 Upgrading from S_ddd through Atom_threetied_double_double_double through Atom_threetied to Atom.} *)

val s_ddd : Atom_symbol_t.atom_symbol;;
(** {6 Upgrading from Atom_fourtied to Atom.} *)

val atom_symbol_of_atom_fourtied_symbol :
  Atom_fourtied_symbol_t.atom_fourtied_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {9 Upgrading from C_4s through Atom_fourtied to Atom.} *)

val c_4s : Atom_symbol_t.atom_symbol;;

(** {9 Upgrading from N_4s through Atom_fourtied to Atom.} *)

val n_4s : Atom_symbol_t.atom_symbol;;

(** {9 Upgrading from S_4s through Atom_fourtied to Atom.} *)

val s_4s : Atom_symbol_t.atom_symbol;;

(** {9 Upgrading from Xe_4s through Atom_fourtied to Atom.} *)

val xe_4s : Atom_symbol_t.atom_symbol;;

(** {6 Upgrading from Atom_fivetied to Atom.} *)

val atom_symbol_of_atom_fivetied_symbol :
  Atom_fivetied_symbol_t.atom_fivetied_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {9 Upgrading from Cl_5s through Atom_fivetied to Atom.} *)

val cl_5s : Atom_symbol_t.atom_symbol;;

(** {6 Upgrading from Atom_sixtied to Atom.} *)

val atom_symbol_of_atom_sixtied_symbol :
  Atom_sixtied_symbol_t.atom_sixtied_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {9 Upgrading from S_6s through Atom_sixtied to Atom.} *)

val s_6s : Atom_symbol_t.atom_symbol;;

(** {9 Valence.} *)

val mendeleev_symbol_off_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Mendeleev_symbol_t.mendeleev_symbol
;;

val valence_of_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Mendeleev_symbol_t.valence  
;;
(** created by ./do_entitysum_symbol_v_mli.sh atom 12 January 2011. *)

