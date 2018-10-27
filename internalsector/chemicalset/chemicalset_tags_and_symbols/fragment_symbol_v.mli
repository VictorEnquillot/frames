(** {3 A Symbol for a Fragment.} *)

(** {6 Displaying.} *)

val name :
  Fragment_symbol_t.fragment_symbol ->
    string
;;

val print : Format.formatter ->
  Fragment_symbol_t.fragment_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Fragment_closed from Fragment.} *)

val fragment_closed_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
    Fragment_closed_symbol_t.fragment_closed_symbol
;;

(** {9 Extracting Fragment_zerozero from Fragment_closed from Fragment.} *)

(* No Extraction from doublet fragment_zerozero. *)

(** {9 Extracting Block_zerozero from Fragment_closed from Fragment.} *)

val block_zerozero_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
    Block_zerozero_symbol_t.block_zerozero_symbol
;;

(** {12 Extracting Atom_zerotied from Block_zerozero from Fragment_closed from Fragment.} *)

val atom_zerotied_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
    Atom_zerotied_symbol_t.atom_zerotied_symbol
;;

(** {12 Extracting Block_zerozero_diatomic from Block_zerozero from Fragment_closed from Fragment.} *)

val block_zerozero_diatomic_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
    Block_zerozero_diatomic_symbol_t.block_zerozero_diatomic_symbol
;;

(** {12 Extracting Block_zerozero_triatomic from Block_zerozero from Fragment_closed from Fragment.} *)

val block_zerozero_triatomic_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
    Block_zerozero_triatomic_symbol_t.block_zerozero_triatomic_symbol
;;

(** {12 Extracting Block_zerozero_tetratomic from Block_zerozero from Fragment_closed from Fragment.} *)

val block_zerozero_tetratomic_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
    Block_zerozero_tetratomic_symbol_t.block_zerozero_tetratomic_symbol
;;

(** {12 Extracting Block_zerozero_pentatomic from Block_zerozero from Fragment_closed from Fragment.} *)

val block_zerozero_pentatomic_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
    Block_zerozero_pentatomic_symbol_t.block_zerozero_pentatomic_symbol
;;

(** {9 Extracting Segment_head_extends_fragment_leaf from Fragment_closed from Fragment.} *)

(* No Extraction from doublet segment_head_extends_fragment_leaf. *)

(** {6 Extracting Fragment_head from Fragment.} *)

val fragment_head_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
    Fragment_head_symbol_t.fragment_head_symbol
;;

(** {9 Extracting Fragment_head_halfbridge from Fragment_head from Fragment.} *)

(* No Extraction from doublet fragment_head_halfbridge. *)

(** {9 Extracting Block_zerofork from Fragment_head from Fragment.} *)

val block_zerofork_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
    Block_zerofork_symbol_t.block_zerofork_symbol
;;

(** {12 Extracting Block_zerobifork from Block_zerofork from Fragment_head from Fragment.} *)

val block_zerobifork_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
    Block_zerobifork_symbol_t.block_zerobifork_symbol
;;

(** {12 Extracting Block_zerotrifork from Block_zerofork from Fragment_head from Fragment.} *)

val block_zerotrifork_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
    Block_zerotrifork_symbol_t.block_zerotrifork_symbol
;;

(** {12 Extracting Block_zeroquadrifork from Block_zerofork from Fragment_head from Fragment.} *)

val block_zeroquadrifork_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
    Block_zeroquadrifork_symbol_t.block_zeroquadrifork_symbol
;;

(** {9 Extracting Fragment_zerofork from Fragment_head from Fragment.} *)

(* No Extraction from doublet fragment_zerofork. *)

(** {9 Extracting Segment_head_extends_fragment_buried from Fragment_head from Fragment.} *)

(* No Extraction from doublet segment_head_extends_fragment_buried. *)

(** {6 Extracting Fragment_buried from Fragment.} *)

val fragment_buried_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
    Fragment_buried_symbol_t.fragment_buried_symbol
;;

(** {9 Extracting Fragment_onefork from Fragment_buried from Fragment.} *)

(* No Extraction from doublet fragment_onefork. *)

(** {9 Extracting Block_onefork from Fragment_buried from Fragment.} *)

val block_onefork_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
    Block_onefork_symbol_t.block_onefork_symbol
;;

(** {12 Extracting Block_onebifork from Block_onefork from Fragment_buried from Fragment.} *)

val block_onebifork_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
    Block_onebifork_symbol_t.block_onebifork_symbol
;;

(** {12 Extracting Block_onetrifork from Block_onefork from Fragment_buried from Fragment.} *)

val block_onetrifork_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
    Block_onetrifork_symbol_t.block_onetrifork_symbol
;;

(** {9 Extracting Polysegment_buried_leftextended from Fragment_buried from Fragment.} *)

(* No Extraction from doublet polysegment_buried_leftextended. *)

(** {6 Extracting Fragment_leaf from Fragment.} *)

val fragment_leaf_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
    Fragment_leaf_symbol_t.fragment_leaf_symbol
;;

(** {9 Extracting Fragment_halfbridgetail from Fragment_leaf from Fragment.} *)

(* No Extraction from doublet fragment_halfbridgetail. *)

(** {9 Extracting Fragment_halfbridge from Fragment_leaf from Fragment.} *)

(* No Extraction from doublet fragment_halfbridge. *)

(** {9 Extracting Block_zerofork from Fragment_leaf from Fragment.} *)

val block_zerofork_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
    Block_zerofork_symbol_t.block_zerofork_symbol
;;

(** {12 Extracting Block_zerobifork from Block_zerofork from Fragment_leaf from Fragment.} *)

val block_zerobifork_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
    Block_zerobifork_symbol_t.block_zerobifork_symbol
;;

(** {12 Extracting Block_zerotrifork from Block_zerofork from Fragment_leaf from Fragment.} *)

val block_zerotrifork_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
    Block_zerotrifork_symbol_t.block_zerotrifork_symbol
;;

(** {12 Extracting Block_zeroquadrifork from Block_zerofork from Fragment_leaf from Fragment.} *)

val block_zeroquadrifork_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
    Block_zeroquadrifork_symbol_t.block_zeroquadrifork_symbol
;;

(** {9 Extracting Fragment_zerofork from Fragment_leaf from Fragment.} *)

(* No Extraction from doublet fragment_zerofork. *)

(** {9 Extracting Segment_head_extends_fragment_buried from Fragment_leaf from Fragment.} *)

(* No Extraction from doublet segment_head_extends_fragment_buried. *)

(** {6 Querying.} *)

(** {6 Querying Fragment_closed in Fragment.} *)

val is_fragment_closed_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
  bool
;;

(** {9 Querying Fragment_zerozero in Fragment_closed in Fragment.} *)

(* No Query from fragment_zerozero 0. *)

(** {9 Querying Block_zerozero in Fragment_closed in Fragment.} *)

val is_block_zerozero_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied in Block_zerozero in Fragment_closed in Fragment.} *)

val is_atom_zerotied_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
  bool
;;

(** {12 Querying Block_zerozero_diatomic in Block_zerozero in Fragment_closed in Fragment.} *)

val is_block_zerozero_diatomic_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
  bool
;;

(** {12 Querying Block_zerozero_triatomic in Block_zerozero in Fragment_closed in Fragment.} *)

val is_block_zerozero_triatomic_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
  bool
;;

(** {12 Querying Block_zerozero_tetratomic in Block_zerozero in Fragment_closed in Fragment.} *)

val is_block_zerozero_tetratomic_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
  bool
;;

(** {12 Querying Block_zerozero_pentatomic in Block_zerozero in Fragment_closed in Fragment.} *)

val is_block_zerozero_pentatomic_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
  bool
;;

(** {9 Querying Segment_head_extends_fragment_leaf in Fragment_closed in Fragment.} *)

(* No Query from segment_head_extends_fragment_leaf 0. *)

(** {6 Querying Fragment_head in Fragment.} *)

val is_fragment_head_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
  bool
;;

(** {9 Querying Fragment_head_halfbridge in Fragment_head in Fragment.} *)

(* No Query from fragment_head_halfbridge 0. *)

(** {9 Querying Block_zerofork in Fragment_head in Fragment.} *)

val is_block_zerofork_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
  bool
;;

(** {12 Querying Block_zerobifork in Block_zerofork in Fragment_head in Fragment.} *)

val is_block_zerobifork_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
  bool
;;

(** {12 Querying Block_zerotrifork in Block_zerofork in Fragment_head in Fragment.} *)

val is_block_zerotrifork_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
  bool
;;

(** {12 Querying Block_zeroquadrifork in Block_zerofork in Fragment_head in Fragment.} *)

val is_block_zeroquadrifork_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
  bool
;;

(** {9 Querying Fragment_zerofork in Fragment_head in Fragment.} *)

(* No Query from fragment_zerofork 0. *)

(** {9 Querying Segment_head_extends_fragment_buried in Fragment_head in Fragment.} *)

(* No Query from segment_head_extends_fragment_buried 0. *)

(** {6 Querying Fragment_buried in Fragment.} *)

val is_fragment_buried_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
  bool
;;

(** {9 Querying Fragment_onefork in Fragment_buried in Fragment.} *)

(* No Query from fragment_onefork 0. *)

(** {9 Querying Block_onefork in Fragment_buried in Fragment.} *)

val is_block_onefork_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
  bool
;;

(** {12 Querying Block_onebifork in Block_onefork in Fragment_buried in Fragment.} *)

val is_block_onebifork_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
  bool
;;

(** {12 Querying Block_onetrifork in Block_onefork in Fragment_buried in Fragment.} *)

val is_block_onetrifork_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
  bool
;;

(** {9 Querying Polysegment_buried_leftextended in Fragment_buried in Fragment.} *)

(* No Query from polysegment_buried_leftextended 0. *)

(** {6 Querying Fragment_leaf in Fragment.} *)

val is_fragment_leaf_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
  bool
;;

(** {9 Querying Fragment_halfbridgetail in Fragment_leaf in Fragment.} *)

(* No Query from fragment_halfbridgetail 0. *)

(** {9 Querying Fragment_halfbridge in Fragment_leaf in Fragment.} *)

(* No Query from fragment_halfbridge 0. *)

(** {9 Querying Block_zerofork in Fragment_leaf in Fragment.} *)

val is_block_zerofork_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
  bool
;;

(** {12 Querying Block_zerobifork in Block_zerofork in Fragment_leaf in Fragment.} *)

val is_block_zerobifork_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
  bool
;;

(** {12 Querying Block_zerotrifork in Block_zerofork in Fragment_leaf in Fragment.} *)

val is_block_zerotrifork_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
  bool
;;

(** {12 Querying Block_zeroquadrifork in Block_zerofork in Fragment_leaf in Fragment.} *)

val is_block_zeroquadrifork_symbol_off_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
  bool
;;

(** {9 Querying Fragment_zerofork in Fragment_leaf in Fragment.} *)

(* No Query from fragment_zerofork 0. *)

(** {9 Querying Segment_head_extends_fragment_buried in Fragment_leaf in Fragment.} *)

(* No Query from segment_head_extends_fragment_buried 0. *)

(** {6 Upgrading from Fragment_closed to Fragment.} *)

val fragment_symbol_of_fragment_closed_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    Fragment_symbol_t.fragment_symbol
;;

(** {9 Upgrading from Fragment_zerozero through Fragment_closed to Fragment.} *)

val fragment_zerozero : Fragment_symbol_t.fragment_symbol;;

(** {9 Upgrading from Block_zerozero through Fragment_closed to Fragment.} *)

val fragment_symbol_of_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    Fragment_symbol_t.fragment_symbol
;;

(** {12 Upgrading from Atom_zerotied through Block_zerozero through Fragment_closed to Fragment.} *)

val fragment_symbol_of_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Fragment_symbol_t.fragment_symbol
;;

(** {12 Upgrading from Block_zerozero_diatomic through Block_zerozero through Fragment_closed to Fragment.} *)

val fragment_symbol_of_block_zerozero_diatomic_symbol :
  Block_zerozero_diatomic_symbol_t.block_zerozero_diatomic_symbol ->
    Fragment_symbol_t.fragment_symbol
;;

(** {12 Upgrading from Block_zerozero_triatomic through Block_zerozero through Fragment_closed to Fragment.} *)

val fragment_symbol_of_block_zerozero_triatomic_symbol :
  Block_zerozero_triatomic_symbol_t.block_zerozero_triatomic_symbol ->
    Fragment_symbol_t.fragment_symbol
;;

(** {12 Upgrading from Block_zerozero_tetratomic through Block_zerozero through Fragment_closed to Fragment.} *)

val fragment_symbol_of_block_zerozero_tetratomic_symbol :
  Block_zerozero_tetratomic_symbol_t.block_zerozero_tetratomic_symbol ->
    Fragment_symbol_t.fragment_symbol
;;

(** {12 Upgrading from Block_zerozero_pentatomic through Block_zerozero through Fragment_closed to Fragment.} *)

val fragment_symbol_of_block_zerozero_pentatomic_symbol :
  Block_zerozero_pentatomic_symbol_t.block_zerozero_pentatomic_symbol ->
    Fragment_symbol_t.fragment_symbol
;;

(** {9 Upgrading from Segment_head_extends_fragment_leaf through Fragment_closed to Fragment.} *)

val segment_head_extends_fragment_leaf : Fragment_symbol_t.fragment_symbol;;

(** {6 Upgrading from Fragment_head to Fragment.} *)

val fragment_symbol_of_fragment_head_symbol :
  Fragment_head_symbol_t.fragment_head_symbol ->
    Fragment_symbol_t.fragment_symbol
;;

(** {9 Upgrading from Fragment_head_halfbridge through Fragment_head to Fragment.} *)

val fragment_head_halfbridge : Fragment_symbol_t.fragment_symbol;;

(** {9 Upgrading from Block_zerofork through Fragment_head to Fragment.} *)

val fragment_symbol_of_block_zerofork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    Fragment_symbol_t.fragment_symbol
;;

(** {12 Upgrading from Block_zerobifork through Block_zerofork through Fragment_head to Fragment.} *)

val fragment_symbol_of_block_zerobifork_symbol :
  Block_zerobifork_symbol_t.block_zerobifork_symbol ->
    Fragment_symbol_t.fragment_symbol
;;

(** {12 Upgrading from Block_zerotrifork through Block_zerofork through Fragment_head to Fragment.} *)

val fragment_symbol_of_block_zerotrifork_symbol :
  Block_zerotrifork_symbol_t.block_zerotrifork_symbol ->
    Fragment_symbol_t.fragment_symbol
;;

(** {12 Upgrading from Block_zeroquadrifork through Block_zerofork through Fragment_head to Fragment.} *)

val fragment_symbol_of_block_zeroquadrifork_symbol :
  Block_zeroquadrifork_symbol_t.block_zeroquadrifork_symbol ->
    Fragment_symbol_t.fragment_symbol
;;

(** {9 Upgrading from Fragment_zerofork through Fragment_head to Fragment.} *)

val fragment_zerofork : Fragment_symbol_t.fragment_symbol;;

(** {9 Upgrading from Segment_head_extends_fragment_buried through Fragment_head to Fragment.} *)

val segment_head_extends_fragment_buried : Fragment_symbol_t.fragment_symbol;;

(** {6 Upgrading from Fragment_buried to Fragment.} *)

val fragment_symbol_of_fragment_buried_symbol :
  Fragment_buried_symbol_t.fragment_buried_symbol ->
    Fragment_symbol_t.fragment_symbol
;;

(** {9 Upgrading from Fragment_onefork through Fragment_buried to Fragment.} *)

val fragment_onefork : Fragment_symbol_t.fragment_symbol;;

(** {9 Upgrading from Block_onefork through Fragment_buried to Fragment.} *)

val fragment_symbol_of_block_onefork_symbol :
  Block_onefork_symbol_t.block_onefork_symbol ->
    Fragment_symbol_t.fragment_symbol
;;

(** {12 Upgrading from Block_onebifork through Block_onefork through Fragment_buried to Fragment.} *)

val fragment_symbol_of_block_onebifork_symbol :
  Block_onebifork_symbol_t.block_onebifork_symbol ->
    Fragment_symbol_t.fragment_symbol
;;

(** {12 Upgrading from Block_onetrifork through Block_onefork through Fragment_buried to Fragment.} *)

val fragment_symbol_of_block_onetrifork_symbol :
  Block_onetrifork_symbol_t.block_onetrifork_symbol ->
    Fragment_symbol_t.fragment_symbol
;;

(** {9 Upgrading from Polysegment_buried_leftextended through Fragment_buried to Fragment.} *)

val polysegment_buried_leftextended : Fragment_symbol_t.fragment_symbol;;

(** {6 Upgrading from Fragment_leaf to Fragment.} *)

val fragment_symbol_of_fragment_leaf_symbol :
  Fragment_leaf_symbol_t.fragment_leaf_symbol ->
    Fragment_symbol_t.fragment_symbol
;;

(** {9 Upgrading from Fragment_halfbridgetail through Fragment_leaf to Fragment.} *)

val fragment_halfbridgetail : Fragment_symbol_t.fragment_symbol;;

(** {9 Upgrading from Fragment_halfbridge through Fragment_leaf to Fragment.} *)

val fragment_halfbridge : Fragment_symbol_t.fragment_symbol;;

(** {9 Upgrading from Block_zerofork through Fragment_leaf to Fragment.} *)

val fragment_symbol_of_block_zerofork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    Fragment_symbol_t.fragment_symbol
;;

(** {12 Upgrading from Block_zerobifork through Block_zerofork through Fragment_leaf to Fragment.} *)

val fragment_symbol_of_block_zerobifork_symbol :
  Block_zerobifork_symbol_t.block_zerobifork_symbol ->
    Fragment_symbol_t.fragment_symbol
;;

(** {12 Upgrading from Block_zerotrifork through Block_zerofork through Fragment_leaf to Fragment.} *)

val fragment_symbol_of_block_zerotrifork_symbol :
  Block_zerotrifork_symbol_t.block_zerotrifork_symbol ->
    Fragment_symbol_t.fragment_symbol
;;

(** {12 Upgrading from Block_zeroquadrifork through Block_zerofork through Fragment_leaf to Fragment.} *)

val fragment_symbol_of_block_zeroquadrifork_symbol :
  Block_zeroquadrifork_symbol_t.block_zeroquadrifork_symbol ->
    Fragment_symbol_t.fragment_symbol
;;

(** {9 Upgrading from Fragment_zerofork through Fragment_leaf to Fragment.} *)

val fragment_zerofork : Fragment_symbol_t.fragment_symbol;;

(** {9 Upgrading from Segment_head_extends_fragment_buried through Fragment_leaf to Fragment.} *)

val segment_head_extends_fragment_buried : Fragment_symbol_t.fragment_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh fragment 12 January 2011. *)

