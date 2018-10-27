(** {3 A Symbol for a Fragment_closed.} *)

(** {6 Displaying.} *)

val name :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    string
;;

val print : Format.formatter ->
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Fragment_zerozero from Fragment_closed.} *)

(* No Extraction from doublet fragment_zerozero. *)

(** {6 Extracting Block_zerozero from Fragment_closed.} *)

val block_zerozero_symbol_off_fragment_closed_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    Block_zerozero_symbol_t.block_zerozero_symbol
;;

(** {9 Extracting Atom_zerotied from Block_zerozero from Fragment_closed.} *)

val atom_zerotied_symbol_off_fragment_closed_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    Atom_zerotied_symbol_t.atom_zerotied_symbol
;;

(** {12 Extracting Atom_zerotied_raregas from Atom_zerotied from Block_zerozero from Fragment_closed.} *)

val atom_zerotied_raregas_symbol_off_fragment_closed_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol
;;

(** {12 Extracting Atom_zerotied_anion from Atom_zerotied from Block_zerozero from Fragment_closed.} *)

val atom_zerotied_anion_symbol_off_fragment_closed_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol
;;

(** {12 Extracting Atom_zerotied_cation from Atom_zerotied from Block_zerozero from Fragment_closed.} *)

val atom_zerotied_cation_symbol_off_fragment_closed_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol
;;

(** {12 Extracting Halfbridge from Atom_zerotied from Block_zerozero from Fragment_closed.} *)

val halfbridge_symbol_off_fragment_closed_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    Halfbridge_symbol_t.halfbridge_symbol
;;

(** {9 Extracting Block_zerozero_diatomic from Block_zerozero from Fragment_closed.} *)

val block_zerozero_diatomic_symbol_off_fragment_closed_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    Block_zerozero_diatomic_symbol_t.block_zerozero_diatomic_symbol
;;

(** {12 Extracting Co_zz from Block_zerozero_diatomic from Block_zerozero from Fragment_closed.} *)

(* No Extraction from co_zz 0. *)

(** {9 Extracting Block_zerozero_triatomic from Block_zerozero from Fragment_closed.} *)

val block_zerozero_triatomic_symbol_off_fragment_closed_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    Block_zerozero_triatomic_symbol_t.block_zerozero_triatomic_symbol
;;

(** {12 Extracting Co2_zz from Block_zerozero_triatomic from Block_zerozero from Fragment_closed.} *)

(* No Extraction from co2_zz 0. *)

(** {12 Extracting No2_zz from Block_zerozero_triatomic from Block_zerozero from Fragment_closed.} *)

(* No Extraction from no2_zz 0. *)

(** {12 Extracting Oh2_zz from Block_zerozero_triatomic from Block_zerozero from Fragment_closed.} *)

(* No Extraction from oh2_zz 0. *)

(** {12 Extracting Sh2_zz from Block_zerozero_triatomic from Block_zerozero from Fragment_closed.} *)

(* No Extraction from sh2_zz 0. *)

(** {12 Extracting So2_zz from Block_zerozero_triatomic from Block_zerozero from Fragment_closed.} *)

(* No Extraction from so2_zz 0. *)

(** {9 Extracting Block_zerozero_tetratomic from Block_zerozero from Fragment_closed.} *)

val block_zerozero_tetratomic_symbol_off_fragment_closed_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    Block_zerozero_tetratomic_symbol_t.block_zerozero_tetratomic_symbol
;;

(** {12 Extracting Cho2_1m from Block_zerozero_tetratomic from Block_zerozero from Fragment_closed.} *)

(* No Extraction from cho2_1m 0. *)

(** {12 Extracting Nh2 from Block_zerozero_tetratomic from Block_zerozero from Fragment_closed.} *)

(* No Extraction from nh2 0. *)

(** {9 Extracting Block_zerozero_pentatomic from Block_zerozero from Fragment_closed.} *)

val block_zerozero_pentatomic_symbol_off_fragment_closed_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    Block_zerozero_pentatomic_symbol_t.block_zerozero_pentatomic_symbol
;;

(** {12 Extracting Ch4_zz from Block_zerozero_pentatomic from Block_zerozero from Fragment_closed.} *)

(* No Extraction from ch4_zz 0. *)

(** {12 Extracting Nh4_zz_1p from Block_zerozero_pentatomic from Block_zerozero from Fragment_closed.} *)

(* No Extraction from nh4_zz_1p 0. *)

(** {6 Extracting Segment_head_extends_fragment_leaf from Fragment_closed.} *)

(* No Extraction from doublet segment_head_extends_fragment_leaf. *)

(** {6 Querying.} *)

(** {6 Querying Fragment_zerozero in Fragment_closed.} *)

(* No Query from fragment_zerozero 0. *)

(** {6 Querying Block_zerozero in Fragment_closed.} *)

val is_block_zerozero_symbol_off_fragment_closed_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
  bool
;;

(** {9 Querying Atom_zerotied in Block_zerozero in Fragment_closed.} *)

val is_atom_zerotied_symbol_off_fragment_closed_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_raregas in Atom_zerotied in Block_zerozero in Fragment_closed.} *)

val is_atom_zerotied_raregas_symbol_off_fragment_closed_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_anion in Atom_zerotied in Block_zerozero in Fragment_closed.} *)

val is_atom_zerotied_anion_symbol_off_fragment_closed_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_cation in Atom_zerotied in Block_zerozero in Fragment_closed.} *)

val is_atom_zerotied_cation_symbol_off_fragment_closed_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
  bool
;;

(** {12 Querying Halfbridge in Atom_zerotied in Block_zerozero in Fragment_closed.} *)

val is_halfbridge_symbol_off_fragment_closed_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
  bool
;;

(** {9 Querying Block_zerozero_diatomic in Block_zerozero in Fragment_closed.} *)

val is_block_zerozero_diatomic_symbol_off_fragment_closed_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
  bool
;;

(** {12 Querying Co_zz in Block_zerozero_diatomic in Block_zerozero in Fragment_closed.} *)

(* No Query from co_zz 0. *)

(** {9 Querying Block_zerozero_triatomic in Block_zerozero in Fragment_closed.} *)

val is_block_zerozero_triatomic_symbol_off_fragment_closed_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
  bool
;;

(** {12 Querying Co2_zz in Block_zerozero_triatomic in Block_zerozero in Fragment_closed.} *)

(* No Query from co2_zz 0. *)

(** {12 Querying No2_zz in Block_zerozero_triatomic in Block_zerozero in Fragment_closed.} *)

(* No Query from no2_zz 0. *)

(** {12 Querying Oh2_zz in Block_zerozero_triatomic in Block_zerozero in Fragment_closed.} *)

(* No Query from oh2_zz 0. *)

(** {12 Querying Sh2_zz in Block_zerozero_triatomic in Block_zerozero in Fragment_closed.} *)

(* No Query from sh2_zz 0. *)

(** {12 Querying So2_zz in Block_zerozero_triatomic in Block_zerozero in Fragment_closed.} *)

(* No Query from so2_zz 0. *)

(** {9 Querying Block_zerozero_tetratomic in Block_zerozero in Fragment_closed.} *)

val is_block_zerozero_tetratomic_symbol_off_fragment_closed_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
  bool
;;

(** {12 Querying Cho2_1m in Block_zerozero_tetratomic in Block_zerozero in Fragment_closed.} *)

(* No Query from cho2_1m 0. *)

(** {12 Querying Nh2 in Block_zerozero_tetratomic in Block_zerozero in Fragment_closed.} *)

(* No Query from nh2 0. *)

(** {9 Querying Block_zerozero_pentatomic in Block_zerozero in Fragment_closed.} *)

val is_block_zerozero_pentatomic_symbol_off_fragment_closed_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
  bool
;;

(** {12 Querying Ch4_zz in Block_zerozero_pentatomic in Block_zerozero in Fragment_closed.} *)

(* No Query from ch4_zz 0. *)

(** {12 Querying Nh4_zz_1p in Block_zerozero_pentatomic in Block_zerozero in Fragment_closed.} *)

(* No Query from nh4_zz_1p 0. *)

(** {6 Querying Segment_head_extends_fragment_leaf in Fragment_closed.} *)

(* No Query from segment_head_extends_fragment_leaf 0. *)

(** {6 Upgrading from Fragment_zerozero to Fragment_closed.} *)

val fragment_zerozero : Fragment_closed_symbol_t.fragment_closed_symbol;;

(** {6 Upgrading from Block_zerozero to Fragment_closed.} *)

val fragment_closed_symbol_of_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    Fragment_closed_symbol_t.fragment_closed_symbol
;;

(** {9 Upgrading from Atom_zerotied through Block_zerozero to Fragment_closed.} *)

val fragment_closed_symbol_of_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Fragment_closed_symbol_t.fragment_closed_symbol
;;

(** {12 Upgrading from Atom_zerotied_raregas through Atom_zerotied through Block_zerozero to Fragment_closed.} *)

val fragment_closed_symbol_of_atom_zerotied_raregas_symbol :
  Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol ->
    Fragment_closed_symbol_t.fragment_closed_symbol
;;

(** {12 Upgrading from Atom_zerotied_anion through Atom_zerotied through Block_zerozero to Fragment_closed.} *)

val fragment_closed_symbol_of_atom_zerotied_anion_symbol :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    Fragment_closed_symbol_t.fragment_closed_symbol
;;

(** {12 Upgrading from Atom_zerotied_cation through Atom_zerotied through Block_zerozero to Fragment_closed.} *)

val fragment_closed_symbol_of_atom_zerotied_cation_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    Fragment_closed_symbol_t.fragment_closed_symbol
;;

(** {12 Upgrading from Halfbridge through Atom_zerotied through Block_zerozero to Fragment_closed.} *)

val fragment_closed_symbol_of_halfbridge_symbol :
  Halfbridge_symbol_t.halfbridge_symbol ->
    Fragment_closed_symbol_t.fragment_closed_symbol
;;

(** {9 Upgrading from Block_zerozero_diatomic through Block_zerozero to Fragment_closed.} *)

val fragment_closed_symbol_of_block_zerozero_diatomic_symbol :
  Block_zerozero_diatomic_symbol_t.block_zerozero_diatomic_symbol ->
    Fragment_closed_symbol_t.fragment_closed_symbol
;;

(** {12 Upgrading from Co_zz through Block_zerozero_diatomic through Block_zerozero to Fragment_closed.} *)

val co_zz : Fragment_closed_symbol_t.fragment_closed_symbol;;
(** {9 Upgrading from Block_zerozero_triatomic through Block_zerozero to Fragment_closed.} *)

val fragment_closed_symbol_of_block_zerozero_triatomic_symbol :
  Block_zerozero_triatomic_symbol_t.block_zerozero_triatomic_symbol ->
    Fragment_closed_symbol_t.fragment_closed_symbol
;;

(** {12 Upgrading from Co2_zz through Block_zerozero_triatomic through Block_zerozero to Fragment_closed.} *)

val co2_zz : Fragment_closed_symbol_t.fragment_closed_symbol;;
(** {12 Upgrading from No2_zz through Block_zerozero_triatomic through Block_zerozero to Fragment_closed.} *)

val no2_zz : Fragment_closed_symbol_t.fragment_closed_symbol;;
(** {12 Upgrading from Oh2_zz through Block_zerozero_triatomic through Block_zerozero to Fragment_closed.} *)

val oh2_zz : Fragment_closed_symbol_t.fragment_closed_symbol;;
(** {12 Upgrading from Sh2_zz through Block_zerozero_triatomic through Block_zerozero to Fragment_closed.} *)

val sh2_zz : Fragment_closed_symbol_t.fragment_closed_symbol;;
(** {12 Upgrading from So2_zz through Block_zerozero_triatomic through Block_zerozero to Fragment_closed.} *)

val so2_zz : Fragment_closed_symbol_t.fragment_closed_symbol;;
(** {9 Upgrading from Block_zerozero_tetratomic through Block_zerozero to Fragment_closed.} *)

val fragment_closed_symbol_of_block_zerozero_tetratomic_symbol :
  Block_zerozero_tetratomic_symbol_t.block_zerozero_tetratomic_symbol ->
    Fragment_closed_symbol_t.fragment_closed_symbol
;;

(** {12 Upgrading from Cho2_1m through Block_zerozero_tetratomic through Block_zerozero to Fragment_closed.} *)

val cho2_1m : Fragment_closed_symbol_t.fragment_closed_symbol;;
(** {12 Upgrading from Nh2 through Block_zerozero_tetratomic through Block_zerozero to Fragment_closed.} *)

val nh2 : Fragment_closed_symbol_t.fragment_closed_symbol;;
(** {9 Upgrading from Block_zerozero_pentatomic through Block_zerozero to Fragment_closed.} *)

val fragment_closed_symbol_of_block_zerozero_pentatomic_symbol :
  Block_zerozero_pentatomic_symbol_t.block_zerozero_pentatomic_symbol ->
    Fragment_closed_symbol_t.fragment_closed_symbol
;;

(** {12 Upgrading from Ch4_zz through Block_zerozero_pentatomic through Block_zerozero to Fragment_closed.} *)

val ch4_zz : Fragment_closed_symbol_t.fragment_closed_symbol;;
(** {12 Upgrading from Nh4_zz_1p through Block_zerozero_pentatomic through Block_zerozero to Fragment_closed.} *)

val nh4_zz_1p : Fragment_closed_symbol_t.fragment_closed_symbol;;
(** {6 Upgrading from Segment_head_extends_fragment_leaf to Fragment_closed.} *)

val segment_head_extends_fragment_leaf : Fragment_closed_symbol_t.fragment_closed_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh fragment_closed 12 January 2011. *)

