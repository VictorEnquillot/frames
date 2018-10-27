(** {3 A Symbol for a Molecule_linear_monoatomic.} *)


let name :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    string
;;


val print : Format.Formatter ->
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    unit
;;


(** {6 Extracting.} *)

val molecule_linear_monoatomic_symbol_off_atom_zerotied_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    A0s_v
;;

val molecule_linear_monoatomic_symbol_off_atom_zerotied_raregas_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    A0rs_v
;;

val molecule_linear_monoatomic_symbol_off_atom_zerotied_anion_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    A0as_v
;;

val molecule_linear_monoatomic_symbol_off_atom_zerotied_anion_minus_one_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    A0am1s_v
;;

val molecule_linear_monoatomic_symbol_off_atom_zerotied_anion_minus_two_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    A0am2s_v
;;

val molecule_linear_monoatomic_symbol_off_atom_zerotied_cation_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    A0cs_v
;;

val molecule_linear_monoatomic_symbol_off_atom_zerotied_cation_plus_one_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    A0cp1s_v
;;

val molecule_linear_monoatomic_symbol_off_atom_zerotied_cation_plus_two_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    A0cp2s_v
;;

val molecule_linear_monoatomic_symbol_off_atom_zerotied_cation_plus_three_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    A0cp3s_v
;;

val molecule_linear_monoatomic_symbol_off_halfbridge_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    Has_v
;;


(** {6 Querying.} *)

val is_molecule_linear_monoatomic_symbol_off_atom_zerotied_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    bool
;;

val is_molecule_linear_monoatomic_symbol_off_atom_zerotied_raregas_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    bool
;;

val is_molecule_linear_monoatomic_symbol_off_atom_zerotied_anion_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    bool
;;

val is_molecule_linear_monoatomic_symbol_off_atom_zerotied_anion_minus_one_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    bool
;;

val is_molecule_linear_monoatomic_symbol_off_atom_zerotied_anion_minus_two_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    bool
;;

val is_molecule_linear_monoatomic_symbol_off_atom_zerotied_cation_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    bool
;;

val is_molecule_linear_monoatomic_symbol_off_atom_zerotied_cation_plus_one_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    bool
;;

val is_molecule_linear_monoatomic_symbol_off_atom_zerotied_cation_plus_two_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    bool
;;

val is_molecule_linear_monoatomic_symbol_off_atom_zerotied_cation_plus_three_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    bool
;;

val is_molecule_linear_monoatomic_symbol_off_halfbridge_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val molecule_linear_monoatomic_symbol_of_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Mlms_v
;;

val molecule_linear_monoatomic_symbol_of_atom_zerotied_raregas_symbol :
  Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol ->
    Mlms_v
;;

val ar : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val he : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val kr : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val ne : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val xe : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val molecule_linear_monoatomic_symbol_of_atom_zerotied_anion_symbol :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    Mlms_v
;;

val molecule_linear_monoatomic_symbol_of_atom_zerotied_anion_minus_one_symbol :
  Atom_zerotied_anion_minus_one_symbol_t.atom_zerotied_anion_minus_one_symbol ->
    Mlms_v
;;

val f_1m : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val h_1m : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val cl_1m : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val br_1m : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val i_1m : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val molecule_linear_monoatomic_symbol_of_atom_zerotied_anion_minus_two_symbol :
  Atom_zerotied_anion_minus_two_symbol_t.atom_zerotied_anion_minus_two_symbol ->
    Mlms_v
;;

val o_2m : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val s_2m : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val molecule_linear_monoatomic_symbol_of_atom_zerotied_cation_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    Mlms_v
;;

val molecule_linear_monoatomic_symbol_of_atom_zerotied_cation_plus_one_symbol :
  Atom_zerotied_cation_plus_one_symbol_t.atom_zerotied_cation_plus_one_symbol ->
    Mlms_v
;;

val h_1p : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val k_1p : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val li_1p : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val na_1p : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val ni_1p : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val cu_1p : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val molecule_linear_monoatomic_symbol_of_atom_zerotied_cation_plus_two_symbol :
  Atom_zerotied_cation_plus_two_symbol_t.atom_zerotied_cation_plus_two_symbol ->
    Mlms_v
;;

val mg_2p : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val ca_2p : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val fe_2p : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val zn_2p : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val cu_2p : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val molecule_linear_monoatomic_symbol_of_atom_zerotied_cation_plus_three_symbol :
  Atom_zerotied_cation_plus_three_symbol_t.atom_zerotied_cation_plus_three_symbol ->
    Mlms_v
;;

val fe_3p : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val ni_3p : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val molecule_linear_monoatomic_symbol_of_halfbridge_symbol :
  Halfbridge_symbol_t.halfbridge_symbol ->
    Mlms_v
;;

val Hbc : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val Hbd : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val Hbs : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;

val Hbt : Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol;;



(** created by ./generator molecule_linear_monoatomic v symbol at 9:28 26 Apr 2011. *)



