(** {3 A Symbol for a Chemicalset.} *)

(** {6 Displaying.} *)

val name :
  Chemicalset_symbol_t.chemicalset_symbol ->
    string
;;

val print : Format.formatter ->
  Chemicalset_symbol_t.chemicalset_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Aggregate from Chemicalset.} *)

val aggregate_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Aggregate_symbol_t.aggregate_symbol
;;

(** {9 Extracting Doublet_string_ordinal from Aggregate from Chemicalset.} *)

(* No Extraction from doublet doublet_string_ordinal. *)

(** {6 Extracting Atom from Chemicalset.} *)

val atom_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_symbol_t.atom_symbol
;;

(** {9 Extracting Atom_zerotied from Atom from Chemicalset.} *)

val atom_zerotied_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_zerotied_symbol_t.atom_zerotied_symbol
;;

(** {12 Extracting Atom_zerotied_raregas from Atom_zerotied from Atom from Chemicalset.} *)

val atom_zerotied_raregas_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol
;;

(** {12 Extracting Atom_zerotied_anion from Atom_zerotied from Atom from Chemicalset.} *)

val atom_zerotied_anion_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol
;;

(** {12 Extracting Atom_zerotied_cation from Atom_zerotied from Atom from Chemicalset.} *)

val atom_zerotied_cation_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol
;;

(** {12 Extracting Halfbridge from Atom_zerotied from Atom from Chemicalset.} *)

val halfbridge_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Halfbridge_symbol_t.halfbridge_symbol
;;

(** {9 Extracting Atom_onetied from Atom from Chemicalset.} *)

val atom_onetied_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_onetied_symbol_t.atom_onetied_symbol
;;

(** {12 Extracting Atom_onetied_conjugated from Atom_onetied from Atom from Chemicalset.} *)

val atom_onetied_conjugated_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_onetied_conjugated_symbol_t.atom_onetied_conjugated_symbol
;;

(** {12 Extracting Atom_onetied_double from Atom_onetied from Atom from Chemicalset.} *)

val atom_onetied_double_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_onetied_double_symbol_t.atom_onetied_double_symbol
;;

(** {12 Extracting Atom_onetied_single from Atom_onetied from Atom from Chemicalset.} *)

val atom_onetied_single_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_onetied_single_symbol_t.atom_onetied_single_symbol
;;

(** {12 Extracting Atom_onetied_triple from Atom_onetied from Atom from Chemicalset.} *)

val atom_onetied_triple_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_onetied_triple_symbol_t.atom_onetied_triple_symbol
;;

(** {9 Extracting Atom_twotied from Atom from Chemicalset.} *)

val atom_twotied_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_twotied_symbol_t.atom_twotied_symbol
;;

(** {12 Extracting Atom_twotied_single_single from Atom_twotied from Atom from Chemicalset.} *)

val atom_twotied_single_single_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_twotied_single_single_symbol_t.atom_twotied_single_single_symbol
;;

(** {12 Extracting Atom_twotied_single_conjugated from Atom_twotied from Atom from Chemicalset.} *)

val atom_twotied_single_conjugated_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_twotied_single_conjugated_symbol_t.atom_twotied_single_conjugated_symbol
;;

(** {12 Extracting Atom_twotied_single_double from Atom_twotied from Atom from Chemicalset.} *)

val atom_twotied_single_double_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_twotied_single_double_symbol_t.atom_twotied_single_double_symbol
;;

(** {12 Extracting Atom_twotied_single_triple from Atom_twotied from Atom from Chemicalset.} *)

val atom_twotied_single_triple_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_twotied_single_triple_symbol_t.atom_twotied_single_triple_symbol
;;

(** {12 Extracting Atom_twotied_conjugated_conjugated from Atom_twotied from Atom from Chemicalset.} *)

val atom_twotied_conjugated_conjugated_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_twotied_conjugated_conjugated_symbol_t.atom_twotied_conjugated_conjugated_symbol
;;

(** {12 Extracting Atom_twotied_conjugated_double from Atom_twotied from Atom from Chemicalset.} *)

val atom_twotied_conjugated_double_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_twotied_conjugated_double_symbol_t.atom_twotied_conjugated_double_symbol
;;

(** {12 Extracting Atom_twotied_double_double from Atom_twotied from Atom from Chemicalset.} *)

val atom_twotied_double_double_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_twotied_double_double_symbol_t.atom_twotied_double_double_symbol
;;

(** {9 Extracting Atom_threetied from Atom from Chemicalset.} *)

val atom_threetied_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_threetied_symbol_t.atom_threetied_symbol
;;

(** {12 Extracting Atom_threetied_single_single_single from Atom_threetied from Atom from Chemicalset.} *)

val atom_threetied_single_single_single_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_threetied_single_single_single_symbol_t.atom_threetied_single_single_single_symbol
;;

(** {12 Extracting Atom_threetied_single_single_double from Atom_threetied from Atom from Chemicalset.} *)

val atom_threetied_single_single_double_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_threetied_single_single_double_symbol_t.atom_threetied_single_single_double_symbol
;;

(** {12 Extracting Atom_threetied_single_conjugated_conjugated from Atom_threetied from Atom from Chemicalset.} *)

val atom_threetied_single_conjugated_conjugated_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_threetied_single_conjugated_conjugated_symbol_t.atom_threetied_single_conjugated_conjugated_symbol
;;

(** {12 Extracting Atom_threetied_conjugated_conjugated_conjugated from Atom_threetied from Atom from Chemicalset.} *)

val atom_threetied_conjugated_conjugated_conjugated_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_threetied_conjugated_conjugated_conjugated_symbol_t.atom_threetied_conjugated_conjugated_conjugated_symbol
;;

(** {12 Extracting Atom_threetied_double_double_double from Atom_threetied from Atom from Chemicalset.} *)

val atom_threetied_double_double_double_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_threetied_double_double_double_symbol_t.atom_threetied_double_double_double_symbol
;;

(** {9 Extracting Atom_fourtied from Atom from Chemicalset.} *)

val atom_fourtied_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_fourtied_symbol_t.atom_fourtied_symbol
;;

(** {12 Extracting C_4s from Atom_fourtied from Atom from Chemicalset.} *)

(* No Extraction from c_4s 0. *)

(** {12 Extracting N_4s from Atom_fourtied from Atom from Chemicalset.} *)

(* No Extraction from n_4s 0. *)

(** {12 Extracting S_4s from Atom_fourtied from Atom from Chemicalset.} *)

(* No Extraction from s_4s 0. *)

(** {12 Extracting Xe_4s from Atom_fourtied from Atom from Chemicalset.} *)

(* No Extraction from xe_4s 0. *)

(** {9 Extracting Atom_fivetied from Atom from Chemicalset.} *)

val atom_fivetied_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_fivetied_symbol_t.atom_fivetied_symbol
;;

(** {12 Extracting Cl_5s from Atom_fivetied from Atom from Chemicalset.} *)

(* No Extraction from cl_5s 0. *)

(** {9 Extracting Atom_sixtied from Atom from Chemicalset.} *)

val atom_sixtied_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_sixtied_symbol_t.atom_sixtied_symbol
;;

(** {12 Extracting S_6s from Atom_sixtied from Atom from Chemicalset.} *)

(* No Extraction from s_6s 0. *)

(** {6 Extracting Block from Chemicalset.} *)

val block_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_symbol_t.block_symbol
;;

(** {9 Extracting Block_zerozero from Block from Chemicalset.} *)

val block_zerozero_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_zerozero_symbol_t.block_zerozero_symbol
;;

(** {12 Extracting Atom_zerotied from Block_zerozero from Block from Chemicalset.} *)

val atom_zerotied_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Atom_zerotied_symbol_t.atom_zerotied_symbol
;;

(** {12 Extracting Block_zerozero_diatomic from Block_zerozero from Block from Chemicalset.} *)

val block_zerozero_diatomic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_zerozero_diatomic_symbol_t.block_zerozero_diatomic_symbol
;;

(** {12 Extracting Block_zerozero_triatomic from Block_zerozero from Block from Chemicalset.} *)

val block_zerozero_triatomic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_zerozero_triatomic_symbol_t.block_zerozero_triatomic_symbol
;;

(** {12 Extracting Block_zerozero_tetratomic from Block_zerozero from Block from Chemicalset.} *)

val block_zerozero_tetratomic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_zerozero_tetratomic_symbol_t.block_zerozero_tetratomic_symbol
;;

(** {12 Extracting Block_zerozero_pentatomic from Block_zerozero from Block from Chemicalset.} *)

val block_zerozero_pentatomic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_zerozero_pentatomic_symbol_t.block_zerozero_pentatomic_symbol
;;

(** {9 Extracting Block_zeroone from Block from Chemicalset.} *)

val block_zeroone_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_zeroone_symbol_t.block_zeroone_symbol
;;

(** {12 Extracting Block_zeroonesingle from Block_zeroone from Block from Chemicalset.} *)

val block_zeroonesingle_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_zeroonesingle_symbol_t.block_zeroonesingle_symbol
;;

(** {12 Extracting Block_zeroonedouble from Block_zeroone from Block from Chemicalset.} *)

val block_zeroonedouble_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_zeroonedouble_symbol_t.block_zeroonedouble_symbol
;;

(** {12 Extracting Block_zeroonetriple from Block_zeroone from Block from Chemicalset.} *)

val block_zeroonetriple_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_zeroonetriple_symbol_t.block_zeroonetriple_symbol
;;

(** {12 Extracting Block_zeroonehalfbridge from Block_zeroone from Block from Chemicalset.} *)

(* No Extraction from block_zeroonehalfbridge 0. *)

(** {9 Extracting Block_zerofork from Block from Chemicalset.} *)

val block_zerofork_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_zerofork_symbol_t.block_zerofork_symbol
;;

(** {12 Extracting Block_zerobifork from Block_zerofork from Block from Chemicalset.} *)

val block_zerobifork_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_zerobifork_symbol_t.block_zerobifork_symbol
;;

(** {12 Extracting Block_zerotrifork from Block_zerofork from Block from Chemicalset.} *)

val block_zerotrifork_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_zerotrifork_symbol_t.block_zerotrifork_symbol
;;

(** {12 Extracting Block_zeroquadrifork from Block_zerofork from Block from Chemicalset.} *)

val block_zeroquadrifork_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_zeroquadrifork_symbol_t.block_zeroquadrifork_symbol
;;

(** {9 Extracting Block_oneone from Block from Chemicalset.} *)

val block_oneone_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_oneone_symbol_t.block_oneone_symbol
;;

(** {12 Extracting Block_onesingleonesingle from Block_oneone from Block from Chemicalset.} *)

val block_onesingleonesingle_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_onesingleonesingle_symbol_t.block_onesingleonesingle_symbol
;;

(** {12 Extracting Block_onesingleonedouble from Block_oneone from Block from Chemicalset.} *)

val block_onesingleonedouble_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_onesingleonedouble_symbol_t.block_onesingleonedouble_symbol
;;

(** {12 Extracting Block_onesingleonetriple from Block_oneone from Block from Chemicalset.} *)

val block_onesingleonetriple_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_onesingleonetriple_symbol_t.block_onesingleonetriple_symbol
;;

(** {12 Extracting Block_onedoubleonesingle from Block_oneone from Block from Chemicalset.} *)

val block_onedoubleonesingle_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_onedoubleonesingle_symbol_t.block_onedoubleonesingle_symbol
;;

(** {12 Extracting Block_onedoubleonedouble from Block_oneone from Block from Chemicalset.} *)

val block_onedoubleonedouble_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_onedoubleonedouble_symbol_t.block_onedoubleonedouble_symbol
;;

(** {12 Extracting Block_onetripleonesingle from Block_oneone from Block from Chemicalset.} *)

val block_onetripleonesingle_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_onetripleonesingle_symbol_t.block_onetripleonesingle_symbol
;;

(** {9 Extracting Block_oneend from Block from Chemicalset.} *)

val block_oneend_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_oneend_symbol_t.block_oneend_symbol
;;

(** {12 Extracting Block_onefork from Block_oneend from Block from Chemicalset.} *)

val block_onefork_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_onefork_symbol_t.block_onefork_symbol
;;

(** {12 Extracting Block_onezero from Block_oneend from Block from Chemicalset.} *)

val block_onezero_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_onezero_symbol_t.block_onezero_symbol
;;

(** {6 Extracting Bond from Chemicalset.} *)

val bond_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Bond_symbol_t.bond_symbol
;;

(** {9 Extracting Bond_covalent from Bond from Chemicalset.} *)

(* No Extraction from doublet bond_covalent. *)

(** {9 Extracting Bond_hydrogen from Bond from Chemicalset.} *)

(* No Extraction from doublet bond_hydrogen. *)

(** {9 Extracting Bond_ionic from Bond from Chemicalset.} *)

(* No Extraction from doublet bond_ionic. *)

(** {6 Extracting Box from Chemicalset.} *)

val box_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Box_symbol_t.box_symbol
;;

(** {9 Extracting String from Box from Chemicalset.} *)

val box_string_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    string
;;

(** {9 Extracting Protein from Box from Chemicalset.} *)

val protein_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Protein_symbol_t.protein_symbol
;;

(** {12 Extracting Acg from Protein from Box from Chemicalset.} *)

(* No Extraction from Acg 0. *)

(** {12 Extracting Adh from Protein from Box from Chemicalset.} *)

(* No Extraction from Adh 0. *)

(** {12 Extracting Agagag from Protein from Box from Chemicalset.} *)

(* No Extraction from Agagag 0. *)

(** {12 Extracting Agc from Protein from Box from Chemicalset.} *)

(* No Extraction from Agc 0. *)

(** {12 Extracting Agg from Protein from Box from Chemicalset.} *)

(* No Extraction from Agg 0. *)

(** {12 Extracting Agp from Protein from Box from Chemicalset.} *)

(* No Extraction from Agp 0. *)

(** {12 Extracting Gac from Protein from Box from Chemicalset.} *)

(* No Extraction from Gac 0. *)

(** {12 Extracting Gap from Protein from Box from Chemicalset.} *)

(* No Extraction from Gap 0. *)

(** {12 Extracting Ggg from Protein from Box from Chemicalset.} *)

(* No Extraction from Ggg 0. *)

(** {12 Extracting Ggacgg from Protein from Box from Chemicalset.} *)

(* No Extraction from Ggacgg 0. *)

(** {12 Extracting Ggaggg from Protein from Box from Chemicalset.} *)

(* No Extraction from Ggaggg 0. *)

(** {12 Extracting Gagaga from Protein from Box from Chemicalset.} *)

(* No Extraction from Gagaga 0. *)

(** {12 Extracting Mhb from Protein from Box from Chemicalset.} *)

(* No Extraction from Mhb 0. *)

(** {12 Extracting Pac from Protein from Box from Chemicalset.} *)

(* No Extraction from Pac 0. *)

(** {12 Extracting Pag from Protein from Box from Chemicalset.} *)

(* No Extraction from Pag 0. *)

(** {12 Extracting Pgk from Protein from Box from Chemicalset.} *)

(* No Extraction from Pgk 0. *)

(** {12 Extracting Pti from Protein from Box from Chemicalset.} *)

(* No Extraction from Pti 0. *)

(** {12 Extracting Sac from Protein from Box from Chemicalset.} *)

(* No Extraction from Sac 0. *)

(** {12 Extracting Tab from Protein from Box from Chemicalset.} *)

(* No Extraction from Tab 0. *)

(** {12 Extracting Try from Protein from Box from Chemicalset.} *)

(* No Extraction from Try 0. *)

(** {12 Extracting String from Protein from Box from Chemicalset.} *)

val protein_string_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    string
;;

(** {6 Extracting Bridge from Chemicalset.} *)

val bridge_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Bridge_symbol_t.bridge_symbol
;;

(** {9 Extracting Bc from Bridge from Chemicalset.} *)

(* No Extraction from doublet Bc. *)

(** {9 Extracting Bd from Bridge from Chemicalset.} *)

(* No Extraction from doublet Bd. *)

(** {9 Extracting Bs from Bridge from Chemicalset.} *)

(* No Extraction from doublet Bs. *)

(** {6 Extracting Chain from Chemicalset.} *)

val chain_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Chain_symbol_t.chain_symbol
;;

(** {9 Extracting Blank from Chain from Chemicalset.} *)

(* No Extraction from doublet Blank. *)

(** {9 Extracting A from Chain from Chemicalset.} *)

(* No Extraction from doublet A. *)

(** {9 Extracting B from Chain from Chemicalset.} *)

(* No Extraction from doublet B. *)

(** {9 Extracting C from Chain from Chemicalset.} *)

(* No Extraction from doublet C. *)

(** {9 Extracting D from Chain from Chemicalset.} *)

(* No Extraction from doublet D. *)

(** {9 Extracting E from Chain from Chemicalset.} *)

(* No Extraction from doublet E. *)

(** {9 Extracting F from Chain from Chemicalset.} *)

(* No Extraction from doublet F. *)

(** {9 Extracting G from Chain from Chemicalset.} *)

(* No Extraction from doublet G. *)

(** {9 Extracting H from Chain from Chemicalset.} *)

(* No Extraction from doublet H. *)

(** {6 Extracting Cluster from Chemicalset.} *)

val cluster_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Cluster_symbol_t.cluster_symbol
;;

(** {9 Extracting Doublet_string_ordinal from Cluster from Chemicalset.} *)

(* No Extraction from doublet doublet_string_ordinal. *)

(** {6 Extracting Cterminal_subunit from Chemicalset.} *)

val cterminal_subunit_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Cterminal_subunit_symbol_t.cterminal_subunit_symbol
;;

(** {9 Extracting Carboxyl_leftextended from Cterminal_subunit from Chemicalset.} *)

(* No Extraction from doublet Carboxyl_leftextended. *)

(** {9 Extracting Carboxylate_leftextended from Cterminal_subunit from Chemicalset.} *)

(* No Extraction from doublet Carboxylate_leftextended. *)

(** {6 Extracting Fragment from Chemicalset.} *)

val fragment_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Fragment_symbol_t.fragment_symbol
;;

(** {9 Extracting Fragment_closed from Fragment from Chemicalset.} *)

val fragment_closed_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Fragment_closed_symbol_t.fragment_closed_symbol
;;

(** {12 Extracting Fragment_zerozero from Fragment_closed from Fragment from Chemicalset.} *)

(* No Extraction from fragment_zerozero 0. *)

(** {12 Extracting Block_zerozero from Fragment_closed from Fragment from Chemicalset.} *)

val block_zerozero_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_zerozero_symbol_t.block_zerozero_symbol
;;

(** {12 Extracting Segment_head_extends_fragment_leaf from Fragment_closed from Fragment from Chemicalset.} *)

(* No Extraction from segment_head_extends_fragment_leaf 0. *)

(** {9 Extracting Fragment_head from Fragment from Chemicalset.} *)

val fragment_head_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Fragment_head_symbol_t.fragment_head_symbol
;;

(** {12 Extracting Fragment_head_halfbridge from Fragment_head from Fragment from Chemicalset.} *)

(* No Extraction from fragment_head_halfbridge 0. *)

(** {12 Extracting Block_zerofork from Fragment_head from Fragment from Chemicalset.} *)

val block_zerofork_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_zerofork_symbol_t.block_zerofork_symbol
;;

(** {12 Extracting Fragment_zerofork from Fragment_head from Fragment from Chemicalset.} *)

(* No Extraction from fragment_zerofork 0. *)

(** {12 Extracting Segment_head_extends_fragment_buried from Fragment_head from Fragment from Chemicalset.} *)

(* No Extraction from segment_head_extends_fragment_buried 0. *)

(** {9 Extracting Fragment_buried from Fragment from Chemicalset.} *)

val fragment_buried_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Fragment_buried_symbol_t.fragment_buried_symbol
;;

(** {12 Extracting Fragment_onefork from Fragment_buried from Fragment from Chemicalset.} *)

(* No Extraction from fragment_onefork 0. *)

(** {12 Extracting Block_onefork from Fragment_buried from Fragment from Chemicalset.} *)

val block_onefork_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_onefork_symbol_t.block_onefork_symbol
;;

(** {12 Extracting Polysegment_buried_leftextended from Fragment_buried from Fragment from Chemicalset.} *)

(* No Extraction from polysegment_buried_leftextended 0. *)

(** {9 Extracting Fragment_leaf from Fragment from Chemicalset.} *)

val fragment_leaf_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Fragment_leaf_symbol_t.fragment_leaf_symbol
;;

(** {12 Extracting Fragment_halfbridgetail from Fragment_leaf from Fragment from Chemicalset.} *)

(* No Extraction from fragment_halfbridgetail 0. *)

(** {12 Extracting Fragment_halfbridge from Fragment_leaf from Fragment from Chemicalset.} *)

(* No Extraction from fragment_halfbridge 0. *)

(** {12 Extracting Block_zerofork from Fragment_leaf from Fragment from Chemicalset.} *)

val block_zerofork_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_zerofork_symbol_t.block_zerofork_symbol
;;

(** {12 Extracting Fragment_zerofork from Fragment_leaf from Fragment from Chemicalset.} *)

(* No Extraction from fragment_zerofork 0. *)

(** {12 Extracting Segment_head_extends_fragment_buried from Fragment_leaf from Fragment from Chemicalset.} *)

(* No Extraction from segment_head_extends_fragment_buried 0. *)

(** {6 Extracting Grouping from Chemicalset.} *)

val grouping_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Grouping_symbol_t.grouping_symbol
;;

(** {9 Extracting Empty from Grouping from Chemicalset.} *)

(* No Extraction from doublet empty. *)

(** {9 Extracting Fragment_leaf from Grouping from Chemicalset.} *)

val fragment_leaf_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Fragment_leaf_symbol_t.fragment_leaf_symbol
;;

(** {12 Extracting Fragment_halfbridgetail from Fragment_leaf from Grouping from Chemicalset.} *)

(* No Extraction from fragment_halfbridgetail 0. *)

(** {12 Extracting Fragment_halfbridge from Fragment_leaf from Grouping from Chemicalset.} *)

(* No Extraction from fragment_halfbridge 0. *)

(** {12 Extracting Block_zerofork from Fragment_leaf from Grouping from Chemicalset.} *)

val block_zerofork_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_zerofork_symbol_t.block_zerofork_symbol
;;

(** {12 Extracting Fragment_zerofork from Fragment_leaf from Grouping from Chemicalset.} *)

(* No Extraction from fragment_zerofork 0. *)

(** {12 Extracting Segment_head_extends_fragment_buried from Fragment_leaf from Grouping from Chemicalset.} *)

(* No Extraction from segment_head_extends_fragment_buried 0. *)

(** {9 Extracting Grouping_polyfragment from Grouping from Chemicalset.} *)

val grouping_polyfragment_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Grouping_polyfragment_symbol_t.grouping_polyfragment_symbol
;;

(** {12 Extracting DiMethineTriMethyl from Grouping_polyfragment from Grouping from Chemicalset.} *)

(* No Extraction from DiMethineTriMethyl 0. *)

(** {12 Extracting Ethcaracidmethyllamine from Grouping_polyfragment from Grouping from Chemicalset.} *)

(* No Extraction from Ethcaracidmethyllamine 0. *)

(** {12 Extracting Ethcaracidmethylramine from Grouping_polyfragment from Grouping from Chemicalset.} *)

(* No Extraction from Ethcaracidmethylramine 0. *)

(** {12 Extracting Ethineacidlamine from Grouping_polyfragment from Grouping from Chemicalset.} *)

(* No Extraction from Ethineacidlamine 0. *)

(** {12 Extracting Ethineacidramine from Grouping_polyfragment from Grouping from Chemicalset.} *)

(* No Extraction from Ethineacidramine 0. *)

(** {12 Extracting Guanidine from Grouping_polyfragment from Grouping from Chemicalset.} *)

(* No Extraction from Guanidine 0. *)

(** {12 Extracting Guanidinium from Grouping_polyfragment from Grouping from Chemicalset.} *)

(* No Extraction from Guanidinium 0. *)

(** {12 Extracting MetheneMethineDiMethyl from Grouping_polyfragment from Grouping from Chemicalset.} *)

(* No Extraction from MetheneMethineDiMethyl 0. *)

(** {12 Extracting MethineDiMethyl from Grouping_polyfragment from Grouping from Chemicalset.} *)

(* No Extraction from MethineDiMethyl 0. *)

(** {12 Extracting MethineEthylMethyl from Grouping_polyfragment from Grouping from Chemicalset.} *)

(* No Extraction from MethineEthylMethyl 0. *)

(** {12 Extracting MethinolMethyl from Grouping_polyfragment from Grouping from Chemicalset.} *)

(* No Extraction from MethinolMethyl 0. *)

(** {12 Extracting TriMetheneGuanidinium from Grouping_polyfragment from Grouping from Chemicalset.} *)

(* No Extraction from TriMetheneGuanidinium 0. *)

(** {12 Extracting TriMethineTetraMethyl from Grouping_polyfragment from Grouping from Chemicalset.} *)

(* No Extraction from TriMethineTetraMethyl 0. *)

(** {9 Extracting Grouping_bridged from Grouping from Chemicalset.} *)

val grouping_bridged_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Grouping_bridged_symbol_t.grouping_bridged_symbol
;;

(** {12 Extracting Benzale from Grouping_bridged from Grouping from Chemicalset.} *)

(* No Extraction from Benzale 0. *)

(** {12 Extracting Benzole from Grouping_bridged from Grouping from Chemicalset.} *)

(* No Extraction from Benzole 0. *)

(** {12 Extracting Benzyl from Grouping_bridged from Grouping from Chemicalset.} *)

(* No Extraction from Benzyl 0. *)

(** {12 Extracting Indole from Grouping_bridged from Grouping from Chemicalset.} *)

(* No Extraction from Indole 0. *)

(** {12 Extracting Metheneimidazole from Grouping_bridged from Grouping from Chemicalset.} *)

(* No Extraction from Metheneimidazole 0. *)

(** {12 Extracting MetheneIndole from Grouping_bridged from Grouping from Chemicalset.} *)

(* No Extraction from MetheneIndole 0. *)

(** {12 Extracting Dimethonecarbonhydroxyldimethone from Grouping_bridged from Grouping from Chemicalset.} *)

(* No Extraction from Dimethonecarbonhydroxyldimethone 0. *)

(** {12 Extracting Dimethone from Grouping_bridged from Grouping from Chemicalset.} *)

(* No Extraction from Dimethone 0. *)

(** {12 Extracting Phenol from Grouping_bridged from Grouping from Chemicalset.} *)

(* No Extraction from Phenol 0. *)

(** {12 Extracting Pyrrole from Grouping_bridged from Grouping from Chemicalset.} *)

(* No Extraction from Pyrrole 0. *)

(** {12 Extracting Methenephenol from Grouping_bridged from Grouping from Chemicalset.} *)

(* No Extraction from Methenephenol 0. *)

(** {6 Extracting Mendeleev from Chemicalset.} *)

val mendeleev_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Mendeleev_symbol_t.mendeleev_symbol
;;

(** {9 Extracting Hand from Mendeleev from Chemicalset.} *)

(* No Extraction from doublet hand. *)

(** {6 Extracting Molecule_aminoacid from Chemicalset.} *)

val molecule_aminoacid_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol
;;

(** {9 Extracting Molecule_aminoacid_segmented from Molecule_aminoacid from Chemicalset.} *)

val molecule_aminoacid_segmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_aminoacid_segmented_symbol_t.molecule_aminoacid_segmented_symbol
;;

(** {12 Extracting Glycine from Molecule_aminoacid_segmented from Molecule_aminoacid from Chemicalset.} *)

(* No Extraction from glycine 0. *)

(** {9 Extracting Molecule_aminoacid_fragmented from Molecule_aminoacid from Chemicalset.} *)

val molecule_aminoacid_fragmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol
;;

(** {12 Extracting Pro from Molecule_aminoacid_fragmented from Molecule_aminoacid from Chemicalset.} *)

(* No Extraction from pro 0. *)

(** {12 Extracting Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid from Chemicalset.} *)

val molecule_aminoacid_regular_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol
;;

(** {6 Extracting Molecule_aminoacid_olc from Chemicalset.} *)

val molecule_aminoacid_olc_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol
;;

(** {9 Extracting Molecule_aminoacid_segmented_olc from Molecule_aminoacid_olc from Chemicalset.} *)

val molecule_aminoacid_segmented_olc_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_aminoacid_segmented_olc_symbol_t.molecule_aminoacid_segmented_olc_symbol
;;

(** {12 Extracting G from Molecule_aminoacid_segmented_olc from Molecule_aminoacid_olc from Chemicalset.} *)

(* No Extraction from g 0. *)

(** {9 Extracting Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc from Chemicalset.} *)

val molecule_aminoacid_fragmented_olc_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_aminoacid_fragmented_olc_symbol_t.molecule_aminoacid_fragmented_olc_symbol
;;

(** {12 Extracting P from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc from Chemicalset.} *)

(* No Extraction from p 0. *)

(** {12 Extracting Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc from Chemicalset.} *)

val molecule_aminoacid_regular_olc_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_aminoacid_regular_olc_symbol_t.molecule_aminoacid_regular_olc_symbol
;;

(** {6 Extracting Molecule_aminoacid_tlc from Chemicalset.} *)

val molecule_aminoacid_tlc_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol
;;

(** {9 Extracting Molecule_aminoacid_segmented_tlc from Molecule_aminoacid_tlc from Chemicalset.} *)

val molecule_aminoacid_segmented_tlc_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_aminoacid_segmented_tlc_symbol_t.molecule_aminoacid_segmented_tlc_symbol
;;

(** {12 Extracting Gly from Molecule_aminoacid_segmented_tlc from Molecule_aminoacid_tlc from Chemicalset.} *)

(* No Extraction from gly 0. *)

(** {9 Extracting Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc from Chemicalset.} *)

val molecule_aminoacid_fragmented_tlc_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol
;;

(** {12 Extracting Pro from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc from Chemicalset.} *)

(* No Extraction from pro 0. *)

(** {12 Extracting Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc from Chemicalset.} *)

val molecule_aminoacid_regular_tlc_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_aminoacid_regular_tlc_symbol_t.molecule_aminoacid_regular_tlc_symbol
;;

(** {6 Extracting Molecule from Chemicalset.} *)

val molecule_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_symbol_t.molecule_symbol
;;

(** {9 Extracting Molecule_aminoacid from Molecule from Chemicalset.} *)

val molecule_aminoacid_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol
;;

(** {12 Extracting Molecule_aminoacid_segmented from Molecule_aminoacid from Molecule from Chemicalset.} *)

val molecule_aminoacid_segmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_aminoacid_segmented_symbol_t.molecule_aminoacid_segmented_symbol
;;

(** {12 Extracting Molecule_aminoacid_fragmented from Molecule_aminoacid from Molecule from Chemicalset.} *)

val molecule_aminoacid_fragmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol
;;

(** {9 Extracting Molecule_bridged from Molecule from Chemicalset.} *)

val molecule_bridged_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_bridged_symbol_t.molecule_bridged_symbol
;;

(** {12 Extracting Fake_b from Molecule_bridged from Molecule from Chemicalset.} *)

(* No Extraction from Fake_b 0. *)

(** {12 Extracting Benzene from Molecule_bridged from Molecule from Chemicalset.} *)

(* No Extraction from Benzene 0. *)

(** {12 Extracting Phenol from Molecule_bridged from Molecule from Chemicalset.} *)

(* No Extraction from Phenol 0. *)

(** {12 Extracting Pyrrole from Molecule_bridged from Molecule from Chemicalset.} *)

(* No Extraction from Pyrrole 0. *)

(** {9 Extracting Molecule_dendrimer from Molecule from Chemicalset.} *)

val molecule_dendrimer_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_dendrimer_symbol_t.molecule_dendrimer_symbol
;;

(** {12 Extracting Fake_d2 from Molecule_dendrimer from Molecule from Chemicalset.} *)

(* No Extraction from Fake_d2 0. *)

(** {9 Extracting Molecule_forked from Molecule from Chemicalset.} *)

val molecule_forked_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_forked_symbol_t.molecule_forked_symbol
;;

(** {12 Extracting Molecule_forked_oneforked from Molecule_forked from Molecule from Chemicalset.} *)

val molecule_forked_oneforked_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_forked_oneforked_symbol_t.molecule_forked_oneforked_symbol
;;

(** {12 Extracting Molecule_forked_twoforked from Molecule_forked from Molecule from Chemicalset.} *)

val molecule_forked_twoforked_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_forked_twoforked_symbol_t.molecule_forked_twoforked_symbol
;;

(** {12 Extracting Molecule_forked_threeforked from Molecule_forked from Molecule from Chemicalset.} *)

val molecule_forked_threeforked_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_forked_threeforked_symbol_t.molecule_forked_threeforked_symbol
;;

(** {12 Extracting Molecule_forked_moreforked from Molecule_forked from Molecule from Chemicalset.} *)

val molecule_forked_moreforked_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_forked_moreforked_symbol_t.molecule_forked_moreforked_symbol
;;

(** {9 Extracting Molecule_linear from Molecule from Chemicalset.} *)

val molecule_linear_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_linear_symbol_t.molecule_linear_symbol
;;

(** {12 Extracting Molecule_linear_monoatomic from Molecule_linear from Molecule from Chemicalset.} *)

val molecule_linear_monoatomic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol
;;

(** {12 Extracting Molecule_linear_diatomic from Molecule_linear from Molecule from Chemicalset.} *)

val molecule_linear_diatomic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_linear_diatomic_symbol_t.molecule_linear_diatomic_symbol
;;

(** {12 Extracting Molecule_linear_triatomic from Molecule_linear from Molecule from Chemicalset.} *)

val molecule_linear_triatomic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_linear_triatomic_symbol_t.molecule_linear_triatomic_symbol
;;

(** {12 Extracting Molecule_linear_tetratomic from Molecule_linear from Molecule from Chemicalset.} *)

val molecule_linear_tetratomic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_linear_tetratomic_symbol_t.molecule_linear_tetratomic_symbol
;;

(** {12 Extracting Molecule_linear_pentatomic from Molecule_linear from Molecule from Chemicalset.} *)

val molecule_linear_pentatomic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_linear_pentatomic_symbol_t.molecule_linear_pentatomic_symbol
;;

(** {12 Extracting Molecule_linear_polyatomic from Molecule_linear from Molecule from Chemicalset.} *)

val molecule_linear_polyatomic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_linear_polyatomic_symbol_t.molecule_linear_polyatomic_symbol
;;

(** {9 Extracting Molecule_nucleoside from Molecule from Chemicalset.} *)

(* No Extraction from doublet molecule_nucleoside. *)

(** {9 Extracting Molecule_polymer from Molecule from Chemicalset.} *)

val molecule_polymer_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Molecule_polymer_symbol_t.molecule_polymer_symbol
;;

(** {12 Extracting Polypeptide from Molecule_polymer from Molecule from Chemicalset.} *)

val polypeptide_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Polypeptide_symbol_t.polypeptide_symbol
;;

(** {12 Extracting Nucleicacid from Molecule_polymer from Molecule from Chemicalset.} *)

val nucleicacid_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Nucleicacid_symbol_t.nucleicacid_symbol
;;

(** {6 Extracting Nitrogenous_base from Chemicalset.} *)

val nitrogenous_base_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Nitrogenous_base_symbol_t.nitrogenous_base_symbol
;;

(** {9 Extracting Purine_base from Nitrogenous_base from Chemicalset.} *)

val purine_base_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Purine_base_symbol_t.purine_base_symbol
;;

(** {12 Extracting Adenosine from Purine_base from Nitrogenous_base from Chemicalset.} *)

(* No Extraction from Adenosine 0. *)

(** {12 Extracting Guanine from Purine_base from Nitrogenous_base from Chemicalset.} *)

(* No Extraction from Guanine 0. *)

(** {9 Extracting Pyrimidine_base from Nitrogenous_base from Chemicalset.} *)

val pyrimidine_base_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Pyrimidine_base_symbol_t.pyrimidine_base_symbol
;;

(** {12 Extracting Cytosine from Pyrimidine_base from Nitrogenous_base from Chemicalset.} *)

(* No Extraction from Cytosine 0. *)

(** {12 Extracting Uracil from Pyrimidine_base from Nitrogenous_base from Chemicalset.} *)

(* No Extraction from Uracil 0. *)

(** {12 Extracting Thymine from Pyrimidine_base from Nitrogenous_base from Chemicalset.} *)

(* No Extraction from Thymine 0. *)

(** {6 Extracting Nucleoside from Chemicalset.} *)

val nucleoside_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Nucleoside_symbol_t.nucleoside_symbol
;;

(** {9 Extracting Ribonucleoside from Nucleoside from Chemicalset.} *)

(* No Extraction from doublet ribonucleoside. *)

(** {9 Extracting Deoxyribonucleoside from Nucleoside from Chemicalset.} *)

(* No Extraction from doublet deoxyribonucleoside. *)

(** {6 Extracting Nucleotide from Chemicalset.} *)

val nucleotide_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Nucleotide_symbol_t.nucleotide_symbol
;;

(** {9 Extracting Ribonucleotide from Nucleotide from Chemicalset.} *)

val ribonucleotide_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Ribonucleotide_symbol_t.ribonucleotide_symbol
;;

(** {12 Extracting Ribonucleotide_purinic from Ribonucleotide from Nucleotide from Chemicalset.} *)

val ribonucleotide_purinic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Ribonucleotide_purinic_symbol_t.ribonucleotide_purinic_symbol
;;

(** {12 Extracting Ribonucleotide_pyrimidinic from Ribonucleotide from Nucleotide from Chemicalset.} *)

val ribonucleotide_pyrimidinic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Ribonucleotide_pyrimidinic_symbol_t.ribonucleotide_pyrimidinic_symbol
;;

(** {9 Extracting Deoxyribonucleotide from Nucleotide from Chemicalset.} *)

val deoxyribonucleotide_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol
;;

(** {12 Extracting Deoxyribonucleotide_purinic from Deoxyribonucleotide from Nucleotide from Chemicalset.} *)

val deoxyribonucleotide_purinic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Deoxyribonucleotide_purinic_symbol_t.deoxyribonucleotide_purinic_symbol
;;

(** {12 Extracting Deoxyribonucleotide_pyrimidinic from Deoxyribonucleotide from Nucleotide from Chemicalset.} *)

val deoxyribonucleotide_pyrimidinic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Deoxyribonucleotide_pyrimidinic_symbol_t.deoxyribonucleotide_pyrimidinic_symbol
;;

(** {6 Extracting Peptideca from Chemicalset.} *)

val peptideca_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Peptideca_symbol_t.peptideca_symbol
;;

(** {9 Extracting Peptideca_buried from Peptideca from Chemicalset.} *)

val peptideca_buried_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Peptideca_buried_symbol_t.peptideca_buried_symbol
;;

(** {12 Extracting Peptideca_buried_segmented from Peptideca_buried from Peptideca from Chemicalset.} *)

val peptideca_buried_segmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Peptideca_buried_segmented_symbol_t.peptideca_buried_segmented_symbol
;;

(** {12 Extracting Peptideca_buried_fragmented from Peptideca_buried from Peptideca from Chemicalset.} *)

val peptideca_buried_fragmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Peptideca_buried_fragmented_symbol_t.peptideca_buried_fragmented_symbol
;;

(** {9 Extracting Peptideca_nterminal from Peptideca from Chemicalset.} *)

val peptideca_nterminal_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol
;;

(** {12 Extracting Peptideca_nterminal_segmented from Peptideca_nterminal from Peptideca from Chemicalset.} *)

val peptideca_nterminal_segmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Peptideca_nterminal_segmented_symbol_t.peptideca_nterminal_segmented_symbol
;;

(** {12 Extracting Peptideca_nterminal_fragmented from Peptideca_nterminal from Peptideca from Chemicalset.} *)

val peptideca_nterminal_fragmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol
;;

(** {6 Extracting Polypeptide_sidegroup from Chemicalset.} *)

val polypeptide_sidegroup_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol
;;

(** {9 Extracting Benzyl from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from doublet Benzyl. *)

(** {9 Extracting DiEtheneAmine from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from doublet DiEtheneAmine. *)

(** {9 Extracting DiMetheneSMethyl from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from doublet DiMetheneSMethyl. *)

(** {9 Extracting MethineDiMethyl from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from doublet MethineDiMethyl. *)

(** {9 Extracting EtheneAcid from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from doublet EtheneAcid. *)

(** {9 Extracting EtheneAmide from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from doublet EtheneAmide. *)

(** {9 Extracting MetheneAcid from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from doublet MetheneAcid. *)

(** {9 Extracting MetheneAmide from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from doublet MetheneAmide. *)

(** {9 Extracting MetheneImidazole from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from doublet MetheneImidazole. *)

(** {9 Extracting MetheneMethineDiMethyl from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from doublet MetheneMethineDiMethyl. *)

(** {9 Extracting MethenePhenol from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from doublet MethenePhenol. *)

(** {9 Extracting MetheneThiol from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from doublet MetheneThiol. *)

(** {9 Extracting MetheneIndole from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from doublet MetheneIndole. *)

(** {9 Extracting Methenol from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from doublet Methenol. *)

(** {9 Extracting MethineEthylMethyl from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from doublet MethineEthylMethyl. *)

(** {9 Extracting MethinolMethyl from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from doublet MethinolMethyl. *)

(** {9 Extracting Methyl from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from doublet Methyl. *)

(** {9 Extracting TriMetheneGuanidinium from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from doublet TriMetheneGuanidinium. *)

(** {6 Extracting Residue from Chemicalset.} *)

val residue_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Residue_symbol_t.residue_symbol
;;

(** {9 Extracting Residue_nterminal from Residue from Chemicalset.} *)

val residue_nterminal_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Residue_nterminal_symbol_t.residue_nterminal_symbol
;;

(** {12 Extracting Residue_nterminal_segmented from Residue_nterminal from Residue from Chemicalset.} *)

val residue_nterminal_segmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Residue_nterminal_segmented_symbol_t.residue_nterminal_segmented_symbol
;;

(** {12 Extracting Residue_nterminal_fragmented from Residue_nterminal from Residue from Chemicalset.} *)

val residue_nterminal_fragmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol
;;

(** {9 Extracting Residue_buried from Residue from Chemicalset.} *)

val residue_buried_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Residue_buried_symbol_t.residue_buried_symbol
;;

(** {12 Extracting Residue_buried_segmented from Residue_buried from Residue from Chemicalset.} *)

val residue_buried_segmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Residue_buried_segmented_symbol_t.residue_buried_segmented_symbol
;;

(** {12 Extracting Residue_buried_fragmented from Residue_buried from Residue from Chemicalset.} *)

val residue_buried_fragmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Residue_buried_fragmented_symbol_t.residue_buried_fragmented_symbol
;;

(** {6 Extracting Segment from Chemicalset.} *)

val segment_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Segment_symbol_t.segment_symbol
;;

(** {9 Extracting Segment_head from Segment from Chemicalset.} *)

val segment_head_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Segment_head_symbol_t.segment_head_symbol
;;

(** {12 Extracting Segment_zeroone from Segment_head from Segment from Chemicalset.} *)

(* No Extraction from segment_zeroone 0. *)

(** {12 Extracting Block_zeroone from Segment_head from Segment from Chemicalset.} *)

val block_zeroone_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_zeroone_symbol_t.block_zeroone_symbol
;;

(** {12 Extracting Segment_rightextended from Segment_head from Segment from Chemicalset.} *)

(* No Extraction from segment_rightextended 0. *)

(** {9 Extracting Segment_buried from Segment from Chemicalset.} *)

val segment_buried_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Segment_buried_symbol_t.segment_buried_symbol
;;

(** {12 Extracting Segment_oneone from Segment_buried from Segment from Chemicalset.} *)

(* No Extraction from segment_oneone 0. *)

(** {12 Extracting Block_oneone from Segment_buried from Segment from Chemicalset.} *)

val block_oneone_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
    Block_oneone_symbol_t.block_oneone_symbol
;;

(** {12 Extracting Segment_leftextended from Segment_buried from Segment from Chemicalset.} *)

(* No Extraction from segment_leftextended 0. *)

(** {12 Extracting Polysegment from Segment_buried from Segment from Chemicalset.} *)

(* No Extraction from polysegment 0. *)

(** {6 Querying.} *)

(** {6 Querying Aggregate in Chemicalset.} *)

val is_aggregate_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Doublet_string_ordinal in Aggregate in Chemicalset.} *)

(* No Query from doublet_string_ordinal d. *)

(** {6 Querying Atom in Chemicalset.} *)

val is_atom_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Atom_zerotied in Atom in Chemicalset.} *)

val is_atom_zerotied_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_raregas in Atom_zerotied in Atom in Chemicalset.} *)

val is_atom_zerotied_raregas_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_anion in Atom_zerotied in Atom in Chemicalset.} *)

val is_atom_zerotied_anion_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_cation in Atom_zerotied in Atom in Chemicalset.} *)

val is_atom_zerotied_cation_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Halfbridge in Atom_zerotied in Atom in Chemicalset.} *)

val is_halfbridge_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Atom_onetied in Atom in Chemicalset.} *)

val is_atom_onetied_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Atom_onetied_conjugated in Atom_onetied in Atom in Chemicalset.} *)

val is_atom_onetied_conjugated_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Atom_onetied_double in Atom_onetied in Atom in Chemicalset.} *)

val is_atom_onetied_double_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Atom_onetied_single in Atom_onetied in Atom in Chemicalset.} *)

val is_atom_onetied_single_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Atom_onetied_triple in Atom_onetied in Atom in Chemicalset.} *)

val is_atom_onetied_triple_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Atom_twotied in Atom in Chemicalset.} *)

val is_atom_twotied_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Atom_twotied_single_single in Atom_twotied in Atom in Chemicalset.} *)

val is_atom_twotied_single_single_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Atom_twotied_single_conjugated in Atom_twotied in Atom in Chemicalset.} *)

val is_atom_twotied_single_conjugated_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Atom_twotied_single_double in Atom_twotied in Atom in Chemicalset.} *)

val is_atom_twotied_single_double_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Atom_twotied_single_triple in Atom_twotied in Atom in Chemicalset.} *)

val is_atom_twotied_single_triple_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Atom_twotied_conjugated_conjugated in Atom_twotied in Atom in Chemicalset.} *)

val is_atom_twotied_conjugated_conjugated_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Atom_twotied_conjugated_double in Atom_twotied in Atom in Chemicalset.} *)

val is_atom_twotied_conjugated_double_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Atom_twotied_double_double in Atom_twotied in Atom in Chemicalset.} *)

val is_atom_twotied_double_double_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Atom_threetied in Atom in Chemicalset.} *)

val is_atom_threetied_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Atom_threetied_single_single_single in Atom_threetied in Atom in Chemicalset.} *)

val is_atom_threetied_single_single_single_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Atom_threetied_single_single_double in Atom_threetied in Atom in Chemicalset.} *)

val is_atom_threetied_single_single_double_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Atom_threetied_single_conjugated_conjugated in Atom_threetied in Atom in Chemicalset.} *)

val is_atom_threetied_single_conjugated_conjugated_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Atom_threetied_conjugated_conjugated_conjugated in Atom_threetied in Atom in Chemicalset.} *)

val is_atom_threetied_conjugated_conjugated_conjugated_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Atom_threetied_double_double_double in Atom_threetied in Atom in Chemicalset.} *)

val is_atom_threetied_double_double_double_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Atom_fourtied in Atom in Chemicalset.} *)

val is_atom_fourtied_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying C_4s in Atom_fourtied in Atom in Chemicalset.} *)

(* No Query from c_4s 0. *)

(** {12 Querying N_4s in Atom_fourtied in Atom in Chemicalset.} *)

(* No Query from n_4s 0. *)

(** {12 Querying S_4s in Atom_fourtied in Atom in Chemicalset.} *)

(* No Query from s_4s 0. *)

(** {12 Querying Xe_4s in Atom_fourtied in Atom in Chemicalset.} *)

(* No Query from xe_4s 0. *)

(** {9 Querying Atom_fivetied in Atom in Chemicalset.} *)

val is_atom_fivetied_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Cl_5s in Atom_fivetied in Atom in Chemicalset.} *)

(* No Query from cl_5s 0. *)

(** {9 Querying Atom_sixtied in Atom in Chemicalset.} *)

val is_atom_sixtied_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying S_6s in Atom_sixtied in Atom in Chemicalset.} *)

(* No Query from s_6s 0. *)

(** {6 Querying Block in Chemicalset.} *)

val is_block_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Block_zerozero in Block in Chemicalset.} *)

val is_block_zerozero_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied in Block_zerozero in Block in Chemicalset.} *)

val is_atom_zerotied_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Block_zerozero_diatomic in Block_zerozero in Block in Chemicalset.} *)

val is_block_zerozero_diatomic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Block_zerozero_triatomic in Block_zerozero in Block in Chemicalset.} *)

val is_block_zerozero_triatomic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Block_zerozero_tetratomic in Block_zerozero in Block in Chemicalset.} *)

val is_block_zerozero_tetratomic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Block_zerozero_pentatomic in Block_zerozero in Block in Chemicalset.} *)

val is_block_zerozero_pentatomic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Block_zeroone in Block in Chemicalset.} *)

val is_block_zeroone_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Block_zeroonesingle in Block_zeroone in Block in Chemicalset.} *)

val is_block_zeroonesingle_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Block_zeroonedouble in Block_zeroone in Block in Chemicalset.} *)

val is_block_zeroonedouble_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Block_zeroonetriple in Block_zeroone in Block in Chemicalset.} *)

val is_block_zeroonetriple_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Block_zeroonehalfbridge in Block_zeroone in Block in Chemicalset.} *)

(* No Query from block_zeroonehalfbridge 0. *)

(** {9 Querying Block_zerofork in Block in Chemicalset.} *)

val is_block_zerofork_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Block_zerobifork in Block_zerofork in Block in Chemicalset.} *)

val is_block_zerobifork_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Block_zerotrifork in Block_zerofork in Block in Chemicalset.} *)

val is_block_zerotrifork_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Block_zeroquadrifork in Block_zerofork in Block in Chemicalset.} *)

val is_block_zeroquadrifork_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Block_oneone in Block in Chemicalset.} *)

val is_block_oneone_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Block_onesingleonesingle in Block_oneone in Block in Chemicalset.} *)

val is_block_onesingleonesingle_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Block_onesingleonedouble in Block_oneone in Block in Chemicalset.} *)

val is_block_onesingleonedouble_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Block_onesingleonetriple in Block_oneone in Block in Chemicalset.} *)

val is_block_onesingleonetriple_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Block_onedoubleonesingle in Block_oneone in Block in Chemicalset.} *)

val is_block_onedoubleonesingle_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Block_onedoubleonedouble in Block_oneone in Block in Chemicalset.} *)

val is_block_onedoubleonedouble_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Block_onetripleonesingle in Block_oneone in Block in Chemicalset.} *)

val is_block_onetripleonesingle_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Block_oneend in Block in Chemicalset.} *)

val is_block_oneend_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Block_onefork in Block_oneend in Block in Chemicalset.} *)

val is_block_onefork_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Block_onezero in Block_oneend in Block in Chemicalset.} *)

val is_block_onezero_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {6 Querying Bond in Chemicalset.} *)

val is_bond_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Bond_covalent in Bond in Chemicalset.} *)

(* No Query from bond_covalent 0. *)

(** {9 Querying Bond_hydrogen in Bond in Chemicalset.} *)

(* No Query from bond_hydrogen 0. *)

(** {9 Querying Bond_ionic in Bond in Chemicalset.} *)

(* No Query from bond_ionic 0. *)

(** {6 Querying Box in Chemicalset.} *)

val is_box_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying String in Box in Chemicalset.} *)

val is_box_string_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Protein in Box in Chemicalset.} *)

val is_protein_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Acg in Protein in Box in Chemicalset.} *)

(* No Query from Acg 0. *)

(** {12 Querying Adh in Protein in Box in Chemicalset.} *)

(* No Query from Adh 0. *)

(** {12 Querying Agagag in Protein in Box in Chemicalset.} *)

(* No Query from Agagag 0. *)

(** {12 Querying Agc in Protein in Box in Chemicalset.} *)

(* No Query from Agc 0. *)

(** {12 Querying Agg in Protein in Box in Chemicalset.} *)

(* No Query from Agg 0. *)

(** {12 Querying Agp in Protein in Box in Chemicalset.} *)

(* No Query from Agp 0. *)

(** {12 Querying Gac in Protein in Box in Chemicalset.} *)

(* No Query from Gac 0. *)

(** {12 Querying Gap in Protein in Box in Chemicalset.} *)

(* No Query from Gap 0. *)

(** {12 Querying Ggg in Protein in Box in Chemicalset.} *)

(* No Query from Ggg 0. *)

(** {12 Querying Ggacgg in Protein in Box in Chemicalset.} *)

(* No Query from Ggacgg 0. *)

(** {12 Querying Ggaggg in Protein in Box in Chemicalset.} *)

(* No Query from Ggaggg 0. *)

(** {12 Querying Gagaga in Protein in Box in Chemicalset.} *)

(* No Query from Gagaga 0. *)

(** {12 Querying Mhb in Protein in Box in Chemicalset.} *)

(* No Query from Mhb 0. *)

(** {12 Querying Pac in Protein in Box in Chemicalset.} *)

(* No Query from Pac 0. *)

(** {12 Querying Pag in Protein in Box in Chemicalset.} *)

(* No Query from Pag 0. *)

(** {12 Querying Pgk in Protein in Box in Chemicalset.} *)

(* No Query from Pgk 0. *)

(** {12 Querying Pti in Protein in Box in Chemicalset.} *)

(* No Query from Pti 0. *)

(** {12 Querying Sac in Protein in Box in Chemicalset.} *)

(* No Query from Sac 0. *)

(** {12 Querying Tab in Protein in Box in Chemicalset.} *)

(* No Query from Tab 0. *)

(** {12 Querying Try in Protein in Box in Chemicalset.} *)

(* No Query from Try 0. *)

(** {12 Querying String in Protein in Box in Chemicalset.} *)

val is_protein_string_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool

(** {6 Querying Bridge in Chemicalset.} *)

val is_bridge_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Bc in Bridge in Chemicalset.} *)

(* No Query from Bc 0. *)

(** {9 Querying Bd in Bridge in Chemicalset.} *)

(* No Query from Bd 0. *)

(** {9 Querying Bs in Bridge in Chemicalset.} *)

(* No Query from Bs 0. *)

(** {6 Querying Chain in Chemicalset.} *)

val is_chain_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Blank in Chain in Chemicalset.} *)

(* No Query from Blank 0. *)

(** {9 Querying A in Chain in Chemicalset.} *)

(* No Query from A 0. *)

(** {9 Querying B in Chain in Chemicalset.} *)

(* No Query from B 0. *)

(** {9 Querying C in Chain in Chemicalset.} *)

(* No Query from C 0. *)

(** {9 Querying D in Chain in Chemicalset.} *)

(* No Query from D 0. *)

(** {9 Querying E in Chain in Chemicalset.} *)

(* No Query from E 0. *)

(** {9 Querying F in Chain in Chemicalset.} *)

(* No Query from F 0. *)

(** {9 Querying G in Chain in Chemicalset.} *)

(* No Query from G 0. *)

(** {9 Querying H in Chain in Chemicalset.} *)

(* No Query from H 0. *)

(** {6 Querying Cluster in Chemicalset.} *)

val is_cluster_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Doublet_string_ordinal in Cluster in Chemicalset.} *)

(* No Query from doublet_string_ordinal d. *)

(** {6 Querying Cterminal_subunit in Chemicalset.} *)

val is_cterminal_subunit_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Carboxyl_leftextended in Cterminal_subunit in Chemicalset.} *)

(* No Query from Carboxyl_leftextended 0. *)

(** {9 Querying Carboxylate_leftextended in Cterminal_subunit in Chemicalset.} *)

(* No Query from Carboxylate_leftextended 0. *)

(** {6 Querying Fragment in Chemicalset.} *)

val is_fragment_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Fragment_closed in Fragment in Chemicalset.} *)

val is_fragment_closed_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Fragment_zerozero in Fragment_closed in Fragment in Chemicalset.} *)

(* No Query from fragment_zerozero 0. *)

(** {12 Querying Block_zerozero in Fragment_closed in Fragment in Chemicalset.} *)

val is_block_zerozero_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Segment_head_extends_fragment_leaf in Fragment_closed in Fragment in Chemicalset.} *)

(* No Query from segment_head_extends_fragment_leaf 0. *)

(** {9 Querying Fragment_head in Fragment in Chemicalset.} *)

val is_fragment_head_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Fragment_head_halfbridge in Fragment_head in Fragment in Chemicalset.} *)

(* No Query from fragment_head_halfbridge 0. *)

(** {12 Querying Block_zerofork in Fragment_head in Fragment in Chemicalset.} *)

val is_block_zerofork_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Fragment_zerofork in Fragment_head in Fragment in Chemicalset.} *)

(* No Query from fragment_zerofork 0. *)

(** {12 Querying Segment_head_extends_fragment_buried in Fragment_head in Fragment in Chemicalset.} *)

(* No Query from segment_head_extends_fragment_buried 0. *)

(** {9 Querying Fragment_buried in Fragment in Chemicalset.} *)

val is_fragment_buried_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Fragment_onefork in Fragment_buried in Fragment in Chemicalset.} *)

(* No Query from fragment_onefork 0. *)

(** {12 Querying Block_onefork in Fragment_buried in Fragment in Chemicalset.} *)

val is_block_onefork_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Polysegment_buried_leftextended in Fragment_buried in Fragment in Chemicalset.} *)

(* No Query from polysegment_buried_leftextended 0. *)

(** {9 Querying Fragment_leaf in Fragment in Chemicalset.} *)

val is_fragment_leaf_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Fragment_halfbridgetail in Fragment_leaf in Fragment in Chemicalset.} *)

(* No Query from fragment_halfbridgetail 0. *)

(** {12 Querying Fragment_halfbridge in Fragment_leaf in Fragment in Chemicalset.} *)

(* No Query from fragment_halfbridge 0. *)

(** {12 Querying Block_zerofork in Fragment_leaf in Fragment in Chemicalset.} *)

val is_block_zerofork_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Fragment_zerofork in Fragment_leaf in Fragment in Chemicalset.} *)

(* No Query from fragment_zerofork 0. *)

(** {12 Querying Segment_head_extends_fragment_buried in Fragment_leaf in Fragment in Chemicalset.} *)

(* No Query from segment_head_extends_fragment_buried 0. *)

(** {6 Querying Grouping in Chemicalset.} *)

val is_grouping_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Empty in Grouping in Chemicalset.} *)

(* No Query from empty 0. *)

(** {9 Querying Fragment_leaf in Grouping in Chemicalset.} *)

val is_fragment_leaf_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Fragment_halfbridgetail in Fragment_leaf in Grouping in Chemicalset.} *)

(* No Query from fragment_halfbridgetail 0. *)

(** {12 Querying Fragment_halfbridge in Fragment_leaf in Grouping in Chemicalset.} *)

(* No Query from fragment_halfbridge 0. *)

(** {12 Querying Block_zerofork in Fragment_leaf in Grouping in Chemicalset.} *)

val is_block_zerofork_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Fragment_zerofork in Fragment_leaf in Grouping in Chemicalset.} *)

(* No Query from fragment_zerofork 0. *)

(** {12 Querying Segment_head_extends_fragment_buried in Fragment_leaf in Grouping in Chemicalset.} *)

(* No Query from segment_head_extends_fragment_buried 0. *)

(** {9 Querying Grouping_polyfragment in Grouping in Chemicalset.} *)

val is_grouping_polyfragment_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying DiMethineTriMethyl in Grouping_polyfragment in Grouping in Chemicalset.} *)

(* No Query from DiMethineTriMethyl 0. *)

(** {12 Querying Ethcaracidmethyllamine in Grouping_polyfragment in Grouping in Chemicalset.} *)

(* No Query from Ethcaracidmethyllamine 0. *)

(** {12 Querying Ethcaracidmethylramine in Grouping_polyfragment in Grouping in Chemicalset.} *)

(* No Query from Ethcaracidmethylramine 0. *)

(** {12 Querying Ethineacidlamine in Grouping_polyfragment in Grouping in Chemicalset.} *)

(* No Query from Ethineacidlamine 0. *)

(** {12 Querying Ethineacidramine in Grouping_polyfragment in Grouping in Chemicalset.} *)

(* No Query from Ethineacidramine 0. *)

(** {12 Querying Guanidine in Grouping_polyfragment in Grouping in Chemicalset.} *)

(* No Query from Guanidine 0. *)

(** {12 Querying Guanidinium in Grouping_polyfragment in Grouping in Chemicalset.} *)

(* No Query from Guanidinium 0. *)

(** {12 Querying MetheneMethineDiMethyl in Grouping_polyfragment in Grouping in Chemicalset.} *)

(* No Query from MetheneMethineDiMethyl 0. *)

(** {12 Querying MethineDiMethyl in Grouping_polyfragment in Grouping in Chemicalset.} *)

(* No Query from MethineDiMethyl 0. *)

(** {12 Querying MethineEthylMethyl in Grouping_polyfragment in Grouping in Chemicalset.} *)

(* No Query from MethineEthylMethyl 0. *)

(** {12 Querying MethinolMethyl in Grouping_polyfragment in Grouping in Chemicalset.} *)

(* No Query from MethinolMethyl 0. *)

(** {12 Querying TriMetheneGuanidinium in Grouping_polyfragment in Grouping in Chemicalset.} *)

(* No Query from TriMetheneGuanidinium 0. *)

(** {12 Querying TriMethineTetraMethyl in Grouping_polyfragment in Grouping in Chemicalset.} *)

(* No Query from TriMethineTetraMethyl 0. *)

(** {9 Querying Grouping_bridged in Grouping in Chemicalset.} *)

val is_grouping_bridged_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Benzale in Grouping_bridged in Grouping in Chemicalset.} *)

(* No Query from Benzale 0. *)

(** {12 Querying Benzole in Grouping_bridged in Grouping in Chemicalset.} *)

(* No Query from Benzole 0. *)

(** {12 Querying Benzyl in Grouping_bridged in Grouping in Chemicalset.} *)

(* No Query from Benzyl 0. *)

(** {12 Querying Indole in Grouping_bridged in Grouping in Chemicalset.} *)

(* No Query from Indole 0. *)

(** {12 Querying Metheneimidazole in Grouping_bridged in Grouping in Chemicalset.} *)

(* No Query from Metheneimidazole 0. *)

(** {12 Querying MetheneIndole in Grouping_bridged in Grouping in Chemicalset.} *)

(* No Query from MetheneIndole 0. *)

(** {12 Querying Dimethonecarbonhydroxyldimethone in Grouping_bridged in Grouping in Chemicalset.} *)

(* No Query from Dimethonecarbonhydroxyldimethone 0. *)

(** {12 Querying Dimethone in Grouping_bridged in Grouping in Chemicalset.} *)

(* No Query from Dimethone 0. *)

(** {12 Querying Phenol in Grouping_bridged in Grouping in Chemicalset.} *)

(* No Query from Phenol 0. *)

(** {12 Querying Pyrrole in Grouping_bridged in Grouping in Chemicalset.} *)

(* No Query from Pyrrole 0. *)

(** {12 Querying Methenephenol in Grouping_bridged in Grouping in Chemicalset.} *)

(* No Query from Methenephenol 0. *)

(** {6 Querying Mendeleev in Chemicalset.} *)

val is_mendeleev_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Hand in Mendeleev in Chemicalset.} *)

(* No Query from hand h. *)

(** {6 Querying Molecule_aminoacid in Chemicalset.} *)

val is_molecule_aminoacid_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Molecule_aminoacid_segmented in Molecule_aminoacid in Chemicalset.} *)

val is_molecule_aminoacid_segmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Glycine in Molecule_aminoacid_segmented in Molecule_aminoacid in Chemicalset.} *)

(* No Query from glycine 0. *)

(** {9 Querying Molecule_aminoacid_fragmented in Molecule_aminoacid in Chemicalset.} *)

val is_molecule_aminoacid_fragmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Pro in Molecule_aminoacid_fragmented in Molecule_aminoacid in Chemicalset.} *)

(* No Query from pro 0. *)

(** {12 Querying Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid in Chemicalset.} *)

val is_molecule_aminoacid_regular_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {6 Querying Molecule_aminoacid_olc in Chemicalset.} *)

val is_molecule_aminoacid_olc_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Molecule_aminoacid_segmented_olc in Molecule_aminoacid_olc in Chemicalset.} *)

val is_molecule_aminoacid_segmented_olc_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying G in Molecule_aminoacid_segmented_olc in Molecule_aminoacid_olc in Chemicalset.} *)

(* No Query from g 0. *)

(** {9 Querying Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc in Chemicalset.} *)

val is_molecule_aminoacid_fragmented_olc_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying P in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc in Chemicalset.} *)

(* No Query from p 0. *)

(** {12 Querying Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc in Chemicalset.} *)

val is_molecule_aminoacid_regular_olc_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {6 Querying Molecule_aminoacid_tlc in Chemicalset.} *)

val is_molecule_aminoacid_tlc_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Molecule_aminoacid_segmented_tlc in Molecule_aminoacid_tlc in Chemicalset.} *)

val is_molecule_aminoacid_segmented_tlc_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Gly in Molecule_aminoacid_segmented_tlc in Molecule_aminoacid_tlc in Chemicalset.} *)

(* No Query from gly 0. *)

(** {9 Querying Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc in Chemicalset.} *)

val is_molecule_aminoacid_fragmented_tlc_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Pro in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc in Chemicalset.} *)

(* No Query from pro 0. *)

(** {12 Querying Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc in Chemicalset.} *)

val is_molecule_aminoacid_regular_tlc_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {6 Querying Molecule in Chemicalset.} *)

val is_molecule_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Molecule_aminoacid in Molecule in Chemicalset.} *)

val is_molecule_aminoacid_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Molecule_aminoacid_segmented in Molecule_aminoacid in Molecule in Chemicalset.} *)

val is_molecule_aminoacid_segmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Molecule_aminoacid_fragmented in Molecule_aminoacid in Molecule in Chemicalset.} *)

val is_molecule_aminoacid_fragmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Molecule_bridged in Molecule in Chemicalset.} *)

val is_molecule_bridged_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Fake_b in Molecule_bridged in Molecule in Chemicalset.} *)

(* No Query from Fake_b 0. *)

(** {12 Querying Benzene in Molecule_bridged in Molecule in Chemicalset.} *)

(* No Query from Benzene 0. *)

(** {12 Querying Phenol in Molecule_bridged in Molecule in Chemicalset.} *)

(* No Query from Phenol 0. *)

(** {12 Querying Pyrrole in Molecule_bridged in Molecule in Chemicalset.} *)

(* No Query from Pyrrole 0. *)

(** {9 Querying Molecule_dendrimer in Molecule in Chemicalset.} *)

val is_molecule_dendrimer_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Fake_d2 in Molecule_dendrimer in Molecule in Chemicalset.} *)

(* No Query from Fake_d2 0. *)

(** {9 Querying Molecule_forked in Molecule in Chemicalset.} *)

val is_molecule_forked_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Molecule_forked_oneforked in Molecule_forked in Molecule in Chemicalset.} *)

val is_molecule_forked_oneforked_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Molecule_forked_twoforked in Molecule_forked in Molecule in Chemicalset.} *)

val is_molecule_forked_twoforked_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Molecule_forked_threeforked in Molecule_forked in Molecule in Chemicalset.} *)

val is_molecule_forked_threeforked_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Molecule_forked_moreforked in Molecule_forked in Molecule in Chemicalset.} *)

val is_molecule_forked_moreforked_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Molecule_linear in Molecule in Chemicalset.} *)

val is_molecule_linear_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Molecule_linear_monoatomic in Molecule_linear in Molecule in Chemicalset.} *)

val is_molecule_linear_monoatomic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Molecule_linear_diatomic in Molecule_linear in Molecule in Chemicalset.} *)

val is_molecule_linear_diatomic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Molecule_linear_triatomic in Molecule_linear in Molecule in Chemicalset.} *)

val is_molecule_linear_triatomic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Molecule_linear_tetratomic in Molecule_linear in Molecule in Chemicalset.} *)

val is_molecule_linear_tetratomic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Molecule_linear_pentatomic in Molecule_linear in Molecule in Chemicalset.} *)

val is_molecule_linear_pentatomic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Molecule_linear_polyatomic in Molecule_linear in Molecule in Chemicalset.} *)

val is_molecule_linear_polyatomic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Molecule_nucleoside in Molecule in Chemicalset.} *)

(* No Query from molecule_nucleoside 0. *)

(** {9 Querying Molecule_polymer in Molecule in Chemicalset.} *)

val is_molecule_polymer_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Polypeptide in Molecule_polymer in Molecule in Chemicalset.} *)

val is_polypeptide_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Nucleicacid in Molecule_polymer in Molecule in Chemicalset.} *)

val is_nucleicacid_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {6 Querying Nitrogenous_base in Chemicalset.} *)

val is_nitrogenous_base_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Purine_base in Nitrogenous_base in Chemicalset.} *)

val is_purine_base_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Adenosine in Purine_base in Nitrogenous_base in Chemicalset.} *)

(* No Query from Adenosine 0. *)

(** {12 Querying Guanine in Purine_base in Nitrogenous_base in Chemicalset.} *)

(* No Query from Guanine 0. *)

(** {9 Querying Pyrimidine_base in Nitrogenous_base in Chemicalset.} *)

val is_pyrimidine_base_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Cytosine in Pyrimidine_base in Nitrogenous_base in Chemicalset.} *)

(* No Query from Cytosine 0. *)

(** {12 Querying Uracil in Pyrimidine_base in Nitrogenous_base in Chemicalset.} *)

(* No Query from Uracil 0. *)

(** {12 Querying Thymine in Pyrimidine_base in Nitrogenous_base in Chemicalset.} *)

(* No Query from Thymine 0. *)

(** {6 Querying Nucleoside in Chemicalset.} *)

val is_nucleoside_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Ribonucleoside in Nucleoside in Chemicalset.} *)

(* No Query from ribonucleoside 0. *)

(** {9 Querying Deoxyribonucleoside in Nucleoside in Chemicalset.} *)

(* No Query from deoxyribonucleoside 0. *)

(** {6 Querying Nucleotide in Chemicalset.} *)

val is_nucleotide_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Ribonucleotide in Nucleotide in Chemicalset.} *)

val is_ribonucleotide_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Ribonucleotide_purinic in Ribonucleotide in Nucleotide in Chemicalset.} *)

val is_ribonucleotide_purinic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Ribonucleotide_pyrimidinic in Ribonucleotide in Nucleotide in Chemicalset.} *)

val is_ribonucleotide_pyrimidinic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Deoxyribonucleotide in Nucleotide in Chemicalset.} *)

val is_deoxyribonucleotide_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Deoxyribonucleotide_purinic in Deoxyribonucleotide in Nucleotide in Chemicalset.} *)

val is_deoxyribonucleotide_purinic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Deoxyribonucleotide_pyrimidinic in Deoxyribonucleotide in Nucleotide in Chemicalset.} *)

val is_deoxyribonucleotide_pyrimidinic_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {6 Querying Peptideca in Chemicalset.} *)

val is_peptideca_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Peptideca_buried in Peptideca in Chemicalset.} *)

val is_peptideca_buried_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Peptideca_buried_segmented in Peptideca_buried in Peptideca in Chemicalset.} *)

val is_peptideca_buried_segmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Peptideca_buried_fragmented in Peptideca_buried in Peptideca in Chemicalset.} *)

val is_peptideca_buried_fragmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Peptideca_nterminal in Peptideca in Chemicalset.} *)

val is_peptideca_nterminal_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Peptideca_nterminal_segmented in Peptideca_nterminal in Peptideca in Chemicalset.} *)

val is_peptideca_nterminal_segmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Peptideca_nterminal_fragmented in Peptideca_nterminal in Peptideca in Chemicalset.} *)

val is_peptideca_nterminal_fragmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {6 Querying Polypeptide_sidegroup in Chemicalset.} *)

val is_polypeptide_sidegroup_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Benzyl in Polypeptide_sidegroup in Chemicalset.} *)

(* No Query from Benzyl 0. *)

(** {9 Querying DiEtheneAmine in Polypeptide_sidegroup in Chemicalset.} *)

(* No Query from DiEtheneAmine 0. *)

(** {9 Querying DiMetheneSMethyl in Polypeptide_sidegroup in Chemicalset.} *)

(* No Query from DiMetheneSMethyl 0. *)

(** {9 Querying MethineDiMethyl in Polypeptide_sidegroup in Chemicalset.} *)

(* No Query from MethineDiMethyl 0. *)

(** {9 Querying EtheneAcid in Polypeptide_sidegroup in Chemicalset.} *)

(* No Query from EtheneAcid 0. *)

(** {9 Querying EtheneAmide in Polypeptide_sidegroup in Chemicalset.} *)

(* No Query from EtheneAmide 0. *)

(** {9 Querying MetheneAcid in Polypeptide_sidegroup in Chemicalset.} *)

(* No Query from MetheneAcid 0. *)

(** {9 Querying MetheneAmide in Polypeptide_sidegroup in Chemicalset.} *)

(* No Query from MetheneAmide 0. *)

(** {9 Querying MetheneImidazole in Polypeptide_sidegroup in Chemicalset.} *)

(* No Query from MetheneImidazole 0. *)

(** {9 Querying MetheneMethineDiMethyl in Polypeptide_sidegroup in Chemicalset.} *)

(* No Query from MetheneMethineDiMethyl 0. *)

(** {9 Querying MethenePhenol in Polypeptide_sidegroup in Chemicalset.} *)

(* No Query from MethenePhenol 0. *)

(** {9 Querying MetheneThiol in Polypeptide_sidegroup in Chemicalset.} *)

(* No Query from MetheneThiol 0. *)

(** {9 Querying MetheneIndole in Polypeptide_sidegroup in Chemicalset.} *)

(* No Query from MetheneIndole 0. *)

(** {9 Querying Methenol in Polypeptide_sidegroup in Chemicalset.} *)

(* No Query from Methenol 0. *)

(** {9 Querying MethineEthylMethyl in Polypeptide_sidegroup in Chemicalset.} *)

(* No Query from MethineEthylMethyl 0. *)

(** {9 Querying MethinolMethyl in Polypeptide_sidegroup in Chemicalset.} *)

(* No Query from MethinolMethyl 0. *)

(** {9 Querying Methyl in Polypeptide_sidegroup in Chemicalset.} *)

(* No Query from Methyl 0. *)

(** {9 Querying TriMetheneGuanidinium in Polypeptide_sidegroup in Chemicalset.} *)

(* No Query from TriMetheneGuanidinium 0. *)

(** {6 Querying Residue in Chemicalset.} *)

val is_residue_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Residue_nterminal in Residue in Chemicalset.} *)

val is_residue_nterminal_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Residue_nterminal_segmented in Residue_nterminal in Residue in Chemicalset.} *)

val is_residue_nterminal_segmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Residue_nterminal_fragmented in Residue_nterminal in Residue in Chemicalset.} *)

val is_residue_nterminal_fragmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Residue_buried in Residue in Chemicalset.} *)

val is_residue_buried_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Residue_buried_segmented in Residue_buried in Residue in Chemicalset.} *)

val is_residue_buried_segmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Residue_buried_fragmented in Residue_buried in Residue in Chemicalset.} *)

val is_residue_buried_fragmented_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {6 Querying Segment in Chemicalset.} *)

val is_segment_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {9 Querying Segment_head in Segment in Chemicalset.} *)

val is_segment_head_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Segment_zeroone in Segment_head in Segment in Chemicalset.} *)

(* No Query from segment_zeroone 0. *)

(** {12 Querying Block_zeroone in Segment_head in Segment in Chemicalset.} *)

val is_block_zeroone_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Segment_rightextended in Segment_head in Segment in Chemicalset.} *)

(* No Query from segment_rightextended 0. *)

(** {9 Querying Segment_buried in Segment in Chemicalset.} *)

val is_segment_buried_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Segment_oneone in Segment_buried in Segment in Chemicalset.} *)

(* No Query from segment_oneone 0. *)

(** {12 Querying Block_oneone in Segment_buried in Segment in Chemicalset.} *)

val is_block_oneone_symbol_off_chemicalset_symbol :
  Chemicalset_symbol_t.chemicalset_symbol ->
  bool
;;

(** {12 Querying Segment_leftextended in Segment_buried in Segment in Chemicalset.} *)

(* No Query from segment_leftextended 0. *)

(** {12 Querying Polysegment in Segment_buried in Segment in Chemicalset.} *)

(* No Query from polysegment 0. *)

(** {6 Upgrading from Aggregate to Chemicalset.} *)

val chemicalset_symbol_of_aggregate_symbol :
  Aggregate_symbol_t.aggregate_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Doublet_string_ordinal through Aggregate to Chemicalset.} *)

(* No Upgrade from doublet_string_ordinal d. *)

(** {6 Upgrading from Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_symbol :
  Atom_symbol_t.atom_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Atom_zerotied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Atom_zerotied_raregas through Atom_zerotied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_zerotied_raregas_symbol :
  Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Atom_zerotied_anion through Atom_zerotied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_zerotied_anion_symbol :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Atom_zerotied_cation through Atom_zerotied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_zerotied_cation_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Halfbridge through Atom_zerotied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_halfbridge_symbol :
  Halfbridge_symbol_t.halfbridge_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Atom_onetied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_onetied_symbol :
  Atom_onetied_symbol_t.atom_onetied_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Atom_onetied_conjugated through Atom_onetied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_onetied_conjugated_symbol :
  Atom_onetied_conjugated_symbol_t.atom_onetied_conjugated_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Atom_onetied_double through Atom_onetied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_onetied_double_symbol :
  Atom_onetied_double_symbol_t.atom_onetied_double_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Atom_onetied_single through Atom_onetied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_onetied_single_symbol :
  Atom_onetied_single_symbol_t.atom_onetied_single_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Atom_onetied_triple through Atom_onetied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_onetied_triple_symbol :
  Atom_onetied_triple_symbol_t.atom_onetied_triple_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Atom_twotied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_twotied_symbol :
  Atom_twotied_symbol_t.atom_twotied_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Atom_twotied_single_single through Atom_twotied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_twotied_single_single_symbol :
  Atom_twotied_single_single_symbol_t.atom_twotied_single_single_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Atom_twotied_single_conjugated through Atom_twotied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_twotied_single_conjugated_symbol :
  Atom_twotied_single_conjugated_symbol_t.atom_twotied_single_conjugated_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Atom_twotied_single_double through Atom_twotied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_twotied_single_double_symbol :
  Atom_twotied_single_double_symbol_t.atom_twotied_single_double_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Atom_twotied_single_triple through Atom_twotied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_twotied_single_triple_symbol :
  Atom_twotied_single_triple_symbol_t.atom_twotied_single_triple_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Atom_twotied_conjugated_conjugated through Atom_twotied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_twotied_conjugated_conjugated_symbol :
  Atom_twotied_conjugated_conjugated_symbol_t.atom_twotied_conjugated_conjugated_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Atom_twotied_conjugated_double through Atom_twotied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_twotied_conjugated_double_symbol :
  Atom_twotied_conjugated_double_symbol_t.atom_twotied_conjugated_double_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Atom_twotied_double_double through Atom_twotied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_twotied_double_double_symbol :
  Atom_twotied_double_double_symbol_t.atom_twotied_double_double_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Atom_threetied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_threetied_symbol :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Atom_threetied_single_single_single through Atom_threetied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_threetied_single_single_single_symbol :
  Atom_threetied_single_single_single_symbol_t.atom_threetied_single_single_single_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Atom_threetied_single_single_double through Atom_threetied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_threetied_single_single_double_symbol :
  Atom_threetied_single_single_double_symbol_t.atom_threetied_single_single_double_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Atom_threetied_single_conjugated_conjugated through Atom_threetied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_threetied_single_conjugated_conjugated_symbol :
  Atom_threetied_single_conjugated_conjugated_symbol_t.atom_threetied_single_conjugated_conjugated_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Atom_threetied_conjugated_conjugated_conjugated through Atom_threetied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_threetied_conjugated_conjugated_conjugated_symbol :
  Atom_threetied_conjugated_conjugated_conjugated_symbol_t.atom_threetied_conjugated_conjugated_conjugated_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Atom_threetied_double_double_double through Atom_threetied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_threetied_double_double_double_symbol :
  Atom_threetied_double_double_double_symbol_t.atom_threetied_double_double_double_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Atom_fourtied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_fourtied_symbol :
  Atom_fourtied_symbol_t.atom_fourtied_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from C_4s through Atom_fourtied through Atom to Chemicalset.} *)

val c_4s : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from N_4s through Atom_fourtied through Atom to Chemicalset.} *)

val n_4s : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from S_4s through Atom_fourtied through Atom to Chemicalset.} *)

val s_4s : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Xe_4s through Atom_fourtied through Atom to Chemicalset.} *)

val xe_4s : Chemicalset_symbol_t.chemicalset_symbol;;
(** {9 Upgrading from Atom_fivetied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_fivetied_symbol :
  Atom_fivetied_symbol_t.atom_fivetied_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Cl_5s through Atom_fivetied through Atom to Chemicalset.} *)

val cl_5s : Chemicalset_symbol_t.chemicalset_symbol;;
(** {9 Upgrading from Atom_sixtied through Atom to Chemicalset.} *)

val chemicalset_symbol_of_atom_sixtied_symbol :
  Atom_sixtied_symbol_t.atom_sixtied_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from S_6s through Atom_sixtied through Atom to Chemicalset.} *)

val s_6s : Chemicalset_symbol_t.chemicalset_symbol;;
(** {6 Upgrading from Block to Chemicalset.} *)

val chemicalset_symbol_of_block_symbol :
  Block_symbol_t.block_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Block_zerozero through Block to Chemicalset.} *)

val chemicalset_symbol_of_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Atom_zerotied through Block_zerozero through Block to Chemicalset.} *)

val chemicalset_symbol_of_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Block_zerozero_diatomic through Block_zerozero through Block to Chemicalset.} *)

val chemicalset_symbol_of_block_zerozero_diatomic_symbol :
  Block_zerozero_diatomic_symbol_t.block_zerozero_diatomic_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Block_zerozero_triatomic through Block_zerozero through Block to Chemicalset.} *)

val chemicalset_symbol_of_block_zerozero_triatomic_symbol :
  Block_zerozero_triatomic_symbol_t.block_zerozero_triatomic_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Block_zerozero_tetratomic through Block_zerozero through Block to Chemicalset.} *)

val chemicalset_symbol_of_block_zerozero_tetratomic_symbol :
  Block_zerozero_tetratomic_symbol_t.block_zerozero_tetratomic_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Block_zerozero_pentatomic through Block_zerozero through Block to Chemicalset.} *)

val chemicalset_symbol_of_block_zerozero_pentatomic_symbol :
  Block_zerozero_pentatomic_symbol_t.block_zerozero_pentatomic_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Block_zeroone through Block to Chemicalset.} *)

val chemicalset_symbol_of_block_zeroone_symbol :
  Block_zeroone_symbol_t.block_zeroone_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Block_zeroonesingle through Block_zeroone through Block to Chemicalset.} *)

val chemicalset_symbol_of_block_zeroonesingle_symbol :
  Block_zeroonesingle_symbol_t.block_zeroonesingle_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Block_zeroonedouble through Block_zeroone through Block to Chemicalset.} *)

val chemicalset_symbol_of_block_zeroonedouble_symbol :
  Block_zeroonedouble_symbol_t.block_zeroonedouble_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Block_zeroonetriple through Block_zeroone through Block to Chemicalset.} *)

val chemicalset_symbol_of_block_zeroonetriple_symbol :
  Block_zeroonetriple_symbol_t.block_zeroonetriple_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Block_zeroonehalfbridge through Block_zeroone through Block to Chemicalset.} *)

val block_zeroonehalfbridge : Chemicalset_symbol_t.chemicalset_symbol;;
(** {9 Upgrading from Block_zerofork through Block to Chemicalset.} *)

val chemicalset_symbol_of_block_zerofork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Block_zerobifork through Block_zerofork through Block to Chemicalset.} *)

val chemicalset_symbol_of_block_zerobifork_symbol :
  Block_zerobifork_symbol_t.block_zerobifork_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Block_zerotrifork through Block_zerofork through Block to Chemicalset.} *)

val chemicalset_symbol_of_block_zerotrifork_symbol :
  Block_zerotrifork_symbol_t.block_zerotrifork_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Block_zeroquadrifork through Block_zerofork through Block to Chemicalset.} *)

val chemicalset_symbol_of_block_zeroquadrifork_symbol :
  Block_zeroquadrifork_symbol_t.block_zeroquadrifork_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Block_oneone through Block to Chemicalset.} *)

val chemicalset_symbol_of_block_oneone_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Block_onesingleonesingle through Block_oneone through Block to Chemicalset.} *)

val chemicalset_symbol_of_block_onesingleonesingle_symbol :
  Block_onesingleonesingle_symbol_t.block_onesingleonesingle_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Block_onesingleonedouble through Block_oneone through Block to Chemicalset.} *)

val chemicalset_symbol_of_block_onesingleonedouble_symbol :
  Block_onesingleonedouble_symbol_t.block_onesingleonedouble_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Block_onesingleonetriple through Block_oneone through Block to Chemicalset.} *)

val chemicalset_symbol_of_block_onesingleonetriple_symbol :
  Block_onesingleonetriple_symbol_t.block_onesingleonetriple_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Block_onedoubleonesingle through Block_oneone through Block to Chemicalset.} *)

val chemicalset_symbol_of_block_onedoubleonesingle_symbol :
  Block_onedoubleonesingle_symbol_t.block_onedoubleonesingle_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Block_onedoubleonedouble through Block_oneone through Block to Chemicalset.} *)

val chemicalset_symbol_of_block_onedoubleonedouble_symbol :
  Block_onedoubleonedouble_symbol_t.block_onedoubleonedouble_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Block_onetripleonesingle through Block_oneone through Block to Chemicalset.} *)

val chemicalset_symbol_of_block_onetripleonesingle_symbol :
  Block_onetripleonesingle_symbol_t.block_onetripleonesingle_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Block_oneend through Block to Chemicalset.} *)

val chemicalset_symbol_of_block_oneend_symbol :
  Block_oneend_symbol_t.block_oneend_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Block_onefork through Block_oneend through Block to Chemicalset.} *)

val chemicalset_symbol_of_block_onefork_symbol :
  Block_onefork_symbol_t.block_onefork_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Block_onezero through Block_oneend through Block to Chemicalset.} *)

val chemicalset_symbol_of_block_onezero_symbol :
  Block_onezero_symbol_t.block_onezero_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {6 Upgrading from Bond to Chemicalset.} *)

val chemicalset_symbol_of_bond_symbol :
  Bond_symbol_t.bond_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Bond_covalent through Bond to Chemicalset.} *)

val bond_covalent : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from Bond_hydrogen through Bond to Chemicalset.} *)

val bond_hydrogen : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from Bond_ionic through Bond to Chemicalset.} *)

val bond_ionic : Chemicalset_symbol_t.chemicalset_symbol;;

(** {6 Upgrading from Box to Chemicalset.} *)

val chemicalset_symbol_of_box_symbol :
  Box_symbol_t.box_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from String through Box to Chemicalset.} *)

val chemicalset_symbol_of_box_string :
  string ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Protein through Box to Chemicalset.} *)

val chemicalset_symbol_of_protein_symbol :
  Protein_symbol_t.protein_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Acg through Protein through Box to Chemicalset.} *)

val acg : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Adh through Protein through Box to Chemicalset.} *)

val adh : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Agagag through Protein through Box to Chemicalset.} *)

val agagag : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Agc through Protein through Box to Chemicalset.} *)

val agc : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Agg through Protein through Box to Chemicalset.} *)

val agg : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Agp through Protein through Box to Chemicalset.} *)

val agp : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Gac through Protein through Box to Chemicalset.} *)

val gac : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Gap through Protein through Box to Chemicalset.} *)

val gap : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Ggg through Protein through Box to Chemicalset.} *)

val ggg : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Ggacgg through Protein through Box to Chemicalset.} *)

val ggacgg : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Ggaggg through Protein through Box to Chemicalset.} *)

val ggaggg : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Gagaga through Protein through Box to Chemicalset.} *)

val gagaga : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Mhb through Protein through Box to Chemicalset.} *)

val mhb : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Pac through Protein through Box to Chemicalset.} *)

val pac : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Pag through Protein through Box to Chemicalset.} *)

val pag : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Pgk through Protein through Box to Chemicalset.} *)

val pgk : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Pti through Protein through Box to Chemicalset.} *)

val pti : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Sac through Protein through Box to Chemicalset.} *)

val sac : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Tab through Protein through Box to Chemicalset.} *)

val tab : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Try through Protein through Box to Chemicalset.} *)

val tr_ : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from String through Protein through Box to Chemicalset.} *)

val chemicalset_symbol_of_protein_string :
  string ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {6 Upgrading from Bridge to Chemicalset.} *)

val chemicalset_symbol_of_bridge_symbol :
  Bridge_symbol_t.bridge_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Bc through Bridge to Chemicalset.} *)

val bc : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from Bd through Bridge to Chemicalset.} *)

val bd : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from Bs through Bridge to Chemicalset.} *)

val bs : Chemicalset_symbol_t.chemicalset_symbol;;

(** {6 Upgrading from Chain to Chemicalset.} *)

val chemicalset_symbol_of_chain_symbol :
  Chain_symbol_t.chain_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Blank through Chain to Chemicalset.} *)

val blank : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from A through Chain to Chemicalset.} *)

val a : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from B through Chain to Chemicalset.} *)

val b : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from C through Chain to Chemicalset.} *)

val c : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from D through Chain to Chemicalset.} *)

val d : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from E through Chain to Chemicalset.} *)

val e : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from F through Chain to Chemicalset.} *)

val f : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from G through Chain to Chemicalset.} *)

val g : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from H through Chain to Chemicalset.} *)

val h : Chemicalset_symbol_t.chemicalset_symbol;;

(** {6 Upgrading from Cluster to Chemicalset.} *)

val chemicalset_symbol_of_cluster_symbol :
  Cluster_symbol_t.cluster_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Doublet_string_ordinal through Cluster to Chemicalset.} *)

(* No Upgrade from doublet_string_ordinal d. *)

(** {6 Upgrading from Cterminal_subunit to Chemicalset.} *)

val chemicalset_symbol_of_cterminal_subunit_symbol :
  Cterminal_subunit_symbol_t.cterminal_subunit_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Carboxyl_leftextended through Cterminal_subunit to Chemicalset.} *)

val carboxyl_leftextended : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from Carboxylate_leftextended through Cterminal_subunit to Chemicalset.} *)

val carboxylate_leftextended : Chemicalset_symbol_t.chemicalset_symbol;;

(** {6 Upgrading from Fragment to Chemicalset.} *)

val chemicalset_symbol_of_fragment_symbol :
  Fragment_symbol_t.fragment_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Fragment_closed through Fragment to Chemicalset.} *)

val chemicalset_symbol_of_fragment_closed_symbol :
  Fragment_closed_symbol_t.fragment_closed_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Fragment_zerozero through Fragment_closed through Fragment to Chemicalset.} *)

val fragment_zerozero : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Block_zerozero through Fragment_closed through Fragment to Chemicalset.} *)

val chemicalset_symbol_of_block_zerozero_symbol :
  Block_zerozero_symbol_t.block_zerozero_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Segment_head_extends_fragment_leaf through Fragment_closed through Fragment to Chemicalset.} *)

val segment_head_extends_fragment_leaf : Chemicalset_symbol_t.chemicalset_symbol;;
(** {9 Upgrading from Fragment_head through Fragment to Chemicalset.} *)

val chemicalset_symbol_of_fragment_head_symbol :
  Fragment_head_symbol_t.fragment_head_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Fragment_head_halfbridge through Fragment_head through Fragment to Chemicalset.} *)

val fragment_head_halfbridge : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Block_zerofork through Fragment_head through Fragment to Chemicalset.} *)

val chemicalset_symbol_of_block_zerofork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Fragment_zerofork through Fragment_head through Fragment to Chemicalset.} *)

val fragment_zerofork : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Segment_head_extends_fragment_buried through Fragment_head through Fragment to Chemicalset.} *)

val segment_head_extends_fragment_buried : Chemicalset_symbol_t.chemicalset_symbol;;
(** {9 Upgrading from Fragment_buried through Fragment to Chemicalset.} *)

val chemicalset_symbol_of_fragment_buried_symbol :
  Fragment_buried_symbol_t.fragment_buried_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Fragment_onefork through Fragment_buried through Fragment to Chemicalset.} *)

val fragment_onefork : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Block_onefork through Fragment_buried through Fragment to Chemicalset.} *)

val chemicalset_symbol_of_block_onefork_symbol :
  Block_onefork_symbol_t.block_onefork_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Polysegment_buried_leftextended through Fragment_buried through Fragment to Chemicalset.} *)

val polysegment_buried_leftextended : Chemicalset_symbol_t.chemicalset_symbol;;
(** {9 Upgrading from Fragment_leaf through Fragment to Chemicalset.} *)

val chemicalset_symbol_of_fragment_leaf_symbol :
  Fragment_leaf_symbol_t.fragment_leaf_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Fragment_halfbridgetail through Fragment_leaf through Fragment to Chemicalset.} *)

val fragment_halfbridgetail : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Fragment_halfbridge through Fragment_leaf through Fragment to Chemicalset.} *)

val fragment_halfbridge : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Block_zerofork through Fragment_leaf through Fragment to Chemicalset.} *)

val chemicalset_symbol_of_block_zerofork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Fragment_zerofork through Fragment_leaf through Fragment to Chemicalset.} *)

val fragment_zerofork : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Segment_head_extends_fragment_buried through Fragment_leaf through Fragment to Chemicalset.} *)

val segment_head_extends_fragment_buried : Chemicalset_symbol_t.chemicalset_symbol;;
(** {6 Upgrading from Grouping to Chemicalset.} *)

val chemicalset_symbol_of_grouping_symbol :
  Grouping_symbol_t.grouping_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Empty through Grouping to Chemicalset.} *)

val empty : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from Fragment_leaf through Grouping to Chemicalset.} *)

val chemicalset_symbol_of_fragment_leaf_symbol :
  Fragment_leaf_symbol_t.fragment_leaf_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Fragment_halfbridgetail through Fragment_leaf through Grouping to Chemicalset.} *)

val fragment_halfbridgetail : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Fragment_halfbridge through Fragment_leaf through Grouping to Chemicalset.} *)

val fragment_halfbridge : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Block_zerofork through Fragment_leaf through Grouping to Chemicalset.} *)

val chemicalset_symbol_of_block_zerofork_symbol :
  Block_zerofork_symbol_t.block_zerofork_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Fragment_zerofork through Fragment_leaf through Grouping to Chemicalset.} *)

val fragment_zerofork : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Segment_head_extends_fragment_buried through Fragment_leaf through Grouping to Chemicalset.} *)

val segment_head_extends_fragment_buried : Chemicalset_symbol_t.chemicalset_symbol;;
(** {9 Upgrading from Grouping_polyfragment through Grouping to Chemicalset.} *)

val chemicalset_symbol_of_grouping_polyfragment_symbol :
  Grouping_polyfragment_symbol_t.grouping_polyfragment_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from DiMethineTriMethyl through Grouping_polyfragment through Grouping to Chemicalset.} *)

val dimethinetrimethyl : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Ethcaracidmethyllamine through Grouping_polyfragment through Grouping to Chemicalset.} *)

val ethcaracidmethyllamine : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Ethcaracidmethylramine through Grouping_polyfragment through Grouping to Chemicalset.} *)

val ethcaracidmethylramine : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Ethineacidlamine through Grouping_polyfragment through Grouping to Chemicalset.} *)

val ethineacidlamine : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Ethineacidramine through Grouping_polyfragment through Grouping to Chemicalset.} *)

val ethineacidramine : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Guanidine through Grouping_polyfragment through Grouping to Chemicalset.} *)

val guanidine : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Guanidinium through Grouping_polyfragment through Grouping to Chemicalset.} *)

val guanidinium : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from MetheneMethineDiMethyl through Grouping_polyfragment through Grouping to Chemicalset.} *)

val methenemethinedimethyl : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from MethineDiMethyl through Grouping_polyfragment through Grouping to Chemicalset.} *)

val methinedimethyl : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from MethineEthylMethyl through Grouping_polyfragment through Grouping to Chemicalset.} *)

val methineethylmethyl : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from MethinolMethyl through Grouping_polyfragment through Grouping to Chemicalset.} *)

val methinolmethyl : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from TriMetheneGuanidinium through Grouping_polyfragment through Grouping to Chemicalset.} *)

val trimetheneguanidinium : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from TriMethineTetraMethyl through Grouping_polyfragment through Grouping to Chemicalset.} *)

val trimethinetetramethyl : Chemicalset_symbol_t.chemicalset_symbol;;
(** {9 Upgrading from Grouping_bridged through Grouping to Chemicalset.} *)

val chemicalset_symbol_of_grouping_bridged_symbol :
  Grouping_bridged_symbol_t.grouping_bridged_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Benzale through Grouping_bridged through Grouping to Chemicalset.} *)

val benzale : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Benzole through Grouping_bridged through Grouping to Chemicalset.} *)

val benzole : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Benzyl through Grouping_bridged through Grouping to Chemicalset.} *)

val benzyl : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Indole through Grouping_bridged through Grouping to Chemicalset.} *)

val indole : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Metheneimidazole through Grouping_bridged through Grouping to Chemicalset.} *)

val metheneimidazole : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from MetheneIndole through Grouping_bridged through Grouping to Chemicalset.} *)

val metheneindole : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Dimethonecarbonhydroxyldimethone through Grouping_bridged through Grouping to Chemicalset.} *)

val dimethonecarbonhydroxyldimethone : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Dimethone through Grouping_bridged through Grouping to Chemicalset.} *)

val dimethone : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Phenol through Grouping_bridged through Grouping to Chemicalset.} *)

val phenol : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Pyrrole through Grouping_bridged through Grouping to Chemicalset.} *)

val pyrrole : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Methenephenol through Grouping_bridged through Grouping to Chemicalset.} *)

val methenephenol : Chemicalset_symbol_t.chemicalset_symbol;;
(** {6 Upgrading from Mendeleev to Chemicalset.} *)

val chemicalset_symbol_of_mendeleev_symbol :
  Mendeleev_symbol_t.mendeleev_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Hand through Mendeleev to Chemicalset.} *)

(* No Upgrade from hand h. *)

(** {6 Upgrading from Molecule_aminoacid to Chemicalset.} *)

val chemicalset_symbol_of_molecule_aminoacid_symbol :
  Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Molecule_aminoacid_segmented through Molecule_aminoacid to Chemicalset.} *)

val chemicalset_symbol_of_molecule_aminoacid_segmented_symbol :
  Molecule_aminoacid_segmented_symbol_t.molecule_aminoacid_segmented_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Glycine through Molecule_aminoacid_segmented through Molecule_aminoacid to Chemicalset.} *)

val glycine : Chemicalset_symbol_t.chemicalset_symbol;;
(** {9 Upgrading from Molecule_aminoacid_fragmented through Molecule_aminoacid to Chemicalset.} *)

val chemicalset_symbol_of_molecule_aminoacid_fragmented_symbol :
  Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Pro through Molecule_aminoacid_fragmented through Molecule_aminoacid to Chemicalset.} *)

val pro : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Molecule_aminoacid_regular through Molecule_aminoacid_fragmented through Molecule_aminoacid to Chemicalset.} *)

val chemicalset_symbol_of_molecule_aminoacid_regular_symbol :
  Molecule_aminoacid_regular_symbol_t.molecule_aminoacid_regular_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {6 Upgrading from Molecule_aminoacid_olc to Chemicalset.} *)

val chemicalset_symbol_of_molecule_aminoacid_olc_symbol :
  Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Molecule_aminoacid_segmented_olc through Molecule_aminoacid_olc to Chemicalset.} *)

val chemicalset_symbol_of_molecule_aminoacid_segmented_olc_symbol :
  Molecule_aminoacid_segmented_olc_symbol_t.molecule_aminoacid_segmented_olc_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from G through Molecule_aminoacid_segmented_olc through Molecule_aminoacid_olc to Chemicalset.} *)

val g : Chemicalset_symbol_t.chemicalset_symbol;;
(** {9 Upgrading from Molecule_aminoacid_fragmented_olc through Molecule_aminoacid_olc to Chemicalset.} *)

val chemicalset_symbol_of_molecule_aminoacid_fragmented_olc_symbol :
  Molecule_aminoacid_fragmented_olc_symbol_t.molecule_aminoacid_fragmented_olc_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from P through Molecule_aminoacid_fragmented_olc through Molecule_aminoacid_olc to Chemicalset.} *)

val p : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc through Molecule_aminoacid_olc to Chemicalset.} *)

val chemicalset_symbol_of_molecule_aminoacid_regular_olc_symbol :
  Molecule_aminoacid_regular_olc_symbol_t.molecule_aminoacid_regular_olc_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {6 Upgrading from Molecule_aminoacid_tlc to Chemicalset.} *)

val chemicalset_symbol_of_molecule_aminoacid_tlc_symbol :
  Molecule_aminoacid_tlc_symbol_t.molecule_aminoacid_tlc_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Molecule_aminoacid_segmented_tlc through Molecule_aminoacid_tlc to Chemicalset.} *)

val chemicalset_symbol_of_molecule_aminoacid_segmented_tlc_symbol :
  Molecule_aminoacid_segmented_tlc_symbol_t.molecule_aminoacid_segmented_tlc_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Gly through Molecule_aminoacid_segmented_tlc through Molecule_aminoacid_tlc to Chemicalset.} *)

val gly : Chemicalset_symbol_t.chemicalset_symbol;;
(** {9 Upgrading from Molecule_aminoacid_fragmented_tlc through Molecule_aminoacid_tlc to Chemicalset.} *)

val chemicalset_symbol_of_molecule_aminoacid_fragmented_tlc_symbol :
  Molecule_aminoacid_fragmented_tlc_symbol_t.molecule_aminoacid_fragmented_tlc_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Pro through Molecule_aminoacid_fragmented_tlc through Molecule_aminoacid_tlc to Chemicalset.} *)

val pro : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc through Molecule_aminoacid_tlc to Chemicalset.} *)

val chemicalset_symbol_of_molecule_aminoacid_regular_tlc_symbol :
  Molecule_aminoacid_regular_tlc_symbol_t.molecule_aminoacid_regular_tlc_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {6 Upgrading from Molecule to Chemicalset.} *)

val chemicalset_symbol_of_molecule_symbol :
  Molecule_symbol_t.molecule_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Molecule_aminoacid through Molecule to Chemicalset.} *)

val chemicalset_symbol_of_molecule_aminoacid_symbol :
  Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Molecule_aminoacid_segmented through Molecule_aminoacid through Molecule to Chemicalset.} *)

val chemicalset_symbol_of_molecule_aminoacid_segmented_symbol :
  Molecule_aminoacid_segmented_symbol_t.molecule_aminoacid_segmented_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Molecule_aminoacid_fragmented through Molecule_aminoacid through Molecule to Chemicalset.} *)

val chemicalset_symbol_of_molecule_aminoacid_fragmented_symbol :
  Molecule_aminoacid_fragmented_symbol_t.molecule_aminoacid_fragmented_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Molecule_bridged through Molecule to Chemicalset.} *)

val chemicalset_symbol_of_molecule_bridged_symbol :
  Molecule_bridged_symbol_t.molecule_bridged_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Fake_b through Molecule_bridged through Molecule to Chemicalset.} *)

val fake_b : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Benzene through Molecule_bridged through Molecule to Chemicalset.} *)

val benzene : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Phenol through Molecule_bridged through Molecule to Chemicalset.} *)

val phenol : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Pyrrole through Molecule_bridged through Molecule to Chemicalset.} *)

val pyrrole : Chemicalset_symbol_t.chemicalset_symbol;;
(** {9 Upgrading from Molecule_dendrimer through Molecule to Chemicalset.} *)

val chemicalset_symbol_of_molecule_dendrimer_symbol :
  Molecule_dendrimer_symbol_t.molecule_dendrimer_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Fake_d2 through Molecule_dendrimer through Molecule to Chemicalset.} *)

val fake_d2 : Chemicalset_symbol_t.chemicalset_symbol;;
(** {9 Upgrading from Molecule_forked through Molecule to Chemicalset.} *)

val chemicalset_symbol_of_molecule_forked_symbol :
  Molecule_forked_symbol_t.molecule_forked_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Molecule_forked_oneforked through Molecule_forked through Molecule to Chemicalset.} *)

val chemicalset_symbol_of_molecule_forked_oneforked_symbol :
  Molecule_forked_oneforked_symbol_t.molecule_forked_oneforked_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Molecule_forked_twoforked through Molecule_forked through Molecule to Chemicalset.} *)

val chemicalset_symbol_of_molecule_forked_twoforked_symbol :
  Molecule_forked_twoforked_symbol_t.molecule_forked_twoforked_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Molecule_forked_threeforked through Molecule_forked through Molecule to Chemicalset.} *)

val chemicalset_symbol_of_molecule_forked_threeforked_symbol :
  Molecule_forked_threeforked_symbol_t.molecule_forked_threeforked_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Molecule_forked_moreforked through Molecule_forked through Molecule to Chemicalset.} *)

val chemicalset_symbol_of_molecule_forked_moreforked_symbol :
  Molecule_forked_moreforked_symbol_t.molecule_forked_moreforked_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Molecule_linear through Molecule to Chemicalset.} *)

val chemicalset_symbol_of_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Molecule_linear_monoatomic through Molecule_linear through Molecule to Chemicalset.} *)

val chemicalset_symbol_of_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Molecule_linear_diatomic through Molecule_linear through Molecule to Chemicalset.} *)

val chemicalset_symbol_of_molecule_linear_diatomic_symbol :
  Molecule_linear_diatomic_symbol_t.molecule_linear_diatomic_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Molecule_linear_triatomic through Molecule_linear through Molecule to Chemicalset.} *)

val chemicalset_symbol_of_molecule_linear_triatomic_symbol :
  Molecule_linear_triatomic_symbol_t.molecule_linear_triatomic_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Molecule_linear_tetratomic through Molecule_linear through Molecule to Chemicalset.} *)

val chemicalset_symbol_of_molecule_linear_tetratomic_symbol :
  Molecule_linear_tetratomic_symbol_t.molecule_linear_tetratomic_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Molecule_linear_pentatomic through Molecule_linear through Molecule to Chemicalset.} *)

val chemicalset_symbol_of_molecule_linear_pentatomic_symbol :
  Molecule_linear_pentatomic_symbol_t.molecule_linear_pentatomic_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Molecule_linear_polyatomic through Molecule_linear through Molecule to Chemicalset.} *)

val chemicalset_symbol_of_molecule_linear_polyatomic_symbol :
  Molecule_linear_polyatomic_symbol_t.molecule_linear_polyatomic_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Molecule_nucleoside through Molecule to Chemicalset.} *)

val molecule_nucleoside : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from Molecule_polymer through Molecule to Chemicalset.} *)

val chemicalset_symbol_of_molecule_polymer_symbol :
  Molecule_polymer_symbol_t.molecule_polymer_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Polypeptide through Molecule_polymer through Molecule to Chemicalset.} *)

val chemicalset_symbol_of_polypeptide_symbol :
  Polypeptide_symbol_t.polypeptide_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Nucleicacid through Molecule_polymer through Molecule to Chemicalset.} *)

val chemicalset_symbol_of_nucleicacid_symbol :
  Nucleicacid_symbol_t.nucleicacid_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {6 Upgrading from Nitrogenous_base to Chemicalset.} *)

val chemicalset_symbol_of_nitrogenous_base_symbol :
  Nitrogenous_base_symbol_t.nitrogenous_base_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Purine_base through Nitrogenous_base to Chemicalset.} *)

val chemicalset_symbol_of_purine_base_symbol :
  Purine_base_symbol_t.purine_base_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Adenosine through Purine_base through Nitrogenous_base to Chemicalset.} *)

val adenosine : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Guanine through Purine_base through Nitrogenous_base to Chemicalset.} *)

val guanine : Chemicalset_symbol_t.chemicalset_symbol;;
(** {9 Upgrading from Pyrimidine_base through Nitrogenous_base to Chemicalset.} *)

val chemicalset_symbol_of_pyrimidine_base_symbol :
  Pyrimidine_base_symbol_t.pyrimidine_base_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Cytosine through Pyrimidine_base through Nitrogenous_base to Chemicalset.} *)

val cytosine : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Uracil through Pyrimidine_base through Nitrogenous_base to Chemicalset.} *)

val uracil : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Thymine through Pyrimidine_base through Nitrogenous_base to Chemicalset.} *)

val thymine : Chemicalset_symbol_t.chemicalset_symbol;;
(** {6 Upgrading from Nucleoside to Chemicalset.} *)

val chemicalset_symbol_of_nucleoside_symbol :
  Nucleoside_symbol_t.nucleoside_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Ribonucleoside through Nucleoside to Chemicalset.} *)

val ribonucleoside : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from Deoxyribonucleoside through Nucleoside to Chemicalset.} *)

val deoxyribonucleoside : Chemicalset_symbol_t.chemicalset_symbol;;

(** {6 Upgrading from Nucleotide to Chemicalset.} *)

val chemicalset_symbol_of_nucleotide_symbol :
  Nucleotide_symbol_t.nucleotide_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Ribonucleotide through Nucleotide to Chemicalset.} *)

val chemicalset_symbol_of_ribonucleotide_symbol :
  Ribonucleotide_symbol_t.ribonucleotide_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Ribonucleotide_purinic through Ribonucleotide through Nucleotide to Chemicalset.} *)

val chemicalset_symbol_of_ribonucleotide_purinic_symbol :
  Ribonucleotide_purinic_symbol_t.ribonucleotide_purinic_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Ribonucleotide_pyrimidinic through Ribonucleotide through Nucleotide to Chemicalset.} *)

val chemicalset_symbol_of_ribonucleotide_pyrimidinic_symbol :
  Ribonucleotide_pyrimidinic_symbol_t.ribonucleotide_pyrimidinic_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Deoxyribonucleotide through Nucleotide to Chemicalset.} *)

val chemicalset_symbol_of_deoxyribonucleotide_symbol :
  Deoxyribonucleotide_symbol_t.deoxyribonucleotide_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Deoxyribonucleotide_purinic through Deoxyribonucleotide through Nucleotide to Chemicalset.} *)

val chemicalset_symbol_of_deoxyribonucleotide_purinic_symbol :
  Deoxyribonucleotide_purinic_symbol_t.deoxyribonucleotide_purinic_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Deoxyribonucleotide_pyrimidinic through Deoxyribonucleotide through Nucleotide to Chemicalset.} *)

val chemicalset_symbol_of_deoxyribonucleotide_pyrimidinic_symbol :
  Deoxyribonucleotide_pyrimidinic_symbol_t.deoxyribonucleotide_pyrimidinic_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {6 Upgrading from Peptideca to Chemicalset.} *)

val chemicalset_symbol_of_peptideca_symbol :
  Peptideca_symbol_t.peptideca_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Peptideca_buried through Peptideca to Chemicalset.} *)

val chemicalset_symbol_of_peptideca_buried_symbol :
  Peptideca_buried_symbol_t.peptideca_buried_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Peptideca_buried_segmented through Peptideca_buried through Peptideca to Chemicalset.} *)

val chemicalset_symbol_of_peptideca_buried_segmented_symbol :
  Peptideca_buried_segmented_symbol_t.peptideca_buried_segmented_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Peptideca_buried_fragmented through Peptideca_buried through Peptideca to Chemicalset.} *)

val chemicalset_symbol_of_peptideca_buried_fragmented_symbol :
  Peptideca_buried_fragmented_symbol_t.peptideca_buried_fragmented_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Peptideca_nterminal through Peptideca to Chemicalset.} *)

val chemicalset_symbol_of_peptideca_nterminal_symbol :
  Peptideca_nterminal_symbol_t.peptideca_nterminal_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Peptideca_nterminal_segmented through Peptideca_nterminal through Peptideca to Chemicalset.} *)

val chemicalset_symbol_of_peptideca_nterminal_segmented_symbol :
  Peptideca_nterminal_segmented_symbol_t.peptideca_nterminal_segmented_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Peptideca_nterminal_fragmented through Peptideca_nterminal through Peptideca to Chemicalset.} *)

val chemicalset_symbol_of_peptideca_nterminal_fragmented_symbol :
  Peptideca_nterminal_fragmented_symbol_t.peptideca_nterminal_fragmented_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {6 Upgrading from Polypeptide_sidegroup to Chemicalset.} *)

val chemicalset_symbol_of_polypeptide_sidegroup_symbol :
  Polypeptide_sidegroup_symbol_t.polypeptide_sidegroup_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Benzyl through Polypeptide_sidegroup to Chemicalset.} *)

val benzyl : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from DiEtheneAmine through Polypeptide_sidegroup to Chemicalset.} *)

val dietheneamine : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from DiMetheneSMethyl through Polypeptide_sidegroup to Chemicalset.} *)

val dimethenesmethyl : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from MethineDiMethyl through Polypeptide_sidegroup to Chemicalset.} *)

val methinedimethyl : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from EtheneAcid through Polypeptide_sidegroup to Chemicalset.} *)

val etheneacid : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from EtheneAmide through Polypeptide_sidegroup to Chemicalset.} *)

val etheneamide : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from MetheneAcid through Polypeptide_sidegroup to Chemicalset.} *)

val metheneacid : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from MetheneAmide through Polypeptide_sidegroup to Chemicalset.} *)

val metheneamide : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from MetheneImidazole through Polypeptide_sidegroup to Chemicalset.} *)

val metheneimidazole : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from MetheneMethineDiMethyl through Polypeptide_sidegroup to Chemicalset.} *)

val methenemethinedimethyl : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from MethenePhenol through Polypeptide_sidegroup to Chemicalset.} *)

val methenephenol : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from MetheneThiol through Polypeptide_sidegroup to Chemicalset.} *)

val methenethiol : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from MetheneIndole through Polypeptide_sidegroup to Chemicalset.} *)

val metheneindole : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from Methenol through Polypeptide_sidegroup to Chemicalset.} *)

val methenol : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from MethineEthylMethyl through Polypeptide_sidegroup to Chemicalset.} *)

val methineethylmethyl : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from MethinolMethyl through Polypeptide_sidegroup to Chemicalset.} *)

val methinolmethyl : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from Methyl through Polypeptide_sidegroup to Chemicalset.} *)

val methyl : Chemicalset_symbol_t.chemicalset_symbol;;

(** {9 Upgrading from TriMetheneGuanidinium through Polypeptide_sidegroup to Chemicalset.} *)

val trimetheneguanidinium : Chemicalset_symbol_t.chemicalset_symbol;;

(** {6 Upgrading from Residue to Chemicalset.} *)

val chemicalset_symbol_of_residue_symbol :
  Residue_symbol_t.residue_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Residue_nterminal through Residue to Chemicalset.} *)

val chemicalset_symbol_of_residue_nterminal_symbol :
  Residue_nterminal_symbol_t.residue_nterminal_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Residue_nterminal_segmented through Residue_nterminal through Residue to Chemicalset.} *)

val chemicalset_symbol_of_residue_nterminal_segmented_symbol :
  Residue_nterminal_segmented_symbol_t.residue_nterminal_segmented_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Residue_nterminal_fragmented through Residue_nterminal through Residue to Chemicalset.} *)

val chemicalset_symbol_of_residue_nterminal_fragmented_symbol :
  Residue_nterminal_fragmented_symbol_t.residue_nterminal_fragmented_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Residue_buried through Residue to Chemicalset.} *)

val chemicalset_symbol_of_residue_buried_symbol :
  Residue_buried_symbol_t.residue_buried_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Residue_buried_segmented through Residue_buried through Residue to Chemicalset.} *)

val chemicalset_symbol_of_residue_buried_segmented_symbol :
  Residue_buried_segmented_symbol_t.residue_buried_segmented_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Residue_buried_fragmented through Residue_buried through Residue to Chemicalset.} *)

val chemicalset_symbol_of_residue_buried_fragmented_symbol :
  Residue_buried_fragmented_symbol_t.residue_buried_fragmented_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {6 Upgrading from Segment to Chemicalset.} *)

val chemicalset_symbol_of_segment_symbol :
  Segment_symbol_t.segment_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {9 Upgrading from Segment_head through Segment to Chemicalset.} *)

val chemicalset_symbol_of_segment_head_symbol :
  Segment_head_symbol_t.segment_head_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Segment_zeroone through Segment_head through Segment to Chemicalset.} *)

val segment_zeroone : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Block_zeroone through Segment_head through Segment to Chemicalset.} *)

val chemicalset_symbol_of_block_zeroone_symbol :
  Block_zeroone_symbol_t.block_zeroone_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Segment_rightextended through Segment_head through Segment to Chemicalset.} *)

val segment_rightextended : Chemicalset_symbol_t.chemicalset_symbol;;
(** {9 Upgrading from Segment_buried through Segment to Chemicalset.} *)

val chemicalset_symbol_of_segment_buried_symbol :
  Segment_buried_symbol_t.segment_buried_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Segment_oneone through Segment_buried through Segment to Chemicalset.} *)

val segment_oneone : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Block_oneone through Segment_buried through Segment to Chemicalset.} *)

val chemicalset_symbol_of_block_oneone_symbol :
  Block_oneone_symbol_t.block_oneone_symbol ->
    Chemicalset_symbol_t.chemicalset_symbol
;;

(** {12 Upgrading from Segment_leftextended through Segment_buried through Segment to Chemicalset.} *)

val segment_leftextended : Chemicalset_symbol_t.chemicalset_symbol;;
(** {12 Upgrading from Polysegment through Segment_buried through Segment to Chemicalset.} *)

val polysegment : Chemicalset_symbol_t.chemicalset_symbol;;
(** created by ./do_entitysum_symbol_v_mli.sh chemicalset 12 January 2011. *)

