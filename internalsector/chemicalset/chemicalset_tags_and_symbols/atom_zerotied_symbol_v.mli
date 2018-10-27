(** {3 A Symbol for a Atom_zerotied.} *)

(** {6 Displaying.} *)

val name :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Atom_zerotied_raregas from Atom_zerotied.} *)

val atom_zerotied_raregas_symbol_off_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol
;;

(** {9 Extracting Ar from Atom_zerotied_raregas from Atom_zerotied.} *)

(* No Extraction from doublet ar. *)

(** {9 Extracting He from Atom_zerotied_raregas from Atom_zerotied.} *)

(* No Extraction from doublet he. *)

(** {9 Extracting Kr from Atom_zerotied_raregas from Atom_zerotied.} *)

(* No Extraction from doublet kr. *)

(** {9 Extracting Ne from Atom_zerotied_raregas from Atom_zerotied.} *)

(* No Extraction from doublet ne. *)

(** {9 Extracting Xe from Atom_zerotied_raregas from Atom_zerotied.} *)

(* No Extraction from doublet xe. *)

(** {6 Extracting Atom_zerotied_anion from Atom_zerotied.} *)

val atom_zerotied_anion_symbol_off_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol
;;

(** {9 Extracting Atom_zerotied_anion_minus_one from Atom_zerotied_anion from Atom_zerotied.} *)

val atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Atom_zerotied_anion_minus_one_symbol_t.atom_zerotied_anion_minus_one_symbol
;;

(** {12 Extracting F_1m from Atom_zerotied_anion_minus_one from Atom_zerotied_anion from Atom_zerotied.} *)

(* No Extraction from f_1m 0. *)

(** {12 Extracting H_1m from Atom_zerotied_anion_minus_one from Atom_zerotied_anion from Atom_zerotied.} *)

(* No Extraction from h_1m 0. *)

(** {12 Extracting Cl_1m from Atom_zerotied_anion_minus_one from Atom_zerotied_anion from Atom_zerotied.} *)

(* No Extraction from cl_1m 0. *)

(** {12 Extracting Br_1m from Atom_zerotied_anion_minus_one from Atom_zerotied_anion from Atom_zerotied.} *)

(* No Extraction from br_1m 0. *)

(** {12 Extracting I_1m from Atom_zerotied_anion_minus_one from Atom_zerotied_anion from Atom_zerotied.} *)

(* No Extraction from i_1m 0. *)

(** {9 Extracting Atom_zerotied_anion_minus_two from Atom_zerotied_anion from Atom_zerotied.} *)

val atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Atom_zerotied_anion_minus_two_symbol_t.atom_zerotied_anion_minus_two_symbol
;;

(** {12 Extracting O_2m from Atom_zerotied_anion_minus_two from Atom_zerotied_anion from Atom_zerotied.} *)

(* No Extraction from o_2m 0. *)

(** {12 Extracting S_2m from Atom_zerotied_anion_minus_two from Atom_zerotied_anion from Atom_zerotied.} *)

(* No Extraction from s_2m 0. *)

(** {6 Extracting Atom_zerotied_cation from Atom_zerotied.} *)

val atom_zerotied_cation_symbol_off_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol
;;

(** {9 Extracting Atom_zerotied_cation_plus_one from Atom_zerotied_cation from Atom_zerotied.} *)

val atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Atom_zerotied_cation_plus_one_symbol_t.atom_zerotied_cation_plus_one_symbol
;;

(** {12 Extracting H_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from h_1p 0. *)

(** {12 Extracting K_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from k_1p 0. *)

(** {12 Extracting Li_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from li_1p 0. *)

(** {12 Extracting Na_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from na_1p 0. *)

(** {12 Extracting Ni_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from ni_1p 0. *)

(** {12 Extracting Cu_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from cu_1p 0. *)

(** {9 Extracting Atom_zerotied_cation_plus_two from Atom_zerotied_cation from Atom_zerotied.} *)

val atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Atom_zerotied_cation_plus_two_symbol_t.atom_zerotied_cation_plus_two_symbol
;;

(** {12 Extracting Mg_2p from Atom_zerotied_cation_plus_two from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from mg_2p 0. *)

(** {12 Extracting Ca_2p from Atom_zerotied_cation_plus_two from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from ca_2p 0. *)

(** {12 Extracting Fe_2p from Atom_zerotied_cation_plus_two from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from fe_2p 0. *)

(** {12 Extracting Zn_2p from Atom_zerotied_cation_plus_two from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from zn_2p 0. *)

(** {12 Extracting Cu_2p from Atom_zerotied_cation_plus_two from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from cu_2p 0. *)

(** {9 Extracting Atom_zerotied_cation_plus_three from Atom_zerotied_cation from Atom_zerotied.} *)

val atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Atom_zerotied_cation_plus_three_symbol_t.atom_zerotied_cation_plus_three_symbol
;;

(** {12 Extracting Fe_3p from Atom_zerotied_cation_plus_three from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from fe_3p 0. *)

(** {12 Extracting Ni_3p from Atom_zerotied_cation_plus_three from Atom_zerotied_cation from Atom_zerotied.} *)

(* No Extraction from ni_3p 0. *)

(** {6 Extracting Halfbridge from Atom_zerotied.} *)

val halfbridge_symbol_off_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Halfbridge_symbol_t.halfbridge_symbol
;;

(** {9 Extracting Hbc from Halfbridge from Atom_zerotied.} *)

(* No Extraction from doublet Hbc. *)

(** {9 Extracting Hbd from Halfbridge from Atom_zerotied.} *)

(* No Extraction from doublet Hbd. *)

(** {9 Extracting Hbs from Halfbridge from Atom_zerotied.} *)

(* No Extraction from doublet Hbs. *)

(** {9 Extracting Hbt from Halfbridge from Atom_zerotied.} *)

(* No Extraction from doublet Hbt. *)

(** {6 Querying.} *)

(** {6 Querying Atom_zerotied_raregas in Atom_zerotied.} *)

val is_atom_zerotied_raregas_symbol_off_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
  bool
;;

(** {9 Querying Ar in Atom_zerotied_raregas in Atom_zerotied.} *)

(* No Query from ar 0. *)

(** {9 Querying He in Atom_zerotied_raregas in Atom_zerotied.} *)

(* No Query from he 0. *)

(** {9 Querying Kr in Atom_zerotied_raregas in Atom_zerotied.} *)

(* No Query from kr 0. *)

(** {9 Querying Ne in Atom_zerotied_raregas in Atom_zerotied.} *)

(* No Query from ne 0. *)

(** {9 Querying Xe in Atom_zerotied_raregas in Atom_zerotied.} *)

(* No Query from xe 0. *)

(** {6 Querying Atom_zerotied_anion in Atom_zerotied.} *)

val is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
  bool
;;

(** {9 Querying Atom_zerotied_anion_minus_one in Atom_zerotied_anion in Atom_zerotied.} *)

val is_atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
  bool
;;

(** {12 Querying F_1m in Atom_zerotied_anion_minus_one in Atom_zerotied_anion in Atom_zerotied.} *)

(* No Query from f_1m 0. *)

(** {12 Querying H_1m in Atom_zerotied_anion_minus_one in Atom_zerotied_anion in Atom_zerotied.} *)

(* No Query from h_1m 0. *)

(** {12 Querying Cl_1m in Atom_zerotied_anion_minus_one in Atom_zerotied_anion in Atom_zerotied.} *)

(* No Query from cl_1m 0. *)

(** {12 Querying Br_1m in Atom_zerotied_anion_minus_one in Atom_zerotied_anion in Atom_zerotied.} *)

(* No Query from br_1m 0. *)

(** {12 Querying I_1m in Atom_zerotied_anion_minus_one in Atom_zerotied_anion in Atom_zerotied.} *)

(* No Query from i_1m 0. *)

(** {9 Querying Atom_zerotied_anion_minus_two in Atom_zerotied_anion in Atom_zerotied.} *)

val is_atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
  bool
;;

(** {12 Querying O_2m in Atom_zerotied_anion_minus_two in Atom_zerotied_anion in Atom_zerotied.} *)

(* No Query from o_2m 0. *)

(** {12 Querying S_2m in Atom_zerotied_anion_minus_two in Atom_zerotied_anion in Atom_zerotied.} *)

(* No Query from s_2m 0. *)

(** {6 Querying Atom_zerotied_cation in Atom_zerotied.} *)

val is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
  bool
;;

(** {9 Querying Atom_zerotied_cation_plus_one in Atom_zerotied_cation in Atom_zerotied.} *)

val is_atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
  bool
;;

(** {12 Querying H_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from h_1p 0. *)

(** {12 Querying K_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from k_1p 0. *)

(** {12 Querying Li_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from li_1p 0. *)

(** {12 Querying Na_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from na_1p 0. *)

(** {12 Querying Ni_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from ni_1p 0. *)

(** {12 Querying Cu_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from cu_1p 0. *)

(** {9 Querying Atom_zerotied_cation_plus_two in Atom_zerotied_cation in Atom_zerotied.} *)

val is_atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
  bool
;;

(** {12 Querying Mg_2p in Atom_zerotied_cation_plus_two in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from mg_2p 0. *)

(** {12 Querying Ca_2p in Atom_zerotied_cation_plus_two in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from ca_2p 0. *)

(** {12 Querying Fe_2p in Atom_zerotied_cation_plus_two in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from fe_2p 0. *)

(** {12 Querying Zn_2p in Atom_zerotied_cation_plus_two in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from zn_2p 0. *)

(** {12 Querying Cu_2p in Atom_zerotied_cation_plus_two in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from cu_2p 0. *)

(** {9 Querying Atom_zerotied_cation_plus_three in Atom_zerotied_cation in Atom_zerotied.} *)

val is_atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
  bool
;;

(** {12 Querying Fe_3p in Atom_zerotied_cation_plus_three in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from fe_3p 0. *)

(** {12 Querying Ni_3p in Atom_zerotied_cation_plus_three in Atom_zerotied_cation in Atom_zerotied.} *)

(* No Query from ni_3p 0. *)

(** {6 Querying Halfbridge in Atom_zerotied.} *)

val is_halfbridge_symbol_off_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
  bool
;;

(** {9 Querying Hbc in Halfbridge in Atom_zerotied.} *)

(* No Query from Hbc 0. *)

(** {9 Querying Hbd in Halfbridge in Atom_zerotied.} *)

(* No Query from Hbd 0. *)

(** {9 Querying Hbs in Halfbridge in Atom_zerotied.} *)

(* No Query from Hbs 0. *)

(** {9 Querying Hbt in Halfbridge in Atom_zerotied.} *)

(* No Query from Hbt 0. *)

(** {6 Upgrading from Atom_zerotied_raregas to Atom_zerotied.} *)

val atom_zerotied_symbol_of_atom_zerotied_raregas_symbol :
  Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol ->
    Atom_zerotied_symbol_t.atom_zerotied_symbol
;;

(** {9 Upgrading from Ar through Atom_zerotied_raregas to Atom_zerotied.} *)

val ar : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

(** {9 Upgrading from He through Atom_zerotied_raregas to Atom_zerotied.} *)

val he : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

(** {9 Upgrading from Kr through Atom_zerotied_raregas to Atom_zerotied.} *)

val kr : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

(** {9 Upgrading from Ne through Atom_zerotied_raregas to Atom_zerotied.} *)

val ne : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

(** {9 Upgrading from Xe through Atom_zerotied_raregas to Atom_zerotied.} *)

val xe : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

(** {6 Upgrading from Atom_zerotied_anion to Atom_zerotied.} *)

val atom_zerotied_symbol_of_atom_zerotied_anion_symbol :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    Atom_zerotied_symbol_t.atom_zerotied_symbol
;;

(** {9 Upgrading from Atom_zerotied_anion_minus_one through Atom_zerotied_anion to Atom_zerotied.} *)

val atom_zerotied_symbol_of_atom_zerotied_anion_minus_one_symbol :
  Atom_zerotied_anion_minus_one_symbol_t.atom_zerotied_anion_minus_one_symbol ->
    Atom_zerotied_symbol_t.atom_zerotied_symbol
;;

(** {12 Upgrading from F_1m through Atom_zerotied_anion_minus_one through Atom_zerotied_anion to Atom_zerotied.} *)

val f_1m : Atom_zerotied_symbol_t.atom_zerotied_symbol;;
(** {12 Upgrading from H_1m through Atom_zerotied_anion_minus_one through Atom_zerotied_anion to Atom_zerotied.} *)

val h_1m : Atom_zerotied_symbol_t.atom_zerotied_symbol;;
(** {12 Upgrading from Cl_1m through Atom_zerotied_anion_minus_one through Atom_zerotied_anion to Atom_zerotied.} *)

val cl_1m : Atom_zerotied_symbol_t.atom_zerotied_symbol;;
(** {12 Upgrading from Br_1m through Atom_zerotied_anion_minus_one through Atom_zerotied_anion to Atom_zerotied.} *)

val br_1m : Atom_zerotied_symbol_t.atom_zerotied_symbol;;
(** {12 Upgrading from I_1m through Atom_zerotied_anion_minus_one through Atom_zerotied_anion to Atom_zerotied.} *)

val i_1m : Atom_zerotied_symbol_t.atom_zerotied_symbol;;
(** {9 Upgrading from Atom_zerotied_anion_minus_two through Atom_zerotied_anion to Atom_zerotied.} *)

val atom_zerotied_symbol_of_atom_zerotied_anion_minus_two_symbol :
  Atom_zerotied_anion_minus_two_symbol_t.atom_zerotied_anion_minus_two_symbol ->
    Atom_zerotied_symbol_t.atom_zerotied_symbol
;;

(** {12 Upgrading from O_2m through Atom_zerotied_anion_minus_two through Atom_zerotied_anion to Atom_zerotied.} *)

val o_2m : Atom_zerotied_symbol_t.atom_zerotied_symbol;;
(** {12 Upgrading from S_2m through Atom_zerotied_anion_minus_two through Atom_zerotied_anion to Atom_zerotied.} *)

val s_2m : Atom_zerotied_symbol_t.atom_zerotied_symbol;;
(** {6 Upgrading from Atom_zerotied_cation to Atom_zerotied.} *)

val atom_zerotied_symbol_of_atom_zerotied_cation_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    Atom_zerotied_symbol_t.atom_zerotied_symbol
;;

(** {9 Upgrading from Atom_zerotied_cation_plus_one through Atom_zerotied_cation to Atom_zerotied.} *)

val atom_zerotied_symbol_of_atom_zerotied_cation_plus_one_symbol :
  Atom_zerotied_cation_plus_one_symbol_t.atom_zerotied_cation_plus_one_symbol ->
    Atom_zerotied_symbol_t.atom_zerotied_symbol
;;

(** {12 Upgrading from H_1p through Atom_zerotied_cation_plus_one through Atom_zerotied_cation to Atom_zerotied.} *)

val h_1p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;
(** {12 Upgrading from K_1p through Atom_zerotied_cation_plus_one through Atom_zerotied_cation to Atom_zerotied.} *)

val k_1p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;
(** {12 Upgrading from Li_1p through Atom_zerotied_cation_plus_one through Atom_zerotied_cation to Atom_zerotied.} *)

val li_1p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;
(** {12 Upgrading from Na_1p through Atom_zerotied_cation_plus_one through Atom_zerotied_cation to Atom_zerotied.} *)

val na_1p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;
(** {12 Upgrading from Ni_1p through Atom_zerotied_cation_plus_one through Atom_zerotied_cation to Atom_zerotied.} *)

val ni_1p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;
(** {12 Upgrading from Cu_1p through Atom_zerotied_cation_plus_one through Atom_zerotied_cation to Atom_zerotied.} *)

val cu_1p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;
(** {9 Upgrading from Atom_zerotied_cation_plus_two through Atom_zerotied_cation to Atom_zerotied.} *)

val atom_zerotied_symbol_of_atom_zerotied_cation_plus_two_symbol :
  Atom_zerotied_cation_plus_two_symbol_t.atom_zerotied_cation_plus_two_symbol ->
    Atom_zerotied_symbol_t.atom_zerotied_symbol
;;

(** {12 Upgrading from Mg_2p through Atom_zerotied_cation_plus_two through Atom_zerotied_cation to Atom_zerotied.} *)

val mg_2p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;
(** {12 Upgrading from Ca_2p through Atom_zerotied_cation_plus_two through Atom_zerotied_cation to Atom_zerotied.} *)

val ca_2p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;
(** {12 Upgrading from Fe_2p through Atom_zerotied_cation_plus_two through Atom_zerotied_cation to Atom_zerotied.} *)

val fe_2p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;
(** {12 Upgrading from Zn_2p through Atom_zerotied_cation_plus_two through Atom_zerotied_cation to Atom_zerotied.} *)

val zn_2p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;
(** {12 Upgrading from Cu_2p through Atom_zerotied_cation_plus_two through Atom_zerotied_cation to Atom_zerotied.} *)

val cu_2p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;
(** {9 Upgrading from Atom_zerotied_cation_plus_three through Atom_zerotied_cation to Atom_zerotied.} *)

val atom_zerotied_symbol_of_atom_zerotied_cation_plus_three_symbol :
  Atom_zerotied_cation_plus_three_symbol_t.atom_zerotied_cation_plus_three_symbol ->
    Atom_zerotied_symbol_t.atom_zerotied_symbol
;;

(** {12 Upgrading from Fe_3p through Atom_zerotied_cation_plus_three through Atom_zerotied_cation to Atom_zerotied.} *)

val fe_3p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;
(** {12 Upgrading from Ni_3p through Atom_zerotied_cation_plus_three through Atom_zerotied_cation to Atom_zerotied.} *)

val ni_3p : Atom_zerotied_symbol_t.atom_zerotied_symbol;;
(** {6 Upgrading from Halfbridge to Atom_zerotied.} *)

val atom_zerotied_symbol_of_halfbridge_symbol :
  Halfbridge_symbol_t.halfbridge_symbol ->
    Atom_zerotied_symbol_t.atom_zerotied_symbol
;;

(** {9 Upgrading from Hbc through Halfbridge to Atom_zerotied.} *)

val hbc : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

(** {9 Upgrading from Hbd through Halfbridge to Atom_zerotied.} *)

val hbd : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

(** {9 Upgrading from Hbs through Halfbridge to Atom_zerotied.} *)

val hbs : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

(** {9 Upgrading from Hbt through Halfbridge to Atom_zerotied.} *)

val hbt : Atom_zerotied_symbol_t.atom_zerotied_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh atom_zerotied 12 January 2011. *)

