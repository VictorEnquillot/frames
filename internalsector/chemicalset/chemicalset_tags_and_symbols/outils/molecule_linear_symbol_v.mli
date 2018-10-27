(** {3 A Symbol for a Molecule_linear.} *)


let name :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    string
;;


val print : Format.Formatter ->
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    unit
;;


(** {6 Extracting.} *)

val molecule_linear_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    Mlms_v
;;

val molecule_linear_symbol_off_atom_zerotied_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    A0s_v
;;

val molecule_linear_symbol_off_atom_zerotied_raregas_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    A0rs_v
;;

val molecule_linear_symbol_off_atom_zerotied_anion_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    A0as_v
;;

val molecule_linear_symbol_off_atom_zerotied_anion_minus_one_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    A0am1s_v
;;

val molecule_linear_symbol_off_atom_zerotied_anion_minus_two_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    A0am2s_v
;;

val molecule_linear_symbol_off_atom_zerotied_cation_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    A0cs_v
;;

val molecule_linear_symbol_off_atom_zerotied_cation_plus_one_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    A0cp1s_v
;;

val molecule_linear_symbol_off_atom_zerotied_cation_plus_two_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    A0cp2s_v
;;

val molecule_linear_symbol_off_atom_zerotied_cation_plus_three_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    A0cp3s_v
;;

val molecule_linear_symbol_off_halfbridge_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    Has_v
;;

val molecule_linear_symbol_off_molecule_linear_diatomic_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    Mlds_v
;;

val molecule_linear_symbol_off_molecule_linear_triatomic_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    Mlts_v
;;

val molecule_linear_symbol_off_molecule_linear_tetratomic_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    Mlqs_v
;;

val molecule_linear_symbol_off_molecule_linear_pentatomic_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    Mlcs_v
;;

val molecule_linear_symbol_off_molecule_linear_polyatomic_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    Mlps_v
;;


(** {6 Querying.} *)

val is_molecule_linear_symbol_off_molecule_linear_monoatomic_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    bool
;;

val is_molecule_linear_symbol_off_atom_zerotied_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    bool
;;

val is_molecule_linear_symbol_off_atom_zerotied_raregas_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    bool
;;

val is_molecule_linear_symbol_off_atom_zerotied_anion_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    bool
;;

val is_molecule_linear_symbol_off_atom_zerotied_anion_minus_one_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    bool
;;

val is_molecule_linear_symbol_off_atom_zerotied_anion_minus_two_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    bool
;;

val is_molecule_linear_symbol_off_atom_zerotied_cation_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    bool
;;

val is_molecule_linear_symbol_off_atom_zerotied_cation_plus_one_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    bool
;;

val is_molecule_linear_symbol_off_atom_zerotied_cation_plus_two_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    bool
;;

val is_molecule_linear_symbol_off_atom_zerotied_cation_plus_three_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    bool
;;

val is_molecule_linear_symbol_off_halfbridge_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    bool
;;

val is_molecule_linear_symbol_off_molecule_linear_diatomic_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    bool
;;

val is_molecule_linear_symbol_off_molecule_linear_triatomic_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    bool
;;

val is_molecule_linear_symbol_off_molecule_linear_tetratomic_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    bool
;;

val is_molecule_linear_symbol_off_molecule_linear_pentatomic_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    bool
;;

val is_molecule_linear_symbol_off_molecule_linear_polyatomic_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val molecule_linear_symbol_of_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    Mls_v
;;

val molecule_linear_symbol_of_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Mls_v
;;

val molecule_linear_symbol_of_atom_zerotied_raregas_symbol :
  Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol ->
    Mls_v
;;

val ar : Molecule_linear_symbol_t.molecule_linear_symbol;;

val he : Molecule_linear_symbol_t.molecule_linear_symbol;;

val kr : Molecule_linear_symbol_t.molecule_linear_symbol;;

val ne : Molecule_linear_symbol_t.molecule_linear_symbol;;

val xe : Molecule_linear_symbol_t.molecule_linear_symbol;;

val molecule_linear_symbol_of_atom_zerotied_anion_symbol :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    Mls_v
;;

val molecule_linear_symbol_of_atom_zerotied_anion_minus_one_symbol :
  Atom_zerotied_anion_minus_one_symbol_t.atom_zerotied_anion_minus_one_symbol ->
    Mls_v
;;

val f_1m : Molecule_linear_symbol_t.molecule_linear_symbol;;

val h_1m : Molecule_linear_symbol_t.molecule_linear_symbol;;

val cl_1m : Molecule_linear_symbol_t.molecule_linear_symbol;;

val br_1m : Molecule_linear_symbol_t.molecule_linear_symbol;;

val i_1m : Molecule_linear_symbol_t.molecule_linear_symbol;;

val molecule_linear_symbol_of_atom_zerotied_anion_minus_two_symbol :
  Atom_zerotied_anion_minus_two_symbol_t.atom_zerotied_anion_minus_two_symbol ->
    Mls_v
;;

val o_2m : Molecule_linear_symbol_t.molecule_linear_symbol;;

val s_2m : Molecule_linear_symbol_t.molecule_linear_symbol;;

val molecule_linear_symbol_of_atom_zerotied_cation_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    Mls_v
;;

val molecule_linear_symbol_of_atom_zerotied_cation_plus_one_symbol :
  Atom_zerotied_cation_plus_one_symbol_t.atom_zerotied_cation_plus_one_symbol ->
    Mls_v
;;

val h_1p : Molecule_linear_symbol_t.molecule_linear_symbol;;

val k_1p : Molecule_linear_symbol_t.molecule_linear_symbol;;

val li_1p : Molecule_linear_symbol_t.molecule_linear_symbol;;

val na_1p : Molecule_linear_symbol_t.molecule_linear_symbol;;

val ni_1p : Molecule_linear_symbol_t.molecule_linear_symbol;;

val cu_1p : Molecule_linear_symbol_t.molecule_linear_symbol;;

val molecule_linear_symbol_of_atom_zerotied_cation_plus_two_symbol :
  Atom_zerotied_cation_plus_two_symbol_t.atom_zerotied_cation_plus_two_symbol ->
    Mls_v
;;

val mg_2p : Molecule_linear_symbol_t.molecule_linear_symbol;;

val ca_2p : Molecule_linear_symbol_t.molecule_linear_symbol;;

val fe_2p : Molecule_linear_symbol_t.molecule_linear_symbol;;

val zn_2p : Molecule_linear_symbol_t.molecule_linear_symbol;;

val cu_2p : Molecule_linear_symbol_t.molecule_linear_symbol;;

val molecule_linear_symbol_of_atom_zerotied_cation_plus_three_symbol :
  Atom_zerotied_cation_plus_three_symbol_t.atom_zerotied_cation_plus_three_symbol ->
    Mls_v
;;

val fe_3p : Molecule_linear_symbol_t.molecule_linear_symbol;;

val ni_3p : Molecule_linear_symbol_t.molecule_linear_symbol;;

val molecule_linear_symbol_of_halfbridge_symbol :
  Halfbridge_symbol_t.halfbridge_symbol ->
    Mls_v
;;

val Hbc : Molecule_linear_symbol_t.molecule_linear_symbol;;

val Hbd : Molecule_linear_symbol_t.molecule_linear_symbol;;

val Hbs : Molecule_linear_symbol_t.molecule_linear_symbol;;

val Hbt : Molecule_linear_symbol_t.molecule_linear_symbol;;

val molecule_linear_symbol_of_molecule_linear_diatomic_symbol :
  Molecule_linear_diatomic_symbol_t.molecule_linear_diatomic_symbol ->
    Mls_v
;;

val carbonmonoxide : Molecule_linear_symbol_t.molecule_linear_symbol;;

val dihydrogen : Molecule_linear_symbol_t.molecule_linear_symbol;;

val dinitrogen : Molecule_linear_symbol_t.molecule_linear_symbol;;

val dioxygen : Molecule_linear_symbol_t.molecule_linear_symbol;;

val hydrogenchloride : Molecule_linear_symbol_t.molecule_linear_symbol;;

val hydrogenfluoride : Molecule_linear_symbol_t.molecule_linear_symbol;;

val molecule_linear_symbol_of_molecule_linear_triatomic_symbol :
  Molecule_linear_triatomic_symbol_t.molecule_linear_triatomic_symbol ->
    Mls_v
;;

val hydrogensulfide : Molecule_linear_symbol_t.molecule_linear_symbol;;

val water : Molecule_linear_symbol_t.molecule_linear_symbol;;

val molecule_linear_symbol_of_molecule_linear_tetratomic_symbol :
  Molecule_linear_tetratomic_symbol_t.molecule_linear_tetratomic_symbol ->
    Mls_v
;;

val ammonia : Molecule_linear_symbol_t.molecule_linear_symbol;;

val molecule_linear_symbol_of_molecule_linear_pentatomic_symbol :
  Molecule_linear_pentatomic_symbol_t.molecule_linear_pentatomic_symbol ->
    Mls_v
;;

val methane : Molecule_linear_symbol_t.molecule_linear_symbol;;

val molecule_linear_symbol_of_molecule_linear_polyatomic_symbol :
  Molecule_linear_polyatomic_symbol_t.molecule_linear_polyatomic_symbol ->
    Mls_v
;;

val ethane : Molecule_linear_symbol_t.molecule_linear_symbol;;

val propane : Molecule_linear_symbol_t.molecule_linear_symbol;;

val butane : Molecule_linear_symbol_t.molecule_linear_symbol;;



(** created by ./generator molecule_linear v symbol at 9:28 26 Apr 2011. *)



