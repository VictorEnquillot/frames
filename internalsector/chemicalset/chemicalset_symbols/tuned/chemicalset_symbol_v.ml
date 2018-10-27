(** {3 The functionalities for a Symbol for a Chemicalset.} *)

let nam_cod = "chemicalset_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Making} *)




(** {6 Naming} *)


let name = function
  | Chemicalset_symbol_t.Atom_symbol sym_atm ->
      Atom_symbol_v.name sym_atm
  | Chemicalset_symbol_t.Block_symbol sym_blk ->
      Block_symbol_v.name sym_blk
  | Chemicalset_symbol_t.Bond_symbol sym_bod ->
      Bond_symbol_v.name sym_bod
  | Chemicalset_symbol_t.Bridge_symbol sym_bre ->
      Bridge_symbol_v.name sym_bre
  | Chemicalset_symbol_t.Chain_symbol sym_chn ->
      Chain_symbol_v.name sym_chn
  | Chemicalset_symbol_t.Cluster_symbol sym_clr ->
      Cluster_symbol_v.name sym_clr
  | Chemicalset_symbol_t.Coffer_symbol sym_cor ->
      Coffer_symbol_v.name sym_cor
  | Chemicalset_symbol_t.Cterminal_subunit_symbol sym_cts ->
      Cterminal_subunit_symbol_v.name sym_cts
  | Chemicalset_symbol_t.Fragment_symbol sym_frt ->
      Fragment_symbol_v.name sym_frt
  | Chemicalset_symbol_t.Grouping_symbol sym_grg ->
      Grouping_symbol_v.name sym_grg
  | Chemicalset_symbol_t.Mendeleev_symbol sym_mev ->
      Mendeleev_symbol_v.name sym_mev
  | Chemicalset_symbol_t.Molecule_symbol sym_moe ->
      Molecule_symbol_v.name sym_moe
  | Chemicalset_symbol_t.Peptideca_symbol sym_pea ->
      Peptideca_symbol_v.name sym_pea
  | Chemicalset_symbol_t.Protein_symbol sym_prn ->
      Protein_symbol_v.name sym_prn
  | Chemicalset_symbol_t.Polypeptide_sidegroup_symbol sym_pos ->
      Polypeptide_sidegroup_symbol_v.name sym_pos
  | Chemicalset_symbol_t.Polypeptide_subunit_symbol sym_pos ->
      Polypeptide_subunit_symbol_v.name sym_pos
  | Chemicalset_symbol_t.Residue_symbol sym_ree ->
      Residue_symbol_v.name sym_ree
  | Chemicalset_symbol_t.Segment_symbol sym_set ->
      Segment_symbol_v.name sym_set
;;


(** {6 Extracting} *)


let atom_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Atom_symbol sym_atm -> sym_atm
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "atom_symbol_off_chemicalset_symbol"
      "Atom_symbol"
      (name sym_cht) "check"
;;

let atom_core_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_core_symbol_off_atom_symbol sym_atm
;;

let atom_twotied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_twotied_symbol_off_atom_symbol sym_atm
;;

let atom_twotied_singlesingle_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_twotied_singlesingle_symbol_off_atom_symbol sym_atm
;;

let atom_twotied_singleconjugated_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_twotied_singleconjugated_symbol_off_atom_symbol sym_atm
;;

let atom_twotied_singledouble_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_twotied_singledouble_symbol_off_atom_symbol sym_atm
;;

let atom_twotied_singletriple_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_twotied_singletriple_symbol_off_atom_symbol sym_atm
;;

let atom_twotied_conjugatedconjugated_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_twotied_conjugatedconjugated_symbol_off_atom_symbol sym_atm
;;

let atom_twotied_conjugated_double_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_twotied_conjugated_double_symbol_off_atom_symbol sym_atm
;;

let atom_twotied_doubledouble_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_twotied_doubledouble_symbol_off_atom_symbol sym_atm
;;

let atom_threetied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_threetied_symbol_off_atom_symbol sym_atm
;;

let atom_threetied_singlesingle_single_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_threetied_singlesingle_single_symbol_off_atom_symbol sym_atm
;;

let atom_threetied_singlesingledouble_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_threetied_singlesingledouble_symbol_off_atom_symbol sym_atm
;;

let atom_threetied_singleconjugatedconjugated_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_threetied_singleconjugatedconjugated_symbol_off_atom_symbol sym_atm
;;

let atom_threetied_conjugatedconjugated_conjugated_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_threetied_conjugatedconjugated_conjugated_symbol_off_atom_symbol sym_atm
;;

let atom_threetied_doubledouble_double_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_threetied_doubledouble_double_symbol_off_atom_symbol sym_atm
;;

let atom_fourtied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_fourtied_symbol_off_atom_symbol sym_atm
;;

let atom_fivetied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_fivetied_symbol_off_atom_symbol sym_atm
;;

let atom_sixtied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_sixtied_symbol_off_atom_symbol sym_atm
;;

let atom_onetied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_onetied_symbol_off_atom_symbol sym_atm
;;

let atom_onetied_conjugated_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_onetied_conjugated_symbol_off_atom_symbol sym_atm
;;

let atom_onetied_double_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_onetied_double_symbol_off_atom_symbol sym_atm
;;

let atom_onetied_single_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_onetied_single_symbol_off_atom_symbol sym_atm
;;

let atom_onetied_triple_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_onetied_triple_symbol_off_atom_symbol sym_atm
;;

let atom_zerotied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_zerotied_symbol_off_atom_symbol sym_atm
;;

let atom_zerotied_anion_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_zerotied_anion_symbol_off_atom_symbol sym_atm
;;

let atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_zerotied_anion_minusone_symbol_off_atom_symbol sym_atm
;;

let atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_zerotied_anion_minustwo_symbol_off_atom_symbol sym_atm
;;

let atom_zerotied_cation_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_zerotied_cation_symbol_off_atom_symbol sym_atm
;;

let atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_zerotied_cation_plusone_symbol_off_atom_symbol sym_atm
;;

let atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_zerotied_cation_plustwo_symbol_off_atom_symbol sym_atm
;;

let atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_zerotied_cation_plusthree_symbol_off_atom_symbol sym_atm
;;

let atom_zerotied_raregas_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.atom_zerotied_raregas_symbol_off_atom_symbol sym_atm
;;

let halfbridge_symbol_off_chemicalset_symbol sym_cht = 
  let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
    Atom_symbol_v.halfbridge_symbol_off_atom_symbol sym_atm
;;

let block_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Block_symbol sym_blk -> sym_blk
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "block_symbol_off_chemicalset_symbol"
      "Block_symbol"
      (name sym_cht) "check"
;;

let block_zerozero_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_zerozero_symbol_off_block_symbol sym_blk
;;

let block_zerozero_monoatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_zerozero_monoatomic_symbol_off_block_symbol sym_blk
;;

let atom_zerotied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.atom_zerotied_symbol_off_block_symbol sym_blk
;;

let atom_zerotied_anion_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.atom_zerotied_anion_symbol_off_block_symbol sym_blk
;;

let atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.atom_zerotied_anion_minusone_symbol_off_block_symbol sym_blk
;;

let atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.atom_zerotied_anion_minustwo_symbol_off_block_symbol sym_blk
;;

let atom_zerotied_cation_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.atom_zerotied_cation_symbol_off_block_symbol sym_blk
;;

let atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.atom_zerotied_cation_plusone_symbol_off_block_symbol sym_blk
;;

let atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.atom_zerotied_cation_plustwo_symbol_off_block_symbol sym_blk
;;

let atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.atom_zerotied_cation_plusthree_symbol_off_block_symbol sym_blk
;;

let atom_zerotied_raregas_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.atom_zerotied_raregas_symbol_off_block_symbol sym_blk
;;

let halfbridge_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.halfbridge_symbol_off_block_symbol sym_blk
;;

let block_zerozero_diatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_zerozero_diatomic_symbol_off_block_symbol sym_blk
;;

let block_zerozero_triatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_zerozero_triatomic_symbol_off_block_symbol sym_blk
;;

let block_zerozero_tetratomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_zerozero_tetratomic_symbol_off_block_symbol sym_blk
;;

let block_zerozero_pentatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_zerozero_pentatomic_symbol_off_block_symbol sym_blk
;;

let block_zeroone_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_zeroone_symbol_off_block_symbol sym_blk
;;

let block_zeroonesingle_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_zeroonesingle_symbol_off_block_symbol sym_blk
;;

let block_zeroonedouble_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_zeroonedouble_symbol_off_block_symbol sym_blk
;;

let block_zeroonetriple_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_zeroonetriple_symbol_off_block_symbol sym_blk
;;

let block_zerofork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_zerofork_symbol_off_block_symbol sym_blk
;;

let block_zerobifork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_zerobifork_symbol_off_block_symbol sym_blk
;;

let block_zerotrifork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_zerotrifork_symbol_off_block_symbol sym_blk
;;

let block_zeroquadrifork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_zeroquadrifork_symbol_off_block_symbol sym_blk
;;

let block_oneone_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_oneone_symbol_off_block_symbol sym_blk
;;

let block_onesingleonesingle_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_onesingleonesingle_symbol_off_block_symbol sym_blk
;;

let block_onesingleonedouble_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_onesingleonedouble_symbol_off_block_symbol sym_blk
;;

let block_onesingleonetriple_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_onesingleonetriple_symbol_off_block_symbol sym_blk
;;

let block_onedoubleonesingle_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_onedoubleonesingle_symbol_off_block_symbol sym_blk
;;

let block_onedoubleonedouble_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_onedoubleonedouble_symbol_off_block_symbol sym_blk
;;

let block_onetripleonesingle_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_onetripleonesingle_symbol_off_block_symbol sym_blk
;;

let block_oneend_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_oneend_symbol_off_block_symbol sym_blk
;;

let block_onefork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_onefork_symbol_off_block_symbol sym_blk
;;

let block_onebifork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_onebifork_symbol_off_block_symbol sym_blk
;;

let block_onesinglebifork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_onesinglebifork_symbol_off_block_symbol sym_blk
;;

let block_onesinglebiforksinglesingle_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_onesinglebiforksinglesingle_symbol_off_block_symbol sym_blk
;;

let block_onedoublebifork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_onedoublebifork_symbol_off_block_symbol sym_blk
;;

let block_onetrifork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_onetrifork_symbol_off_block_symbol sym_blk
;;

let block_onesingletriforksinglesinglesingle_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_onesingletriforksinglesinglesingle_symbol_off_block_symbol sym_blk
;;

let block_onezero_symbol_off_chemicalset_symbol sym_cht = 
  let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
    Block_symbol_v.block_onezero_symbol_off_block_symbol sym_blk
;;

let bond_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Bond_symbol sym_bod -> sym_bod
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "bond_symbol_off_chemicalset_symbol"
      "Bond_symbol"
      (name sym_cht) "check"
;;

let bridge_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Bridge_symbol sym_bre -> sym_bre
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "bridge_symbol_off_chemicalset_symbol"
      "Bridge_symbol"
      (name sym_cht) "check"
;;

let chain_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Chain_symbol sym_chn -> sym_chn
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "chain_symbol_off_chemicalset_symbol"
      "Chain_symbol"
      (name sym_cht) "check"
;;

let cluster_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Cluster_symbol sym_clr -> sym_clr
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "cluster_symbol_off_chemicalset_symbol"
      "Cluster_symbol"
      (name sym_cht) "check"
;;

let coffer_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Coffer_symbol sym_cor -> sym_cor
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "coffer_symbol_off_chemicalset_symbol"
      "Coffer_symbol"
      (name sym_cht) "check"
;;

let cterminal_subunit_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Cterminal_subunit_symbol sym_cts -> sym_cts
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "cterminal_subunit_symbol_off_chemicalset_symbol"
      "Cterminal_subunit_symbol"
      (name sym_cht) "check"
;;

let fragment_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Fragment_symbol sym_frt -> sym_frt
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "fragment_symbol_off_chemicalset_symbol"
      "Fragment_symbol"
      (name sym_cht) "check"
;;

let fragment_closed_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.fragment_closed_symbol_off_fragment_symbol sym_frt
;;

let block_zerozero_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_zerozero_symbol_off_fragment_symbol sym_frt
;;

let block_zerozero_monoatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_zerozero_monoatomic_symbol_off_fragment_symbol sym_frt
;;

let atom_zerotied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.atom_zerotied_symbol_off_fragment_symbol sym_frt
;;

let atom_zerotied_anion_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.atom_zerotied_anion_symbol_off_fragment_symbol sym_frt
;;

let atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.atom_zerotied_anion_minusone_symbol_off_fragment_symbol sym_frt
;;

let atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.atom_zerotied_anion_minustwo_symbol_off_fragment_symbol sym_frt
;;

let atom_zerotied_cation_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.atom_zerotied_cation_symbol_off_fragment_symbol sym_frt
;;

let atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.atom_zerotied_cation_plusone_symbol_off_fragment_symbol sym_frt
;;

let atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.atom_zerotied_cation_plustwo_symbol_off_fragment_symbol sym_frt
;;

let atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.atom_zerotied_cation_plusthree_symbol_off_fragment_symbol sym_frt
;;

let atom_zerotied_raregas_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.atom_zerotied_raregas_symbol_off_fragment_symbol sym_frt
;;

let halfbridge_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.halfbridge_symbol_off_fragment_symbol sym_frt
;;

let block_zerozero_diatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_zerozero_diatomic_symbol_off_fragment_symbol sym_frt
;;

let block_zerozero_triatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_zerozero_triatomic_symbol_off_fragment_symbol sym_frt
;;

let block_zerozero_tetratomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_zerozero_tetratomic_symbol_off_fragment_symbol sym_frt
;;

let block_zerozero_pentatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_zerozero_pentatomic_symbol_off_fragment_symbol sym_frt
;;

let fragment_head_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.fragment_head_symbol_off_fragment_symbol sym_frt
;;

let block_zerofork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_zerofork_symbol_off_fragment_symbol sym_frt
;;

let block_zerobifork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_zerobifork_symbol_off_fragment_symbol sym_frt
;;

let block_zerotrifork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_zerotrifork_symbol_off_fragment_symbol sym_frt
;;

let block_zeroquadrifork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_zeroquadrifork_symbol_off_fragment_symbol sym_frt
;;

let fragment_buried_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.fragment_buried_symbol_off_fragment_symbol sym_frt
;;

let block_onefork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_onefork_symbol_off_fragment_symbol sym_frt
;;

let block_onebifork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_onebifork_symbol_off_fragment_symbol sym_frt
;;

let block_onesinglebifork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_onesinglebifork_symbol_off_fragment_symbol sym_frt
;;

let block_onesinglebiforksinglesingle_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_onesinglebiforksinglesingle_symbol_off_fragment_symbol sym_frt
;;

let block_onedoublebifork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_onedoublebifork_symbol_off_fragment_symbol sym_frt
;;

let block_onetrifork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_onetrifork_symbol_off_fragment_symbol sym_frt
;;

let block_onesingletriforksinglesinglesingle_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_onesingletriforksinglesinglesingle_symbol_off_fragment_symbol sym_frt
;;

let fragment_leaf_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.fragment_leaf_symbol_off_fragment_symbol sym_frt
;;

let block_zerofork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_zerofork_symbol_off_fragment_symbol sym_frt
;;

let block_zerobifork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_zerobifork_symbol_off_fragment_symbol sym_frt
;;

let block_zerotrifork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_zerotrifork_symbol_off_fragment_symbol sym_frt
;;

let block_zeroquadrifork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
    Fragment_symbol_v.block_zeroquadrifork_symbol_off_fragment_symbol sym_frt
;;

let grouping_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Grouping_symbol sym_grg -> sym_grg
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "grouping_symbol_off_chemicalset_symbol"
      "Grouping_symbol"
      (name sym_cht) "check"
;;

let fragment_leaf_symbol_off_chemicalset_symbol sym_cht = 
  let sym_grg = grouping_symbol_off_chemicalset_symbol sym_cht in 
    Grouping_symbol_v.fragment_leaf_symbol_off_grouping_symbol sym_grg
;;

let block_zerofork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_grg = grouping_symbol_off_chemicalset_symbol sym_cht in 
    Grouping_symbol_v.block_zerofork_symbol_off_grouping_symbol sym_grg
;;

let block_zerobifork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_grg = grouping_symbol_off_chemicalset_symbol sym_cht in 
    Grouping_symbol_v.block_zerobifork_symbol_off_grouping_symbol sym_grg
;;

let block_zerotrifork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_grg = grouping_symbol_off_chemicalset_symbol sym_cht in 
    Grouping_symbol_v.block_zerotrifork_symbol_off_grouping_symbol sym_grg
;;

let block_zeroquadrifork_symbol_off_chemicalset_symbol sym_cht = 
  let sym_grg = grouping_symbol_off_chemicalset_symbol sym_cht in 
    Grouping_symbol_v.block_zeroquadrifork_symbol_off_grouping_symbol sym_grg
;;

let grouping_polyfragment_symbol_off_chemicalset_symbol sym_cht = 
  let sym_grg = grouping_symbol_off_chemicalset_symbol sym_cht in 
    Grouping_symbol_v.grouping_polyfragment_symbol_off_grouping_symbol sym_grg
;;

let grouping_bridged_symbol_off_chemicalset_symbol sym_cht = 
  let sym_grg = grouping_symbol_off_chemicalset_symbol sym_cht in 
    Grouping_symbol_v.grouping_bridged_symbol_off_grouping_symbol sym_grg
;;

let mendeleev_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Mendeleev_symbol sym_mev -> sym_mev
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "mendeleev_symbol_off_chemicalset_symbol"
      "Mendeleev_symbol"
      (name sym_cht) "check"
;;

let molecule_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Molecule_symbol sym_moe -> sym_moe
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "molecule_symbol_off_chemicalset_symbol"
      "Molecule_symbol"
      (name sym_cht) "check"
;;

let molecule_aminoacid_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_aminoacid_symbol_off_molecule_symbol sym_moe
;;

let molecule_aminoacid_segmented_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_aminoacid_segmented_symbol_off_molecule_symbol sym_moe
;;

let molecule_aminoacid_fragmented_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_aminoacid_fragmented_symbol_off_molecule_symbol sym_moe
;;

let molecule_aminoacid_fragmented_regular_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_aminoacid_fragmented_regular_symbol_off_molecule_symbol sym_moe
;;

let molecule_bridged_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_bridged_symbol_off_molecule_symbol sym_moe
;;

let molecule_dendrimer_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_dendrimer_symbol_off_molecule_symbol sym_moe
;;

let molecule_forked_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_forked_symbol_off_molecule_symbol sym_moe
;;

let molecule_forked_oneforked_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_forked_oneforked_symbol_off_molecule_symbol sym_moe
;;

let molecule_forked_twoforked_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_forked_twoforked_symbol_off_molecule_symbol sym_moe
;;

let molecule_forked_threeforked_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_forked_threeforked_symbol_off_molecule_symbol sym_moe
;;

let molecule_forked_moreforked_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_forked_moreforked_symbol_off_molecule_symbol sym_moe
;;

let molecule_linear_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_linear_symbol_off_molecule_symbol sym_moe
;;

let molecule_linear_monoatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_linear_monoatomic_symbol_off_molecule_symbol sym_moe
;;

let atom_zerotied_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.atom_zerotied_symbol_off_molecule_symbol sym_moe
;;

let atom_zerotied_anion_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.atom_zerotied_anion_symbol_off_molecule_symbol sym_moe
;;

let atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.atom_zerotied_anion_minusone_symbol_off_molecule_symbol sym_moe
;;

let atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.atom_zerotied_anion_minustwo_symbol_off_molecule_symbol sym_moe
;;

let atom_zerotied_cation_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.atom_zerotied_cation_symbol_off_molecule_symbol sym_moe
;;

let atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.atom_zerotied_cation_plusone_symbol_off_molecule_symbol sym_moe
;;

let atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.atom_zerotied_cation_plustwo_symbol_off_molecule_symbol sym_moe
;;

let atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.atom_zerotied_cation_plusthree_symbol_off_molecule_symbol sym_moe
;;

let atom_zerotied_raregas_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.atom_zerotied_raregas_symbol_off_molecule_symbol sym_moe
;;

let halfbridge_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.halfbridge_symbol_off_molecule_symbol sym_moe
;;

let molecule_linear_diatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_linear_diatomic_symbol_off_molecule_symbol sym_moe
;;

let molecule_linear_triatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_linear_triatomic_symbol_off_molecule_symbol sym_moe
;;

let molecule_linear_tetratomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_linear_tetratomic_symbol_off_molecule_symbol sym_moe
;;

let molecule_linear_pentatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_linear_pentatomic_symbol_off_molecule_symbol sym_moe
;;

let molecule_linear_polyatomic_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_linear_polyatomic_symbol_off_molecule_symbol sym_moe
;;

let molecule_polymer_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.molecule_polymer_symbol_off_molecule_symbol sym_moe
;;

let polypeptide_symbol_off_chemicalset_symbol sym_cht = 
  let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
    Molecule_symbol_v.polypeptide_symbol_off_molecule_symbol sym_moe
;;

let polypeptide_subunit_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Polypeptide_subunit_symbol sym_moe -> sym_moe
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "polypeptide_subunit_symbol_off_chemicalset_symbol"
      "Polypeptide_subunit_symbol"
      (name sym_cht) "check"
;;

let peptideca_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Peptideca_symbol sym_pea -> sym_pea
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "peptideca_symbol_off_chemicalset_symbol"
      "Peptideca_symbol"
      (name sym_cht) "check"
;;

let peptideca_buried_symbol_off_chemicalset_symbol sym_cht = 
  let sym_pea = peptideca_symbol_off_chemicalset_symbol sym_cht in 
    Peptideca_symbol_v.peptideca_buried_symbol_off_peptideca_symbol sym_pea
;;

let peptideca_buried_segmented_symbol_off_chemicalset_symbol sym_cht = 
  let sym_pea = peptideca_symbol_off_chemicalset_symbol sym_cht in 
    Peptideca_symbol_v.peptideca_buried_segmented_symbol_off_peptideca_symbol sym_pea
;;

let peptideca_buried_fragmented_symbol_off_chemicalset_symbol sym_cht = 
  let sym_pea = peptideca_symbol_off_chemicalset_symbol sym_cht in 
    Peptideca_symbol_v.peptideca_buried_fragmented_symbol_off_peptideca_symbol sym_pea
;;

let molecule_aminoacid_fragmented_regular_symbol_off_chemicalset_symbol sym_cht = 
  let sym_pea = peptideca_symbol_off_chemicalset_symbol sym_cht in 
    Peptideca_symbol_v.molecule_aminoacid_fragmented_regular_symbol_off_peptideca_symbol sym_pea
;;

let peptideca_nterminal_symbol_off_chemicalset_symbol sym_cht = 
  let sym_pea = peptideca_symbol_off_chemicalset_symbol sym_cht in 
    Peptideca_symbol_v.peptideca_nterminal_symbol_off_peptideca_symbol sym_pea
;;

let peptideca_nterminal_segmented_symbol_off_chemicalset_symbol sym_cht = 
  let sym_pea = peptideca_symbol_off_chemicalset_symbol sym_cht in 
    Peptideca_symbol_v.peptideca_nterminal_segmented_symbol_off_peptideca_symbol sym_pea
;;

let peptideca_nterminal_fragmented_symbol_off_chemicalset_symbol sym_cht = 
  let sym_pea = peptideca_symbol_off_chemicalset_symbol sym_cht in 
    Peptideca_symbol_v.peptideca_nterminal_fragmented_symbol_off_peptideca_symbol sym_pea
;;

let molecule_aminoacid_fragmented_regular_symbol_off_chemicalset_symbol sym_cht = 
  let sym_pea = peptideca_symbol_off_chemicalset_symbol sym_cht in 
    Peptideca_symbol_v.molecule_aminoacid_fragmented_regular_symbol_off_peptideca_symbol sym_pea
;;

let protein_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Protein_symbol sym_prn -> sym_prn
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "protein_symbol_off_chemicalset_symbol"
      "Protein_symbol"
      (name sym_cht) "check"
;;

let polypeptide_sidegroup_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Polypeptide_sidegroup_symbol sym_pos -> sym_pos
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "polypeptide_sidegroup_symbol_off_chemicalset_symbol"
      "Polypeptide_sidegroup_symbol"
      (name sym_cht) "check"
;;

let residue_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Residue_symbol sym_ree -> sym_ree
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "residue_symbol_off_chemicalset_symbol"
      "Residue_symbol"
      (name sym_cht) "check"
;;

let residue_nterminal_symbol_off_chemicalset_symbol sym_cht = 
  let sym_ree = residue_symbol_off_chemicalset_symbol sym_cht in 
    Residue_symbol_v.residue_nterminal_symbol_off_residue_symbol sym_ree
;;

let residue_nterminal_segmented_symbol_off_chemicalset_symbol sym_cht = 
  let sym_ree = residue_symbol_off_chemicalset_symbol sym_cht in 
    Residue_symbol_v.residue_nterminal_segmented_symbol_off_residue_symbol sym_ree
;;

let residue_nterminal_fragmented_symbol_off_chemicalset_symbol sym_cht = 
  let sym_ree = residue_symbol_off_chemicalset_symbol sym_cht in 
    Residue_symbol_v.residue_nterminal_fragmented_symbol_off_residue_symbol sym_ree
;;

let molecule_aminoacid_fragmented_regular_symbol_off_chemicalset_symbol sym_cht = 
  let sym_ree = residue_symbol_off_chemicalset_symbol sym_cht in 
    Residue_symbol_v.molecule_aminoacid_fragmented_regular_symbol_off_residue_symbol sym_ree
;;

let residue_buried_symbol_off_chemicalset_symbol sym_cht = 
  let sym_ree = residue_symbol_off_chemicalset_symbol sym_cht in 
    Residue_symbol_v.residue_buried_symbol_off_residue_symbol sym_ree
;;

let residue_buried_segmented_symbol_off_chemicalset_symbol sym_cht = 
  let sym_ree = residue_symbol_off_chemicalset_symbol sym_cht in 
    Residue_symbol_v.residue_buried_segmented_symbol_off_residue_symbol sym_ree
;;

let residue_buried_fragmented_symbol_off_chemicalset_symbol sym_cht = 
  let sym_ree = residue_symbol_off_chemicalset_symbol sym_cht in 
    Residue_symbol_v.residue_buried_fragmented_symbol_off_residue_symbol sym_ree
;;

let molecule_aminoacid_fragmented_regular_symbol_off_chemicalset_symbol sym_cht = 
  let sym_ree = residue_symbol_off_chemicalset_symbol sym_cht in 
    Residue_symbol_v.molecule_aminoacid_fragmented_regular_symbol_off_residue_symbol sym_ree
;;

let segment_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Segment_symbol sym_set -> sym_set
  | sym_cht -> Error_messages_v.print_fatal_error
      nam_cod "segment_symbol_off_chemicalset_symbol"
      "Segment_symbol"
      (name sym_cht) "check"
;;

let segment_head_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.segment_head_symbol_off_segment_symbol sym_set
;;

let segment_zeroone_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.segment_zeroone_symbol_off_segment_symbol sym_set
;;

let segment_oneone_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.segment_oneone_symbol_off_segment_symbol sym_set
;;

let block_zeroone_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_zeroone_symbol_off_segment_symbol sym_set
;;

let block_zeroonesingle_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_zeroonesingle_symbol_off_segment_symbol sym_set
;;

let block_zeroonedouble_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_zeroonedouble_symbol_off_segment_symbol sym_set
;;

let block_zeroonetriple_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_zeroonetriple_symbol_off_segment_symbol sym_set
;;

let segment_buried_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.segment_buried_symbol_off_segment_symbol sym_set
;;

let block_oneone_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_oneone_symbol_off_segment_symbol sym_set
;;

let block_onesingleonesingle_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_onesingleonesingle_symbol_off_segment_symbol sym_set
;;

let block_onesingleonedouble_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_onesingleonedouble_symbol_off_segment_symbol sym_set
;;

let block_onesingleonetriple_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_onesingleonetriple_symbol_off_segment_symbol sym_set
;;

let block_onedoubleonesingle_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_onedoubleonesingle_symbol_off_segment_symbol sym_set
;;

let block_onedoubleonedouble_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_onedoubleonedouble_symbol_off_segment_symbol sym_set
;;

let block_onetripleonesingle_symbol_off_chemicalset_symbol sym_cht = 
  let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
    Segment_symbol_v.block_onetripleonesingle_symbol_off_segment_symbol sym_set
;;


(** {6 Querying} *)


let is_atom_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Atom_symbol _ -> true
  | _ -> false
;;

let is_atom_core_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_core_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_twotied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_twotied_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_twotied_singlesingle_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_twotied_singlesingle_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_twotied_singleconjugated_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_twotied_singleconjugated_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_twotied_singledouble_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_twotied_singledouble_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_twotied_singletriple_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_twotied_singletriple_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_twotied_conjugatedconjugated_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_twotied_conjugatedconjugated_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_twotied_conjugated_double_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_twotied_conjugated_double_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_twotied_doubledouble_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_twotied_doubledouble_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_threetied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_threetied_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_threetied_singlesingle_single_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_threetied_singlesingle_single_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_threetied_singlesingledouble_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_threetied_singlesingledouble_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_threetied_singleconjugatedconjugated_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_threetied_singleconjugatedconjugated_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_threetied_conjugatedconjugated_conjugated_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_threetied_conjugatedconjugated_conjugated_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_threetied_doubledouble_double_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_threetied_doubledouble_double_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_fourtied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_fourtied_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_fivetied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_fivetied_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_sixtied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_sixtied_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_onetied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_onetied_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_onetied_conjugated_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_onetied_conjugated_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_onetied_double_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_onetied_double_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_onetied_single_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_onetied_single_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_onetied_triple_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_onetied_triple_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_zerotied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_zerotied_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_zerotied_anion_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_zerotied_anion_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_zerotied_cation_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_zerotied_cation_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_atom_symbol sym_atm
    end
;;

let is_atom_zerotied_raregas_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_atom_zerotied_raregas_symbol_off_atom_symbol sym_atm
    end
;;

let is_halfbridge_symbol_off_chemicalset_symbol sym_cht =
  if not (is_atom_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_atm = atom_symbol_off_chemicalset_symbol sym_cht in 
     Atom_symbol_v.is_halfbridge_symbol_off_atom_symbol sym_atm
    end
;;

let is_block_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Block_symbol _ -> true
  | _ -> false
;;

let is_block_zerozero_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_zerozero_symbol_off_block_symbol sym_blk
    end
;;

let is_block_zerozero_monoatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_zerozero_monoatomic_symbol_off_block_symbol sym_blk
    end
;;

let is_atom_zerotied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_atom_zerotied_symbol_off_block_symbol sym_blk
    end
;;

let is_atom_zerotied_anion_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_atom_zerotied_anion_symbol_off_block_symbol sym_blk
    end
;;

let is_atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_block_symbol sym_blk
    end
;;

let is_atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_block_symbol sym_blk
    end
;;

let is_atom_zerotied_cation_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_atom_zerotied_cation_symbol_off_block_symbol sym_blk
    end
;;

let is_atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_block_symbol sym_blk
    end
;;

let is_atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_block_symbol sym_blk
    end
;;

let is_atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_block_symbol sym_blk
    end
;;

let is_atom_zerotied_raregas_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_atom_zerotied_raregas_symbol_off_block_symbol sym_blk
    end
;;

let is_halfbridge_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_halfbridge_symbol_off_block_symbol sym_blk
    end
;;

let is_block_zerozero_diatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_zerozero_diatomic_symbol_off_block_symbol sym_blk
    end
;;

let is_block_zerozero_triatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_zerozero_triatomic_symbol_off_block_symbol sym_blk
    end
;;

let is_block_zerozero_tetratomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_zerozero_tetratomic_symbol_off_block_symbol sym_blk
    end
;;

let is_block_zerozero_pentatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_zerozero_pentatomic_symbol_off_block_symbol sym_blk
    end
;;

let is_block_zeroone_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_zeroone_symbol_off_block_symbol sym_blk
    end
;;

let is_block_zeroonesingle_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_zeroonesingle_symbol_off_block_symbol sym_blk
    end
;;

let is_block_zeroonedouble_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_zeroonedouble_symbol_off_block_symbol sym_blk
    end
;;

let is_block_zeroonetriple_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_zeroonetriple_symbol_off_block_symbol sym_blk
    end
;;

let is_block_zerofork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_zerofork_symbol_off_block_symbol sym_blk
    end
;;

let is_block_zerobifork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_zerobifork_symbol_off_block_symbol sym_blk
    end
;;

let is_block_zerotrifork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_zerotrifork_symbol_off_block_symbol sym_blk
    end
;;

let is_block_zeroquadrifork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_zeroquadrifork_symbol_off_block_symbol sym_blk
    end
;;

let is_block_oneone_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_oneone_symbol_off_block_symbol sym_blk
    end
;;

let is_block_onesingleonesingle_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_onesingleonesingle_symbol_off_block_symbol sym_blk
    end
;;

let is_block_onesingleonedouble_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_onesingleonedouble_symbol_off_block_symbol sym_blk
    end
;;

let is_block_onesingleonetriple_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_onesingleonetriple_symbol_off_block_symbol sym_blk
    end
;;

let is_block_onedoubleonesingle_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_onedoubleonesingle_symbol_off_block_symbol sym_blk
    end
;;

let is_block_onedoubleonedouble_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_onedoubleonedouble_symbol_off_block_symbol sym_blk
    end
;;

let is_block_onetripleonesingle_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_onetripleonesingle_symbol_off_block_symbol sym_blk
    end
;;

let is_block_oneend_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_oneend_symbol_off_block_symbol sym_blk
    end
;;

let is_block_onefork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_onefork_symbol_off_block_symbol sym_blk
    end
;;

let is_block_onebifork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_onebifork_symbol_off_block_symbol sym_blk
    end
;;

let is_block_onesinglebifork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_onesinglebifork_symbol_off_block_symbol sym_blk
    end
;;

let is_block_onesinglebiforksinglesingle_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_onesinglebiforksinglesingle_symbol_off_block_symbol sym_blk
    end
;;

let is_block_onedoublebifork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_onedoublebifork_symbol_off_block_symbol sym_blk
    end
;;

let is_block_onetrifork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_onetrifork_symbol_off_block_symbol sym_blk
    end
;;

let is_block_onesingletriforksinglesinglesingle_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_onesingletriforksinglesinglesingle_symbol_off_block_symbol sym_blk
    end
;;

let is_block_onezero_symbol_off_chemicalset_symbol sym_cht =
  if not (is_block_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_blk = block_symbol_off_chemicalset_symbol sym_cht in 
     Block_symbol_v.is_block_onezero_symbol_off_block_symbol sym_blk
    end
;;

let is_bond_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Bond_symbol _ -> true
  | _ -> false
;;

let is_bridge_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Bridge_symbol _ -> true
  | _ -> false
;;

let is_chain_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Chain_symbol _ -> true
  | _ -> false
;;

let is_cluster_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Cluster_symbol _ -> true
  | _ -> false
;;

let is_coffer_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Coffer_symbol _ -> true
  | _ -> false
;;

let is_cterminal_subunit_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Cterminal_subunit_symbol _ -> true
  | _ -> false
;;

let is_fragment_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Fragment_symbol _ -> true
  | _ -> false
;;

let is_fragment_closed_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_fragment_closed_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_zerozero_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_zerozero_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_zerozero_monoatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_zerozero_monoatomic_symbol_off_fragment_symbol sym_frt
    end
;;

let is_atom_zerotied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_atom_zerotied_symbol_off_fragment_symbol sym_frt
    end
;;

let is_atom_zerotied_anion_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_atom_zerotied_anion_symbol_off_fragment_symbol sym_frt
    end
;;

let is_atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_fragment_symbol sym_frt
    end
;;

let is_atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_fragment_symbol sym_frt
    end
;;

let is_atom_zerotied_cation_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_atom_zerotied_cation_symbol_off_fragment_symbol sym_frt
    end
;;

let is_atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_fragment_symbol sym_frt
    end
;;

let is_atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_fragment_symbol sym_frt
    end
;;

let is_atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_fragment_symbol sym_frt
    end
;;

let is_atom_zerotied_raregas_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_atom_zerotied_raregas_symbol_off_fragment_symbol sym_frt
    end
;;

let is_halfbridge_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_halfbridge_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_zerozero_diatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_zerozero_diatomic_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_zerozero_triatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_zerozero_triatomic_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_zerozero_tetratomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_zerozero_tetratomic_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_zerozero_pentatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_zerozero_pentatomic_symbol_off_fragment_symbol sym_frt
    end
;;

let is_fragment_head_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_fragment_head_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_zerofork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_zerofork_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_zerobifork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_zerobifork_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_zerotrifork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_zerotrifork_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_zeroquadrifork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_zeroquadrifork_symbol_off_fragment_symbol sym_frt
    end
;;

let is_fragment_buried_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_fragment_buried_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_onefork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_onefork_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_onebifork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_onebifork_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_onesinglebifork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_onesinglebifork_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_onesinglebiforksinglesingle_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_onesinglebiforksinglesingle_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_onedoublebifork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_onedoublebifork_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_onetrifork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_onetrifork_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_onesingletriforksinglesinglesingle_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_onesingletriforksinglesinglesingle_symbol_off_fragment_symbol sym_frt
    end
;;

let is_fragment_leaf_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_fragment_leaf_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_zerofork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_zerofork_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_zerobifork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_zerobifork_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_zerotrifork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_zerotrifork_symbol_off_fragment_symbol sym_frt
    end
;;

let is_block_zeroquadrifork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_fragment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_frt = fragment_symbol_off_chemicalset_symbol sym_cht in 
     Fragment_symbol_v.is_block_zeroquadrifork_symbol_off_fragment_symbol sym_frt
    end
;;

let is_grouping_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Grouping_symbol _ -> true
  | _ -> false
;;

let is_fragment_leaf_symbol_off_chemicalset_symbol sym_cht =
  if not (is_grouping_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_grg = grouping_symbol_off_chemicalset_symbol sym_cht in 
     Grouping_symbol_v.is_fragment_leaf_symbol_off_grouping_symbol sym_grg
    end
;;

let is_block_zerofork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_grouping_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_grg = grouping_symbol_off_chemicalset_symbol sym_cht in 
     Grouping_symbol_v.is_block_zerofork_symbol_off_grouping_symbol sym_grg
    end
;;

let is_block_zerobifork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_grouping_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_grg = grouping_symbol_off_chemicalset_symbol sym_cht in 
     Grouping_symbol_v.is_block_zerobifork_symbol_off_grouping_symbol sym_grg
    end
;;

let is_block_zerotrifork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_grouping_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_grg = grouping_symbol_off_chemicalset_symbol sym_cht in 
     Grouping_symbol_v.is_block_zerotrifork_symbol_off_grouping_symbol sym_grg
    end
;;

let is_block_zeroquadrifork_symbol_off_chemicalset_symbol sym_cht =
  if not (is_grouping_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_grg = grouping_symbol_off_chemicalset_symbol sym_cht in 
     Grouping_symbol_v.is_block_zeroquadrifork_symbol_off_grouping_symbol sym_grg
    end
;;

let is_grouping_polyfragment_symbol_off_chemicalset_symbol sym_cht =
  if not (is_grouping_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_grg = grouping_symbol_off_chemicalset_symbol sym_cht in 
     Grouping_symbol_v.is_grouping_polyfragment_symbol_off_grouping_symbol sym_grg
    end
;;

let is_grouping_bridged_symbol_off_chemicalset_symbol sym_cht =
  if not (is_grouping_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_grg = grouping_symbol_off_chemicalset_symbol sym_cht in 
     Grouping_symbol_v.is_grouping_bridged_symbol_off_grouping_symbol sym_grg
    end
;;

let is_mendeleev_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Mendeleev_symbol _ -> true
  | _ -> false
;;

let is_molecule_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Molecule_symbol _ -> true
  | _ -> false
;;

let is_molecule_aminoacid_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_aminoacid_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_aminoacid_segmented_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_aminoacid_segmented_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_aminoacid_fragmented_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_aminoacid_fragmented_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_aminoacid_fragmented_regular_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_aminoacid_fragmented_regular_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_bridged_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_bridged_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_dendrimer_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_dendrimer_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_forked_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_forked_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_forked_oneforked_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_forked_oneforked_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_forked_twoforked_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_forked_twoforked_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_forked_threeforked_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_forked_threeforked_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_forked_moreforked_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_forked_moreforked_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_linear_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_linear_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_linear_monoatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_linear_monoatomic_symbol_off_molecule_symbol sym_moe
    end
;;

let is_atom_zerotied_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_atom_zerotied_symbol_off_molecule_symbol sym_moe
    end
;;

let is_atom_zerotied_anion_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_atom_zerotied_anion_symbol_off_molecule_symbol sym_moe
    end
;;

let is_atom_zerotied_anion_minusone_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_molecule_symbol sym_moe
    end
;;

let is_atom_zerotied_anion_minustwo_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_molecule_symbol sym_moe
    end
;;

let is_atom_zerotied_cation_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_atom_zerotied_cation_symbol_off_molecule_symbol sym_moe
    end
;;

let is_atom_zerotied_cation_plusone_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_molecule_symbol sym_moe
    end
;;

let is_atom_zerotied_cation_plustwo_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_molecule_symbol sym_moe
    end
;;

let is_atom_zerotied_cation_plusthree_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_molecule_symbol sym_moe
    end
;;

let is_atom_zerotied_raregas_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_atom_zerotied_raregas_symbol_off_molecule_symbol sym_moe
    end
;;

let is_halfbridge_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_halfbridge_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_linear_diatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_linear_diatomic_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_linear_triatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_linear_triatomic_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_linear_tetratomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_linear_tetratomic_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_linear_pentatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_linear_pentatomic_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_linear_polyatomic_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_linear_polyatomic_symbol_off_molecule_symbol sym_moe
    end
;;

let is_molecule_polymer_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_molecule_polymer_symbol_off_molecule_symbol sym_moe
    end
;;

let is_polypeptide_symbol_off_chemicalset_symbol sym_cht =
  if not (is_molecule_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_moe = molecule_symbol_off_chemicalset_symbol sym_cht in 
     Molecule_symbol_v.is_polypeptide_symbol_off_molecule_symbol sym_moe
    end
;;

let is_peptideca_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Peptideca_symbol _ -> true
  | _ -> false
;;

let is_polypeptide_subunit_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Polypeptide_subunit_symbol _ -> true
  | _ -> false
;;

let is_peptideca_buried_symbol_off_chemicalset_symbol sym_cht =
  if not (is_peptideca_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_pea = peptideca_symbol_off_chemicalset_symbol sym_cht in 
     Peptideca_symbol_v.is_peptideca_buried_symbol_off_peptideca_symbol sym_pea
    end
;;

let is_peptideca_buried_segmented_symbol_off_chemicalset_symbol sym_cht =
  if not (is_peptideca_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_pea = peptideca_symbol_off_chemicalset_symbol sym_cht in 
     Peptideca_symbol_v.is_peptideca_buried_segmented_symbol_off_peptideca_symbol sym_pea
    end
;;

let is_peptideca_buried_fragmented_symbol_off_chemicalset_symbol sym_cht =
  if not (is_peptideca_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_pea = peptideca_symbol_off_chemicalset_symbol sym_cht in 
     Peptideca_symbol_v.is_peptideca_buried_fragmented_symbol_off_peptideca_symbol sym_pea
    end
;;

let is_molecule_aminoacid_fragmented_regular_symbol_off_chemicalset_symbol sym_cht =
  if not (is_peptideca_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_pea = peptideca_symbol_off_chemicalset_symbol sym_cht in 
     Peptideca_symbol_v.is_molecule_aminoacid_fragmented_regular_symbol_off_peptideca_symbol sym_pea
    end
;;

let is_peptideca_nterminal_symbol_off_chemicalset_symbol sym_cht =
  if not (is_peptideca_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_pea = peptideca_symbol_off_chemicalset_symbol sym_cht in 
     Peptideca_symbol_v.is_peptideca_nterminal_symbol_off_peptideca_symbol sym_pea
    end
;;

let is_peptideca_nterminal_segmented_symbol_off_chemicalset_symbol sym_cht =
  if not (is_peptideca_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_pea = peptideca_symbol_off_chemicalset_symbol sym_cht in 
     Peptideca_symbol_v.is_peptideca_nterminal_segmented_symbol_off_peptideca_symbol sym_pea
    end
;;

let is_peptideca_nterminal_fragmented_symbol_off_chemicalset_symbol sym_cht =
  if not (is_peptideca_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_pea = peptideca_symbol_off_chemicalset_symbol sym_cht in 
     Peptideca_symbol_v.is_peptideca_nterminal_fragmented_symbol_off_peptideca_symbol sym_pea
    end
;;

let is_molecule_aminoacid_fragmented_regular_symbol_off_chemicalset_symbol sym_cht =
  if not (is_peptideca_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_pea = peptideca_symbol_off_chemicalset_symbol sym_cht in 
     Peptideca_symbol_v.is_molecule_aminoacid_fragmented_regular_symbol_off_peptideca_symbol sym_pea
    end
;;

let is_protein_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Protein_symbol _ -> true
  | _ -> false
;;

let is_polypeptide_sidegroup_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Polypeptide_sidegroup_symbol _ -> true
  | _ -> false
;;

let is_residue_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Residue_symbol _ -> true
  | _ -> false
;;

let is_residue_nterminal_symbol_off_chemicalset_symbol sym_cht =
  if not (is_residue_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_ree = residue_symbol_off_chemicalset_symbol sym_cht in 
     Residue_symbol_v.is_residue_nterminal_symbol_off_residue_symbol sym_ree
    end
;;

let is_residue_nterminal_segmented_symbol_off_chemicalset_symbol sym_cht =
  if not (is_residue_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_ree = residue_symbol_off_chemicalset_symbol sym_cht in 
     Residue_symbol_v.is_residue_nterminal_segmented_symbol_off_residue_symbol sym_ree
    end
;;

let is_residue_nterminal_fragmented_symbol_off_chemicalset_symbol sym_cht =
  if not (is_residue_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_ree = residue_symbol_off_chemicalset_symbol sym_cht in 
     Residue_symbol_v.is_residue_nterminal_fragmented_symbol_off_residue_symbol sym_ree
    end
;;

let is_molecule_aminoacid_fragmented_regular_symbol_off_chemicalset_symbol sym_cht =
  if not (is_residue_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_ree = residue_symbol_off_chemicalset_symbol sym_cht in 
     Residue_symbol_v.is_molecule_aminoacid_fragmented_regular_symbol_off_residue_symbol sym_ree
    end
;;

let is_residue_buried_symbol_off_chemicalset_symbol sym_cht =
  if not (is_residue_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_ree = residue_symbol_off_chemicalset_symbol sym_cht in 
     Residue_symbol_v.is_residue_buried_symbol_off_residue_symbol sym_ree
    end
;;

let is_residue_buried_segmented_symbol_off_chemicalset_symbol sym_cht =
  if not (is_residue_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_ree = residue_symbol_off_chemicalset_symbol sym_cht in 
     Residue_symbol_v.is_residue_buried_segmented_symbol_off_residue_symbol sym_ree
    end
;;

let is_residue_buried_fragmented_symbol_off_chemicalset_symbol sym_cht =
  if not (is_residue_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_ree = residue_symbol_off_chemicalset_symbol sym_cht in 
     Residue_symbol_v.is_residue_buried_fragmented_symbol_off_residue_symbol sym_ree
    end
;;

let is_molecule_aminoacid_fragmented_regular_symbol_off_chemicalset_symbol sym_cht =
  if not (is_residue_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_ree = residue_symbol_off_chemicalset_symbol sym_cht in 
     Residue_symbol_v.is_molecule_aminoacid_fragmented_regular_symbol_off_residue_symbol sym_ree
    end
;;

let is_segment_symbol_off_chemicalset_symbol = function
  | Chemicalset_symbol_t.Segment_symbol _ -> true
  | _ -> false
;;

let is_segment_head_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_segment_head_symbol_off_segment_symbol sym_set
    end
;;

let is_segment_zeroone_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_segment_zeroone_symbol_off_segment_symbol sym_set
    end
;;

let is_segment_oneone_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_segment_oneone_symbol_off_segment_symbol sym_set
    end
;;

let is_block_zeroone_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_zeroone_symbol_off_segment_symbol sym_set
    end
;;

let is_block_zeroonesingle_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_zeroonesingle_symbol_off_segment_symbol sym_set
    end
;;

let is_block_zeroonedouble_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_zeroonedouble_symbol_off_segment_symbol sym_set
    end
;;

let is_block_zeroonetriple_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_zeroonetriple_symbol_off_segment_symbol sym_set
    end
;;

let is_segment_buried_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_segment_buried_symbol_off_segment_symbol sym_set
    end
;;

let is_block_oneone_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_oneone_symbol_off_segment_symbol sym_set
    end
;;

let is_block_onesingleonesingle_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_onesingleonesingle_symbol_off_segment_symbol sym_set
    end
;;

let is_block_onesingleonedouble_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_onesingleonedouble_symbol_off_segment_symbol sym_set
    end
;;

let is_block_onesingleonetriple_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_onesingleonetriple_symbol_off_segment_symbol sym_set
    end
;;

let is_block_onedoubleonesingle_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_onedoubleonesingle_symbol_off_segment_symbol sym_set
    end
;;

let is_block_onedoubleonedouble_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_onedoubleonedouble_symbol_off_segment_symbol sym_set
    end
;;

let is_block_onetripleonesingle_symbol_off_chemicalset_symbol sym_cht =
  if not (is_segment_symbol_off_chemicalset_symbol sym_cht)
  then false
  else
    begin
     let sym_set = segment_symbol_off_chemicalset_symbol sym_cht in 
     Segment_symbol_v.is_block_onetripleonesingle_symbol_off_segment_symbol sym_set
    end
;;


(** {6 Upgrading} *)


let chemicalset_symbol_of_atom_symbol sym_atm = 
  Chemicalset_symbol_t.Atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_core_symbol sym_atc = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_core_symbol sym_atc in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_twotied_symbol sym_at2 = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_twotied_symbol sym_at2 in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_twotied_singlesingle_symbol sym_a2s = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_twotied_singlesingle_symbol sym_a2s in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_twotied_singleconjugated_symbol sym_a2s = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_twotied_singleconjugated_symbol sym_a2s in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_twotied_singledouble_symbol sym_a2s = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_twotied_singledouble_symbol sym_a2s in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_twotied_singletriple_symbol sym_a2s = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_twotied_singletriple_symbol sym_a2s in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_twotied_conjugatedconjugated_symbol sym_a2c = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_twotied_conjugatedconjugated_symbol sym_a2c in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_twotied_conjugated_double_symbol sym_2cd = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_twotied_conjugated_double_symbol sym_2cd in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_twotied_doubledouble_symbol sym_a2d = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_twotied_doubledouble_symbol sym_a2d in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_threetied_symbol sym_at3 = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_threetied_symbol sym_at3 in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_threetied_singlesingle_single_symbol sym_3ss = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_threetied_singlesingle_single_symbol sym_3ss in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_threetied_singlesingledouble_symbol sym_a3s = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_threetied_singlesingledouble_symbol sym_a3s in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_threetied_singleconjugatedconjugated_symbol sym_a3s = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_threetied_singleconjugatedconjugated_symbol sym_a3s in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_threetied_conjugatedconjugated_conjugated_symbol sym_3cc = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_threetied_conjugatedconjugated_conjugated_symbol sym_3cc in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_threetied_doubledouble_double_symbol sym_3dd = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_threetied_doubledouble_double_symbol sym_3dd in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_fourtied_symbol sym_at4 = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_fourtied_symbol sym_at4 in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_fivetied_symbol sym_at5 = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_fivetied_symbol sym_at5 in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_sixtied_symbol sym_at6 = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_sixtied_symbol sym_at6 in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_onetied_symbol sym_at1 = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_onetied_symbol sym_at1 in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_onetied_conjugated_symbol sym_a1c = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_onetied_conjugated_symbol sym_a1c in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_onetied_double_symbol sym_a1d = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_onetied_double_symbol sym_a1d in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_onetied_single_symbol sym_a1s = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_onetied_single_symbol sym_a1s in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_onetied_triple_symbol sym_a1t = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_onetied_triple_symbol sym_a1t in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_zerotied_symbol sym_at0 = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_zerotied_symbol sym_at0 in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_zerotied_anion_symbol sym_a0a = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_zerotied_anion_symbol sym_a0a in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_zerotied_cation_symbol sym_a0c = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_zerotied_cation_symbol sym_a0c in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_atom_zerotied_raregas_symbol sym_a0r = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_atom_zerotied_raregas_symbol sym_a0r in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_halfbridge_symbol sym_hae = 
  let sym_atm = Atom_symbol_v.atom_symbol_of_halfbridge_symbol sym_hae in
    chemicalset_symbol_of_atom_symbol sym_atm
;;

let chemicalset_symbol_of_block_symbol sym_blk = 
  Chemicalset_symbol_t.Block_symbol sym_blk
;;

let chemicalset_symbol_of_block_zerozero_symbol sym_bl0 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_zerozero_symbol sym_bl0 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_zerozero_monoatomic_symbol sym_b0m = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_zerozero_monoatomic_symbol sym_b0m in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_atom_zerotied_symbol sym_at0 = 
  let sym_blk = Block_symbol_v.block_symbol_of_atom_zerotied_symbol sym_at0 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_atom_zerotied_anion_symbol sym_a0a = 
  let sym_blk = Block_symbol_v.block_symbol_of_atom_zerotied_anion_symbol sym_a0a in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 = 
  let sym_blk = Block_symbol_v.block_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 = 
  let sym_blk = Block_symbol_v.block_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_atom_zerotied_cation_symbol sym_a0c = 
  let sym_blk = Block_symbol_v.block_symbol_of_atom_zerotied_cation_symbol sym_a0c in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 = 
  let sym_blk = Block_symbol_v.block_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 = 
  let sym_blk = Block_symbol_v.block_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 = 
  let sym_blk = Block_symbol_v.block_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_atom_zerotied_raregas_symbol sym_a0r = 
  let sym_blk = Block_symbol_v.block_symbol_of_atom_zerotied_raregas_symbol sym_a0r in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_halfbridge_symbol sym_hae = 
  let sym_blk = Block_symbol_v.block_symbol_of_halfbridge_symbol sym_hae in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_zerozero_diatomic_symbol sym_b0d = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_zerozero_diatomic_symbol sym_b0d in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_zerozero_triatomic_symbol sym_b0t = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_zerozero_triatomic_symbol sym_b0t in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_zerozero_tetratomic_symbol sym_b0t = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_zerozero_tetratomic_symbol sym_b0t in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_zerozero_pentatomic_symbol sym_b0p = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_zerozero_pentatomic_symbol sym_b0p in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_zeroone_symbol sym_bl0 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_zeroone_symbol sym_bl0 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_zeroonesingle_symbol sym_bl0 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_zeroonesingle_symbol sym_bl0 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_zeroonedouble_symbol sym_bl0 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_zeroonedouble_symbol sym_bl0 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_zeroonetriple_symbol sym_bl0 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_zeroonetriple_symbol sym_bl0 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_zerofork_symbol sym_bl0 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_zerofork_symbol sym_bl0 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_zerobifork_symbol sym_bl0 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_zerobifork_symbol sym_bl0 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_zerotrifork_symbol sym_bl0 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_zerotrifork_symbol sym_bl0 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_zeroquadrifork_symbol sym_bl0 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_zeroquadrifork_symbol sym_bl0 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_oneone_symbol sym_bl1 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_oneone_symbol sym_bl1 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_onesingleonesingle_symbol sym_bl1 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_onesingleonesingle_symbol sym_bl1 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_onesingleonedouble_symbol sym_bl1 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_onesingleonedouble_symbol sym_bl1 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_onesingleonetriple_symbol sym_bl1 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_onesingleonetriple_symbol sym_bl1 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_onedoubleonesingle_symbol sym_bl1 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_onedoubleonesingle_symbol sym_bl1 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_onedoubleonedouble_symbol sym_bl1 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_onedoubleonedouble_symbol sym_bl1 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_onetripleonesingle_symbol sym_bl1 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_onetripleonesingle_symbol sym_bl1 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_oneend_symbol sym_bl1 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_oneend_symbol sym_bl1 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_onefork_symbol sym_bl1 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_onefork_symbol sym_bl1 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_onebifork_symbol sym_bl1 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_onebifork_symbol sym_bl1 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_onesinglebifork_symbol sym_bl1 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_onesinglebifork_symbol sym_bl1 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_onesinglebiforksinglesingle_symbol sym_bl1 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_onesinglebiforksinglesingle_symbol sym_bl1 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_onedoublebifork_symbol sym_bl1 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_onedoublebifork_symbol sym_bl1 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_onetrifork_symbol sym_bl1 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_onetrifork_symbol sym_bl1 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_onesingletriforksinglesinglesingle_symbol sym_bl1 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_onesingletriforksinglesinglesingle_symbol sym_bl1 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_block_onezero_symbol sym_bl1 = 
  let sym_blk = Block_symbol_v.block_symbol_of_block_onezero_symbol sym_bl1 in
    chemicalset_symbol_of_block_symbol sym_blk
;;

let chemicalset_symbol_of_bond_symbol sym_bod = 
  Chemicalset_symbol_t.Bond_symbol sym_bod
;;

let chemicalset_symbol_of_bridge_symbol sym_bre = 
  Chemicalset_symbol_t.Bridge_symbol sym_bre
;;

let chemicalset_symbol_of_chain_symbol sym_chn = 
  Chemicalset_symbol_t.Chain_symbol sym_chn
;;

let chemicalset_symbol_of_cluster_symbol sym_clr = 
  Chemicalset_symbol_t.Cluster_symbol sym_clr
;;

let chemicalset_symbol_of_coffer_symbol sym_cor = 
  Chemicalset_symbol_t.Coffer_symbol sym_cor
;;

let chemicalset_symbol_of_cterminal_subunit_symbol sym_cts = 
  Chemicalset_symbol_t.Cterminal_subunit_symbol sym_cts
;;

let chemicalset_symbol_of_fragment_symbol sym_frt = 
  Chemicalset_symbol_t.Fragment_symbol sym_frt
;;

let chemicalset_symbol_of_fragment_closed_symbol sym_frc = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_fragment_closed_symbol sym_frc in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_zerozero_symbol sym_bl0 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_zerozero_symbol sym_bl0 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_zerozero_monoatomic_symbol sym_b0m = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_zerozero_monoatomic_symbol sym_b0m in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_atom_zerotied_symbol sym_at0 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_atom_zerotied_symbol sym_at0 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_atom_zerotied_anion_symbol sym_a0a = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_atom_zerotied_anion_symbol sym_a0a in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_atom_zerotied_cation_symbol sym_a0c = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_atom_zerotied_cation_symbol sym_a0c in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_atom_zerotied_raregas_symbol sym_a0r = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_atom_zerotied_raregas_symbol sym_a0r in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_halfbridge_symbol sym_hae = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_halfbridge_symbol sym_hae in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_zerozero_diatomic_symbol sym_b0d = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_zerozero_diatomic_symbol sym_b0d in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_zerozero_triatomic_symbol sym_b0t = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_zerozero_triatomic_symbol sym_b0t in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_zerozero_tetratomic_symbol sym_b0t = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_zerozero_tetratomic_symbol sym_b0t in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_zerozero_pentatomic_symbol sym_b0p = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_zerozero_pentatomic_symbol sym_b0p in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_fragment_head_symbol sym_frh = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_fragment_head_symbol sym_frh in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_zerofork_symbol sym_bl0 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_zerofork_symbol sym_bl0 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_zerobifork_symbol sym_bl0 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_zerobifork_symbol sym_bl0 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_zerotrifork_symbol sym_bl0 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_zerotrifork_symbol sym_bl0 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_zeroquadrifork_symbol sym_bl0 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_zeroquadrifork_symbol sym_bl0 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_fragment_buried_symbol sym_frb = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_fragment_buried_symbol sym_frb in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_onefork_symbol sym_bl1 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_onefork_symbol sym_bl1 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_onebifork_symbol sym_bl1 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_onebifork_symbol sym_bl1 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_onesinglebifork_symbol sym_bl1 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_onesinglebifork_symbol sym_bl1 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_onesinglebiforksinglesingle_symbol sym_bl1 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_onesinglebiforksinglesingle_symbol sym_bl1 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_onedoublebifork_symbol sym_bl1 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_onedoublebifork_symbol sym_bl1 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_onetrifork_symbol sym_bl1 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_onetrifork_symbol sym_bl1 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_onesingletriforksinglesinglesingle_symbol sym_bl1 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_onesingletriforksinglesinglesingle_symbol sym_bl1 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_fragment_leaf_symbol sym_frl = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_fragment_leaf_symbol sym_frl in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_zerofork_symbol sym_bl0 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_zerofork_symbol sym_bl0 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_zerobifork_symbol sym_bl0 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_zerobifork_symbol sym_bl0 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_zerotrifork_symbol sym_bl0 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_zerotrifork_symbol sym_bl0 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_block_zeroquadrifork_symbol sym_bl0 = 
  let sym_frt = Fragment_symbol_v.fragment_symbol_of_block_zeroquadrifork_symbol sym_bl0 in
    chemicalset_symbol_of_fragment_symbol sym_frt
;;

let chemicalset_symbol_of_grouping_symbol sym_grg = 
  Chemicalset_symbol_t.Grouping_symbol sym_grg
;;

let chemicalset_symbol_of_fragment_leaf_symbol sym_frl = 
  let sym_grg = Grouping_symbol_v.grouping_symbol_of_fragment_leaf_symbol sym_frl in
    chemicalset_symbol_of_grouping_symbol sym_grg
;;

let chemicalset_symbol_of_block_zerofork_symbol sym_bl0 = 
  let sym_grg = Grouping_symbol_v.grouping_symbol_of_block_zerofork_symbol sym_bl0 in
    chemicalset_symbol_of_grouping_symbol sym_grg
;;

let chemicalset_symbol_of_block_zerobifork_symbol sym_bl0 = 
  let sym_grg = Grouping_symbol_v.grouping_symbol_of_block_zerobifork_symbol sym_bl0 in
    chemicalset_symbol_of_grouping_symbol sym_grg
;;

let chemicalset_symbol_of_block_zerotrifork_symbol sym_bl0 = 
  let sym_grg = Grouping_symbol_v.grouping_symbol_of_block_zerotrifork_symbol sym_bl0 in
    chemicalset_symbol_of_grouping_symbol sym_grg
;;

let chemicalset_symbol_of_block_zeroquadrifork_symbol sym_bl0 = 
  let sym_grg = Grouping_symbol_v.grouping_symbol_of_block_zeroquadrifork_symbol sym_bl0 in
    chemicalset_symbol_of_grouping_symbol sym_grg
;;

let chemicalset_symbol_of_grouping_polyfragment_symbol sym_grp = 
  let sym_grg = Grouping_symbol_v.grouping_symbol_of_grouping_polyfragment_symbol sym_grp in
    chemicalset_symbol_of_grouping_symbol sym_grg
;;

let chemicalset_symbol_of_grouping_bridged_symbol sym_grb = 
  let sym_grg = Grouping_symbol_v.grouping_symbol_of_grouping_bridged_symbol sym_grb in
    chemicalset_symbol_of_grouping_symbol sym_grg
;;

let chemicalset_symbol_of_mendeleev_symbol sym_mev = 
  Chemicalset_symbol_t.Mendeleev_symbol sym_mev
;;

let chemicalset_symbol_of_molecule_symbol sym_moe = 
  Chemicalset_symbol_t.Molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_aminoacid_symbol sym_moa = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_aminoacid_symbol sym_moa in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_aminoacid_segmented_symbol sym_mas = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_aminoacid_segmented_symbol sym_mas in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_aminoacid_fragmented_symbol sym_maf = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_aminoacid_fragmented_symbol sym_maf in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_mar = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_mar in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_bridged_symbol sym_mob = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_bridged_symbol sym_mob in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_dendrimer_symbol sym_mod = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_dendrimer_symbol sym_mod in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_forked_symbol sym_mof = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_forked_symbol sym_mof in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_forked_oneforked_symbol sym_mf1 = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_forked_oneforked_symbol sym_mf1 in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_forked_twoforked_symbol sym_mf2 = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_forked_twoforked_symbol sym_mf2 in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_forked_threeforked_symbol sym_mf3 = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_forked_threeforked_symbol sym_mf3 in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_forked_moreforked_symbol sym_mfm = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_forked_moreforked_symbol sym_mfm in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_linear_symbol sym_mol = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_linear_symbol sym_mol in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_linear_monoatomic_symbol sym_mlm = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_linear_monoatomic_symbol sym_mlm in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_atom_zerotied_symbol sym_at0 = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_atom_zerotied_symbol sym_at0 in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_atom_zerotied_anion_symbol sym_a0a = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_atom_zerotied_anion_symbol sym_a0a in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_atom_zerotied_cation_symbol sym_a0c = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_atom_zerotied_cation_symbol sym_a0c in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_atom_zerotied_raregas_symbol sym_a0r = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_atom_zerotied_raregas_symbol sym_a0r in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_halfbridge_symbol sym_hae = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_halfbridge_symbol sym_hae in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_linear_diatomic_symbol sym_mld = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_linear_diatomic_symbol sym_mld in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_linear_triatomic_symbol sym_mlt = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_linear_triatomic_symbol sym_mlt in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_linear_tetratomic_symbol sym_mlq = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_linear_tetratomic_symbol sym_mlq in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_linear_pentatomic_symbol sym_mlc = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_linear_pentatomic_symbol sym_mlc in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_linear_polyatomic_symbol sym_mlp = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_linear_polyatomic_symbol sym_mlp in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_molecule_polymer_symbol sym_mop = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_molecule_polymer_symbol sym_mop in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_polypeptide_symbol sym_pde = 
  let sym_moe = Molecule_symbol_v.molecule_symbol_of_polypeptide_symbol sym_pde in
    chemicalset_symbol_of_molecule_symbol sym_moe
;;

let chemicalset_symbol_of_polypeptide_subunit_symbol sym_pos = 
  Chemicalset_symbol_t.Polypeptide_subunit_symbol sym_pos
;;

let chemicalset_symbol_of_peptideca_symbol sym_pea = 
  Chemicalset_symbol_t.Peptideca_symbol sym_pea
;;

let chemicalset_symbol_of_peptideca_buried_symbol sym_peb = 
  let sym_pea = Peptideca_symbol_v.peptideca_symbol_of_peptideca_buried_symbol sym_peb in
    chemicalset_symbol_of_peptideca_symbol sym_pea
;;

let chemicalset_symbol_of_peptideca_buried_segmented_symbol sym_pbs = 
  let sym_pea = Peptideca_symbol_v.peptideca_symbol_of_peptideca_buried_segmented_symbol sym_pbs in
    chemicalset_symbol_of_peptideca_symbol sym_pea
;;

let chemicalset_symbol_of_peptideca_buried_fragmented_symbol sym_pbf = 
  let sym_pea = Peptideca_symbol_v.peptideca_symbol_of_peptideca_buried_fragmented_symbol sym_pbf in
    chemicalset_symbol_of_peptideca_symbol sym_pea
;;

let chemicalset_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_mar = 
  let sym_pea = Peptideca_symbol_v.peptideca_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_mar in
    chemicalset_symbol_of_peptideca_symbol sym_pea
;;

let chemicalset_symbol_of_peptideca_nterminal_symbol sym_pen = 
  let sym_pea = Peptideca_symbol_v.peptideca_symbol_of_peptideca_nterminal_symbol sym_pen in
    chemicalset_symbol_of_peptideca_symbol sym_pea
;;

let chemicalset_symbol_of_peptideca_nterminal_segmented_symbol sym_pns = 
  let sym_pea = Peptideca_symbol_v.peptideca_symbol_of_peptideca_nterminal_segmented_symbol sym_pns in
    chemicalset_symbol_of_peptideca_symbol sym_pea
;;

let chemicalset_symbol_of_peptideca_nterminal_fragmented_symbol sym_pnf = 
  let sym_pea = Peptideca_symbol_v.peptideca_symbol_of_peptideca_nterminal_fragmented_symbol sym_pnf in
    chemicalset_symbol_of_peptideca_symbol sym_pea
;;

let chemicalset_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_mar = 
  let sym_pea = Peptideca_symbol_v.peptideca_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_mar in
    chemicalset_symbol_of_peptideca_symbol sym_pea
;;

let chemicalset_symbol_of_protein_symbol sym_prn = 
  Chemicalset_symbol_t.Protein_symbol sym_prn
;;

let chemicalset_symbol_of_polypeptide_sidegroup_symbol sym_pos = 
  Chemicalset_symbol_t.Polypeptide_sidegroup_symbol sym_pos
;;

let chemicalset_symbol_of_residue_symbol sym_ree = 
  Chemicalset_symbol_t.Residue_symbol sym_ree
;;

let chemicalset_symbol_of_residue_nterminal_symbol sym_ren = 
  let sym_ree = Residue_symbol_v.residue_symbol_of_residue_nterminal_symbol sym_ren in
    chemicalset_symbol_of_residue_symbol sym_ree
;;

let chemicalset_symbol_of_residue_nterminal_segmented_symbol sym_rns = 
  let sym_ree = Residue_symbol_v.residue_symbol_of_residue_nterminal_segmented_symbol sym_rns in
    chemicalset_symbol_of_residue_symbol sym_ree
;;

let chemicalset_symbol_of_residue_nterminal_fragmented_symbol sym_rnf = 
  let sym_ree = Residue_symbol_v.residue_symbol_of_residue_nterminal_fragmented_symbol sym_rnf in
    chemicalset_symbol_of_residue_symbol sym_ree
;;

let chemicalset_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_mar = 
  let sym_ree = Residue_symbol_v.residue_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_mar in
    chemicalset_symbol_of_residue_symbol sym_ree
;;

let chemicalset_symbol_of_residue_buried_symbol sym_reb = 
  let sym_ree = Residue_symbol_v.residue_symbol_of_residue_buried_symbol sym_reb in
    chemicalset_symbol_of_residue_symbol sym_ree
;;

let chemicalset_symbol_of_residue_buried_segmented_symbol sym_rbs = 
  let sym_ree = Residue_symbol_v.residue_symbol_of_residue_buried_segmented_symbol sym_rbs in
    chemicalset_symbol_of_residue_symbol sym_ree
;;

let chemicalset_symbol_of_residue_buried_fragmented_symbol sym_rbf = 
  let sym_ree = Residue_symbol_v.residue_symbol_of_residue_buried_fragmented_symbol sym_rbf in
    chemicalset_symbol_of_residue_symbol sym_ree
;;

let chemicalset_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_mar = 
  let sym_ree = Residue_symbol_v.residue_symbol_of_molecule_aminoacid_fragmented_regular_symbol sym_mar in
    chemicalset_symbol_of_residue_symbol sym_ree
;;

let chemicalset_symbol_of_segment_symbol sym_set = 
  Chemicalset_symbol_t.Segment_symbol sym_set
;;

let chemicalset_symbol_of_segment_head_symbol sym_seh = 
  let sym_set = Segment_symbol_v.segment_symbol_of_segment_head_symbol sym_seh in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_segment_zeroone_symbol sym_seh = 
  let sym_set = Segment_symbol_v.segment_symbol_of_segment_zeroone_symbol sym_seh in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_segment_oneone_symbol sym_seh = 
  let sym_set = Segment_symbol_v.segment_symbol_of_segment_oneone_symbol sym_seh in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_zeroone_symbol sym_bl0 = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_zeroone_symbol sym_bl0 in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_zeroonesingle_symbol sym_bl0 = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_zeroonesingle_symbol sym_bl0 in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_zeroonedouble_symbol sym_bl0 = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_zeroonedouble_symbol sym_bl0 in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_zeroonetriple_symbol sym_bl0 = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_zeroonetriple_symbol sym_bl0 in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_segment_buried_symbol sym_seb = 
  let sym_set = Segment_symbol_v.segment_symbol_of_segment_buried_symbol sym_seb in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_oneone_symbol sym_bl1 = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_oneone_symbol sym_bl1 in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_onesingleonesingle_symbol sym_bl1 = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_onesingleonesingle_symbol sym_bl1 in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_onesingleonedouble_symbol sym_bl1 = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_onesingleonedouble_symbol sym_bl1 in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_onesingleonetriple_symbol sym_bl1 = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_onesingleonetriple_symbol sym_bl1 in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_onedoubleonesingle_symbol sym_bl1 = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_onedoubleonesingle_symbol sym_bl1 in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_onedoubleonedouble_symbol sym_bl1 = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_onedoubleonedouble_symbol sym_bl1 in
    chemicalset_symbol_of_segment_symbol sym_set
;;

let chemicalset_symbol_of_block_onetripleonesingle_symbol sym_bl1 = 
  let sym_set = Segment_symbol_v.segment_symbol_of_block_onetripleonesingle_symbol sym_bl1 in
    chemicalset_symbol_of_segment_symbol sym_set
;;


(** {6 Abbreviating} *)


let cl_ss = chemicalset_symbol_of_atom_symbol Atom_symbol_v.cl_ss;;

let f_ss = chemicalset_symbol_of_atom_symbol Atom_symbol_v.f_ss;;

let h_ss = chemicalset_symbol_of_atom_symbol Atom_symbol_v.h_ss;;

let n_sc = chemicalset_symbol_of_atom_symbol Atom_symbol_v.n_sc;;

let o_sc = chemicalset_symbol_of_atom_symbol Atom_symbol_v.o_sc;;

let n_sd = chemicalset_symbol_of_atom_symbol Atom_symbol_v.n_sd;;

let c_st = chemicalset_symbol_of_atom_symbol Atom_symbol_v.c_st;;

let n_st = chemicalset_symbol_of_atom_symbol Atom_symbol_v.n_st;;

let n_cc = chemicalset_symbol_of_atom_symbol Atom_symbol_v.n_cc;;

let o_cc = chemicalset_symbol_of_atom_symbol Atom_symbol_v.o_cc;;

let c_cd = chemicalset_symbol_of_atom_symbol Atom_symbol_v.c_cd;;

let c_dd = chemicalset_symbol_of_atom_symbol Atom_symbol_v.c_dd;;

let s_dd = chemicalset_symbol_of_atom_symbol Atom_symbol_v.s_dd;;

let n_sss = chemicalset_symbol_of_atom_symbol Atom_symbol_v.n_sss;;

let cl_sss = chemicalset_symbol_of_atom_symbol Atom_symbol_v.cl_sss;;

let c_ssd = chemicalset_symbol_of_atom_symbol Atom_symbol_v.c_ssd;;

let n_sdd = chemicalset_symbol_of_atom_symbol Atom_symbol_v.n_sdd;;

let s_sdd = chemicalset_symbol_of_atom_symbol Atom_symbol_v.s_sdd;;

let c_scc = chemicalset_symbol_of_atom_symbol Atom_symbol_v.c_scc;;

let n_scc = chemicalset_symbol_of_atom_symbol Atom_symbol_v.n_scc;;

let c_ccc = chemicalset_symbol_of_atom_symbol Atom_symbol_v.c_ccc;;

let n_ccc = chemicalset_symbol_of_atom_symbol Atom_symbol_v.n_ccc;;

let s_ddd = chemicalset_symbol_of_atom_symbol Atom_symbol_v.s_ddd;;

let c_4s = chemicalset_symbol_of_atom_symbol Atom_symbol_v.c_4s;;

let n_4s = chemicalset_symbol_of_atom_symbol Atom_symbol_v.n_4s;;

let s_4s = chemicalset_symbol_of_atom_symbol Atom_symbol_v.s_4s;;

let xe_4s = chemicalset_symbol_of_atom_symbol Atom_symbol_v.xe_4s;;

let cl_5s = chemicalset_symbol_of_atom_symbol Atom_symbol_v.cl_5s;;

let s_6s = chemicalset_symbol_of_atom_symbol Atom_symbol_v.s_6s;;

let o_c = chemicalset_symbol_of_atom_symbol Atom_symbol_v.o_c;;

let o_d = chemicalset_symbol_of_atom_symbol Atom_symbol_v.o_d;;

let h_s = chemicalset_symbol_of_atom_symbol Atom_symbol_v.h_s;;

let f_s = chemicalset_symbol_of_atom_symbol Atom_symbol_v.f_s;;

let n_t = chemicalset_symbol_of_atom_symbol Atom_symbol_v.n_t;;

let o_t = chemicalset_symbol_of_atom_symbol Atom_symbol_v.o_t;;

let f_1m = chemicalset_symbol_of_atom_symbol Atom_symbol_v.f_1m;;

let h_1m = chemicalset_symbol_of_atom_symbol Atom_symbol_v.h_1m;;

let cl_1m = chemicalset_symbol_of_atom_symbol Atom_symbol_v.cl_1m;;

let br_1m = chemicalset_symbol_of_atom_symbol Atom_symbol_v.br_1m;;

let i_1m = chemicalset_symbol_of_atom_symbol Atom_symbol_v.i_1m;;

let o_2m = chemicalset_symbol_of_atom_symbol Atom_symbol_v.o_2m;;

let s_2m = chemicalset_symbol_of_atom_symbol Atom_symbol_v.s_2m;;

let h_1p = chemicalset_symbol_of_atom_symbol Atom_symbol_v.h_1p;;

let k_1p = chemicalset_symbol_of_atom_symbol Atom_symbol_v.k_1p;;

let li_1p = chemicalset_symbol_of_atom_symbol Atom_symbol_v.li_1p;;

let na_1p = chemicalset_symbol_of_atom_symbol Atom_symbol_v.na_1p;;

let ni_1p = chemicalset_symbol_of_atom_symbol Atom_symbol_v.ni_1p;;

let cu_1p = chemicalset_symbol_of_atom_symbol Atom_symbol_v.cu_1p;;

let mg_2p = chemicalset_symbol_of_atom_symbol Atom_symbol_v.mg_2p;;

let ca_2p = chemicalset_symbol_of_atom_symbol Atom_symbol_v.ca_2p;;

let fe_2p = chemicalset_symbol_of_atom_symbol Atom_symbol_v.fe_2p;;

let zn_2p = chemicalset_symbol_of_atom_symbol Atom_symbol_v.zn_2p;;

let cu_2p = chemicalset_symbol_of_atom_symbol Atom_symbol_v.cu_2p;;

let fe_3p = chemicalset_symbol_of_atom_symbol Atom_symbol_v.fe_3p;;

let ni_3p = chemicalset_symbol_of_atom_symbol Atom_symbol_v.ni_3p;;

let ar = chemicalset_symbol_of_atom_symbol Atom_symbol_v.ar;;

let he = chemicalset_symbol_of_atom_symbol Atom_symbol_v.he;;

let kr = chemicalset_symbol_of_atom_symbol Atom_symbol_v.kr;;

let ne = chemicalset_symbol_of_atom_symbol Atom_symbol_v.ne;;

let xe = chemicalset_symbol_of_atom_symbol Atom_symbol_v.xe;;

let hbc = chemicalset_symbol_of_atom_symbol Atom_symbol_v.hbc;;

let hbd = chemicalset_symbol_of_atom_symbol Atom_symbol_v.hbd;;

let hbs = chemicalset_symbol_of_atom_symbol Atom_symbol_v.hbs;;

let hbt = chemicalset_symbol_of_atom_symbol Atom_symbol_v.hbt;;

let f_1m = chemicalset_symbol_of_block_symbol Block_symbol_v.f_1m;;

let h_1m = chemicalset_symbol_of_block_symbol Block_symbol_v.h_1m;;

let cl_1m = chemicalset_symbol_of_block_symbol Block_symbol_v.cl_1m;;

let br_1m = chemicalset_symbol_of_block_symbol Block_symbol_v.br_1m;;

let i_1m = chemicalset_symbol_of_block_symbol Block_symbol_v.i_1m;;

let o_2m = chemicalset_symbol_of_block_symbol Block_symbol_v.o_2m;;

let s_2m = chemicalset_symbol_of_block_symbol Block_symbol_v.s_2m;;

let h_1p = chemicalset_symbol_of_block_symbol Block_symbol_v.h_1p;;

let k_1p = chemicalset_symbol_of_block_symbol Block_symbol_v.k_1p;;

let li_1p = chemicalset_symbol_of_block_symbol Block_symbol_v.li_1p;;

let na_1p = chemicalset_symbol_of_block_symbol Block_symbol_v.na_1p;;

let ni_1p = chemicalset_symbol_of_block_symbol Block_symbol_v.ni_1p;;

let cu_1p = chemicalset_symbol_of_block_symbol Block_symbol_v.cu_1p;;

let mg_2p = chemicalset_symbol_of_block_symbol Block_symbol_v.mg_2p;;

let ca_2p = chemicalset_symbol_of_block_symbol Block_symbol_v.ca_2p;;

let fe_2p = chemicalset_symbol_of_block_symbol Block_symbol_v.fe_2p;;

let zn_2p = chemicalset_symbol_of_block_symbol Block_symbol_v.zn_2p;;

let cu_2p = chemicalset_symbol_of_block_symbol Block_symbol_v.cu_2p;;

let fe_3p = chemicalset_symbol_of_block_symbol Block_symbol_v.fe_3p;;

let ni_3p = chemicalset_symbol_of_block_symbol Block_symbol_v.ni_3p;;

let ar = chemicalset_symbol_of_block_symbol Block_symbol_v.ar;;

let he = chemicalset_symbol_of_block_symbol Block_symbol_v.he;;

let kr = chemicalset_symbol_of_block_symbol Block_symbol_v.kr;;

let ne = chemicalset_symbol_of_block_symbol Block_symbol_v.ne;;

let xe = chemicalset_symbol_of_block_symbol Block_symbol_v.xe;;

let hbc = chemicalset_symbol_of_block_symbol Block_symbol_v.hbc;;

let hbd = chemicalset_symbol_of_block_symbol Block_symbol_v.hbd;;

let hbs = chemicalset_symbol_of_block_symbol Block_symbol_v.hbs;;

let hbt = chemicalset_symbol_of_block_symbol Block_symbol_v.hbt;;

let co_zz = chemicalset_symbol_of_block_symbol Block_symbol_v.co_zz;;

let co2_zz = chemicalset_symbol_of_block_symbol Block_symbol_v.co2_zz;;

let no2_zz = chemicalset_symbol_of_block_symbol Block_symbol_v.no2_zz;;

let oh2_zz = chemicalset_symbol_of_block_symbol Block_symbol_v.oh2_zz;;

let sh2_zz = chemicalset_symbol_of_block_symbol Block_symbol_v.sh2_zz;;

let so2_zz = chemicalset_symbol_of_block_symbol Block_symbol_v.so2_zz;;

let cho2_1m = chemicalset_symbol_of_block_symbol Block_symbol_v.cho2_1m;;

let nh2 = chemicalset_symbol_of_block_symbol Block_symbol_v.nh2;;

let ch4_zz = chemicalset_symbol_of_block_symbol Block_symbol_v.ch4_zz;;

let nh4_zz_1p = chemicalset_symbol_of_block_symbol Block_symbol_v.nh4_zz_1p;;

let ch2_zs = chemicalset_symbol_of_block_symbol Block_symbol_v.ch2_zs;;

let ch3_zs = chemicalset_symbol_of_block_symbol Block_symbol_v.ch3_zs;;

let coc2_zs = chemicalset_symbol_of_block_symbol Block_symbol_v.coc2_zs;;

let coh_zs = chemicalset_symbol_of_block_symbol Block_symbol_v.coh_zs;;

let nh2_zs = chemicalset_symbol_of_block_symbol Block_symbol_v.nh2_zs;;

let nh3_zs_1p = chemicalset_symbol_of_block_symbol Block_symbol_v.nh3_zs_1p;;

let no2_zs = chemicalset_symbol_of_block_symbol Block_symbol_v.no2_zs;;

let no_zs = chemicalset_symbol_of_block_symbol Block_symbol_v.no_zs;;

let oh_zs = chemicalset_symbol_of_block_symbol Block_symbol_v.oh_zs;;

let sh_zs = chemicalset_symbol_of_block_symbol Block_symbol_v.sh_zs;;

let ch2_d = chemicalset_symbol_of_block_symbol Block_symbol_v.ch2_d;;

let co_d = chemicalset_symbol_of_block_symbol Block_symbol_v.co_d;;

let nh_d = chemicalset_symbol_of_block_symbol Block_symbol_v.nh_d;;

let nh2_d_1p = chemicalset_symbol_of_block_symbol Block_symbol_v.nh2_d_1p;;

let ch_t = chemicalset_symbol_of_block_symbol Block_symbol_v.ch_t;;

let block_zeroonehalfbridge = chemicalset_symbol_of_block_symbol Block_symbol_v.block_zeroonehalfbridge;;

let ch_zsc = chemicalset_symbol_of_block_symbol Block_symbol_v.ch_zsc;;

let ch_zsd = chemicalset_symbol_of_block_symbol Block_symbol_v.ch_zsd;;

let nh_zs2 = chemicalset_symbol_of_block_symbol Block_symbol_v.nh_zs2;;

let ch_s3 = chemicalset_symbol_of_block_symbol Block_symbol_v.ch_s3;;

let n_s3 = chemicalset_symbol_of_block_symbol Block_symbol_v.n_s3;;

let c_q = chemicalset_symbol_of_block_symbol Block_symbol_v.c_q;;

let n_q_1p = chemicalset_symbol_of_block_symbol Block_symbol_v.n_q_1p;;

let ch2_ss = chemicalset_symbol_of_block_symbol Block_symbol_v.ch2_ss;;

let co_ss = chemicalset_symbol_of_block_symbol Block_symbol_v.co_ss;;

let nh2_ss_1p = chemicalset_symbol_of_block_symbol Block_symbol_v.nh2_ss_1p;;

let nh_ss = chemicalset_symbol_of_block_symbol Block_symbol_v.nh_ss;;

let o_ss = chemicalset_symbol_of_block_symbol Block_symbol_v.o_ss;;

let s_ss = chemicalset_symbol_of_block_symbol Block_symbol_v.s_ss;;

let ch_sd = chemicalset_symbol_of_block_symbol Block_symbol_v.ch_sd;;

let n_sd = chemicalset_symbol_of_block_symbol Block_symbol_v.n_sd;;

let n_sd_1p = chemicalset_symbol_of_block_symbol Block_symbol_v.n_sd_1p;;

let c_st = chemicalset_symbol_of_block_symbol Block_symbol_v.c_st;;

let n_st_1p = chemicalset_symbol_of_block_symbol Block_symbol_v.n_st_1p;;

let ch_ds = chemicalset_symbol_of_block_symbol Block_symbol_v.ch_ds;;

let n_ds = chemicalset_symbol_of_block_symbol Block_symbol_v.n_ds;;

let nh_ds_1p = chemicalset_symbol_of_block_symbol Block_symbol_v.nh_ds_1p;;

let c_dd = chemicalset_symbol_of_block_symbol Block_symbol_v.c_dd;;

let n_dd_1p = chemicalset_symbol_of_block_symbol Block_symbol_v.n_dd_1p;;

let c_ts = chemicalset_symbol_of_block_symbol Block_symbol_v.c_ts;;

let n_ts_1p = chemicalset_symbol_of_block_symbol Block_symbol_v.n_ts_1p;;

let c_s2 = chemicalset_symbol_of_block_symbol Block_symbol_v.c_s2;;

let n_s2_1p = chemicalset_symbol_of_block_symbol Block_symbol_v.n_s2_1p;;

let block_onesinglebiforksinglesingleconjugated = chemicalset_symbol_of_block_symbol Block_symbol_v.block_onesinglebiforksinglesingleconjugated;;

let c_ds2 = chemicalset_symbol_of_block_symbol Block_symbol_v.c_ds2;;

let n_ds2_1p = chemicalset_symbol_of_block_symbol Block_symbol_v.n_ds2_1p;;

let c_ss3 = chemicalset_symbol_of_block_symbol Block_symbol_v.c_ss3;;

let n_ss3_1p = chemicalset_symbol_of_block_symbol Block_symbol_v.n_ss3_1p;;

let block_onesinglezero = chemicalset_symbol_of_block_symbol Block_symbol_v.block_onesinglezero;;

let block_oneconjugatedzero = chemicalset_symbol_of_block_symbol Block_symbol_v.block_oneconjugatedzero;;

let block_onedoublelezero = chemicalset_symbol_of_block_symbol Block_symbol_v.block_onedoublelezero;;

let block_onetriplezero = chemicalset_symbol_of_block_symbol Block_symbol_v.block_onetriplezero;;

let bond_covalent = chemicalset_symbol_of_bond_symbol Bond_symbol_v.bond_covalent;;

let bond_hydrogen = chemicalset_symbol_of_bond_symbol Bond_symbol_v.bond_hydrogen;;

let bond_ionic = chemicalset_symbol_of_bond_symbol Bond_symbol_v.bond_ionic;;

let bc = chemicalset_symbol_of_bridge_symbol Bridge_symbol_v.bc;;

let bd = chemicalset_symbol_of_bridge_symbol Bridge_symbol_v.bd;;

let bs = chemicalset_symbol_of_bridge_symbol Bridge_symbol_v.bs;;

let blank = chemicalset_symbol_of_chain_symbol Chain_symbol_v.blank;;

let a = chemicalset_symbol_of_chain_symbol Chain_symbol_v.a;;

let b = chemicalset_symbol_of_chain_symbol Chain_symbol_v.b;;

let c = chemicalset_symbol_of_chain_symbol Chain_symbol_v.c;;

let d = chemicalset_symbol_of_chain_symbol Chain_symbol_v.d;;

let e = chemicalset_symbol_of_chain_symbol Chain_symbol_v.e;;

let f = chemicalset_symbol_of_chain_symbol Chain_symbol_v.f;;

let g = chemicalset_symbol_of_chain_symbol Chain_symbol_v.g;;

let h = chemicalset_symbol_of_chain_symbol Chain_symbol_v.h;;

let cluster_fromid s = chemicalset_symbol_of_cluster_symbol (Cluster_symbol_v.cluster_fromid s);;

let coffer_fromid s = chemicalset_symbol_of_coffer_symbol (Coffer_symbol_v.coffer_fromid s);;

let carboxyl_leftextended = chemicalset_symbol_of_cterminal_subunit_symbol Cterminal_subunit_symbol_v.carboxyl_leftextended;;

let carboxylate_leftextended = chemicalset_symbol_of_cterminal_subunit_symbol Cterminal_subunit_symbol_v.carboxylate_leftextended;;

let fragment_zerozero = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.fragment_zerozero;;

let f_1m = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.f_1m;;

let h_1m = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.h_1m;;

let cl_1m = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.cl_1m;;

let br_1m = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.br_1m;;

let i_1m = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.i_1m;;

let o_2m = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.o_2m;;

let s_2m = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.s_2m;;

let h_1p = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.h_1p;;

let k_1p = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.k_1p;;

let li_1p = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.li_1p;;

let na_1p = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.na_1p;;

let ni_1p = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.ni_1p;;

let cu_1p = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.cu_1p;;

let mg_2p = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.mg_2p;;

let ca_2p = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.ca_2p;;

let fe_2p = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.fe_2p;;

let zn_2p = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.zn_2p;;

let cu_2p = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.cu_2p;;

let fe_3p = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.fe_3p;;

let ni_3p = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.ni_3p;;

let ar = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.ar;;

let he = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.he;;

let kr = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.kr;;

let ne = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.ne;;

let xe = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.xe;;

let hbc = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.hbc;;

let hbd = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.hbd;;

let hbs = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.hbs;;

let hbt = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.hbt;;

let co_zz = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.co_zz;;

let co2_zz = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.co2_zz;;

let no2_zz = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.no2_zz;;

let oh2_zz = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.oh2_zz;;

let sh2_zz = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.sh2_zz;;

let so2_zz = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.so2_zz;;

let cho2_1m = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.cho2_1m;;

let nh2 = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.nh2;;

let ch4_zz = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.ch4_zz;;

let nh4_zz_1p = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.nh4_zz_1p;;

let segment_head_extends_fragment_leaf = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.segment_head_extends_fragment_leaf;;

let fragment_head_halfbridge = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.fragment_head_halfbridge;;

let ch_zsc = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.ch_zsc;;

let ch_zsd = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.ch_zsd;;

let nh_zs2 = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.nh_zs2;;

let ch_s3 = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.ch_s3;;

let n_s3 = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.n_s3;;

let c_q = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.c_q;;

let n_q_1p = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.n_q_1p;;

let fragment_zerofork = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.fragment_zerofork;;

let segment_head_extends_fragment_buried = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.segment_head_extends_fragment_buried;;

let fragment_onefork = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.fragment_onefork;;

let c_s2 = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.c_s2;;

let n_s2_1p = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.n_s2_1p;;

let block_onesinglebiforksinglesingleconjugated = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.block_onesinglebiforksinglesingleconjugated;;

let c_ds2 = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.c_ds2;;

let n_ds2_1p = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.n_ds2_1p;;

let c_ss3 = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.c_ss3;;

let n_ss3_1p = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.n_ss3_1p;;

let polysegment_buried_leftextended = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.polysegment_buried_leftextended;;

let fragment_halfbridgetail = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.fragment_halfbridgetail;;

let fragment_halfbridge = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.fragment_halfbridge;;

let ch_zsc = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.ch_zsc;;

let ch_zsd = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.ch_zsd;;

let nh_zs2 = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.nh_zs2;;

let ch_s3 = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.ch_s3;;

let n_s3 = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.n_s3;;

let c_q = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.c_q;;

let n_q_1p = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.n_q_1p;;

let fragment_zerofork = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.fragment_zerofork;;

let segment_head_extends_fragment_buried = chemicalset_symbol_of_fragment_symbol Fragment_symbol_v.segment_head_extends_fragment_buried;;

let empty = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.empty;;

let fragment_halfbridgetail = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.fragment_halfbridgetail;;

let fragment_halfbridge = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.fragment_halfbridge;;

let ch_zsc = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.ch_zsc;;

let ch_zsd = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.ch_zsd;;

let nh_zs2 = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.nh_zs2;;

let ch_s3 = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.ch_s3;;

let n_s3 = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.n_s3;;

let c_q = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.c_q;;

let n_q_1p = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.n_q_1p;;

let fragment_zerofork = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.fragment_zerofork;;

let segment_head_extends_fragment_buried = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.segment_head_extends_fragment_buried;;

let dimethinetrimethyl = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.dimethinetrimethyl;;

let ethcaracidmethyllamine = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.ethcaracidmethyllamine;;

let ethcaracidmethylramine = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.ethcaracidmethylramine;;

let ethineacidlamine = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.ethineacidlamine;;

let ethineacidramine = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.ethineacidramine;;

let guanidine = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.guanidine;;

let guanidinium = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.guanidinium;;

let methenemethinedimethyl = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.methenemethinedimethyl;;

let methinedimethyl = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.methinedimethyl;;

let methineethylmethyl = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.methineethylmethyl;;

let methinolmethyl = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.methinolmethyl;;

let trimetheneguanidinium = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.trimetheneguanidinium;;

let trimethinetetramethyl = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.trimethinetetramethyl;;

let benzale = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.benzale;;

let benzole = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.benzole;;

let benzyl = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.benzyl;;

let indole = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.indole;;

let metheneimidazole = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.metheneimidazole;;

let metheneindole = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.metheneindole;;

let dimethonecarbonhydroxyldimethone = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.dimethonecarbonhydroxyldimethone;;

let dimethone = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.dimethone;;

let phenol = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.phenol;;

let pyrrole = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.pyrrole;;

let methenephenol = chemicalset_symbol_of_grouping_symbol Grouping_symbol_v.methenephenol;;

let skipped = chemicalset_symbol_of_mendeleev_symbol Mendeleev_symbol_v.skipped;;

let glycine = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.glycine;;

let proline = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.proline;;

let alanine = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.alanine;;

let arginine = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.arginine;;

let asparagine = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.asparagine;;

let aspartic = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.aspartic;;

let cysteine = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.cysteine;;

let glutamine = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.glutamine;;

let glutamic = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.glutamic;;

let histidine = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.histidine;;

let isoleucine = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.isoleucine;;

let leucine = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.leucine;;

let lysine = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.lysine;;

let methionine = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.methionine;;

let phenylalanine = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.phenylalanine;;

let serine = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.serine;;

let threonine = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.threonine;;

let tryptophan = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.tryptophan;;

let tyrosine = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.tyrosine;;

let valine = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.valine;;

let fake_b = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.fake_b;;

let benzene = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.benzene;;

let phenol = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.phenol;;

let pyrrole = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.pyrrole;;

let fake_d2 = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.fake_d2;;

let guanidine = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.guanidine;;

let fake_2 = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.fake_2;;

let fake_3 = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.fake_3;;

let fake_4 = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.fake_4;;

let f_1m = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.f_1m;;

let h_1m = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.h_1m;;

let cl_1m = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.cl_1m;;

let br_1m = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.br_1m;;

let i_1m = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.i_1m;;

let o_2m = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.o_2m;;

let s_2m = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.s_2m;;

let h_1p = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.h_1p;;

let k_1p = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.k_1p;;

let li_1p = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.li_1p;;

let na_1p = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.na_1p;;

let ni_1p = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.ni_1p;;

let cu_1p = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.cu_1p;;

let mg_2p = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.mg_2p;;

let ca_2p = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.ca_2p;;

let fe_2p = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.fe_2p;;

let zn_2p = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.zn_2p;;

let cu_2p = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.cu_2p;;

let fe_3p = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.fe_3p;;

let ni_3p = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.ni_3p;;

let ar = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.ar;;

let he = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.he;;

let kr = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.kr;;

let ne = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.ne;;

let xe = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.xe;;

let hbc = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.hbc;;

let hbd = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.hbd;;

let hbs = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.hbs;;

let hbt = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.hbt;;

let carbonmonoxide = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.carbonmonoxide;;

let dihydrogen = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.dihydrogen;;

let dinitrogen = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.dinitrogen;;

let dioxygen = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.dioxygen;;

let hydrogenchloride = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.hydrogenchloride;;

let hydrogenfluoride = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.hydrogenfluoride;;

let hydrogensulfide = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.hydrogensulfide;;

let water = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.water;;

let ammonia = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.ammonia;;

let methane = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.methane;;

let glycine = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.glycine;;

let molecule_nucleicacid = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.molecule_nucleicacid;;

let molecule_nucleoside = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.molecule_nucleoside;;

let molecule_nucleotide = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.molecule_nucleotide;;

let polypeptide_frompdbid s = chemicalset_symbol_of_molecule_symbol (Molecule_symbol_v.polypeptide_frompdbid s);;

let nucleicacid = chemicalset_symbol_of_molecule_symbol Molecule_symbol_v.nucleicacid;;

let glycine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.glycine;;

let proline = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.proline;;

let alanine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.alanine;;

let arginine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.arginine;;

let asparagine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.asparagine;;

let aspartic = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.aspartic;;

let cysteine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.cysteine;;

let glutamine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.glutamine;;

let glutamic = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.glutamic;;

let histidine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.histidine;;

let isoleucine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.isoleucine;;

let leucine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.leucine;;

let lysine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.lysine;;

let methionine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.methionine;;

let phenylalanine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.phenylalanine;;

let serine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.serine;;

let threonine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.threonine;;

let tryptophan = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.tryptophan;;

let tyrosine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.tyrosine;;

let valine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.valine;;

let glycine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.glycine;;

let proline = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.proline;;

let alanine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.alanine;;

let arginine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.arginine;;

let asparagine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.asparagine;;

let aspartic = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.aspartic;;

let cysteine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.cysteine;;

let glutamine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.glutamine;;

let glutamic = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.glutamic;;

let histidine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.histidine;;

let isoleucine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.isoleucine;;

let leucine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.leucine;;

let lysine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.lysine;;

let methionine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.methionine;;

let phenylalanine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.phenylalanine;;

let serine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.serine;;

let threonine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.threonine;;

let tryptophan = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.tryptophan;;

let tyrosine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.tyrosine;;

let valine = chemicalset_symbol_of_peptideca_symbol Peptideca_symbol_v.valine;;

let protein_frompdbid s = chemicalset_symbol_of_protein_symbol (Protein_symbol_v.protein_frompdbid s);;

let benzyl = chemicalset_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.benzyl;;

let dietheneamine = chemicalset_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.dietheneamine;;

let dimethenesmethyl = chemicalset_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.dimethenesmethyl;;

let methinedimethyl = chemicalset_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.methinedimethyl;;

let etheneacid = chemicalset_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.etheneacid;;

let etheneamide = chemicalset_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.etheneamide;;

let metheneacid = chemicalset_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.metheneacid;;

let metheneamide = chemicalset_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.metheneamide;;

let metheneimidazole = chemicalset_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.metheneimidazole;;

let methenemethinedimethyl = chemicalset_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.methenemethinedimethyl;;

let methenephenol = chemicalset_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.methenephenol;;

let methenethiol = chemicalset_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.methenethiol;;

let metheneindole = chemicalset_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.metheneindole;;

let methenol = chemicalset_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.methenol;;

let methineethylmethyl = chemicalset_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.methineethylmethyl;;

let methinolmethyl = chemicalset_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.methinolmethyl;;

let methyl = chemicalset_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.methyl;;

let trimetheneguanidinium = chemicalset_symbol_of_polypeptide_sidegroup_symbol Polypeptide_sidegroup_symbol_v.trimetheneguanidinium;;

let glycine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.glycine;;

let proline = chemicalset_symbol_of_residue_symbol Residue_symbol_v.proline;;

let alanine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.alanine;;

let arginine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.arginine;;

let asparagine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.asparagine;;

let aspartic = chemicalset_symbol_of_residue_symbol Residue_symbol_v.aspartic;;

let cysteine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.cysteine;;

let glutamine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.glutamine;;

let glutamic = chemicalset_symbol_of_residue_symbol Residue_symbol_v.glutamic;;

let histidine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.histidine;;

let isoleucine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.isoleucine;;

let leucine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.leucine;;

let lysine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.lysine;;

let methionine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.methionine;;

let phenylalanine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.phenylalanine;;

let serine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.serine;;

let threonine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.threonine;;

let tryptophan = chemicalset_symbol_of_residue_symbol Residue_symbol_v.tryptophan;;

let tyrosine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.tyrosine;;

let valine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.valine;;

let glycine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.glycine;;

let proline = chemicalset_symbol_of_residue_symbol Residue_symbol_v.proline;;

let alanine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.alanine;;

let arginine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.arginine;;

let asparagine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.asparagine;;

let aspartic = chemicalset_symbol_of_residue_symbol Residue_symbol_v.aspartic;;

let cysteine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.cysteine;;

let glutamine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.glutamine;;

let glutamic = chemicalset_symbol_of_residue_symbol Residue_symbol_v.glutamic;;

let histidine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.histidine;;

let isoleucine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.isoleucine;;

let leucine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.leucine;;

let lysine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.lysine;;

let methionine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.methionine;;

let phenylalanine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.phenylalanine;;

let serine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.serine;;

let threonine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.threonine;;

let tryptophan = chemicalset_symbol_of_residue_symbol Residue_symbol_v.tryptophan;;

let tyrosine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.tyrosine;;

let valine = chemicalset_symbol_of_residue_symbol Residue_symbol_v.valine;;


let ch2_zs = chemicalset_symbol_of_segment_symbol Segment_symbol_v.ch2_zs;;

let ch3_zs = chemicalset_symbol_of_segment_symbol Segment_symbol_v.ch3_zs;;

let coc2_zs = chemicalset_symbol_of_segment_symbol Segment_symbol_v.coc2_zs;;

let coh_zs = chemicalset_symbol_of_segment_symbol Segment_symbol_v.coh_zs;;

let nh2_zs = chemicalset_symbol_of_segment_symbol Segment_symbol_v.nh2_zs;;

let nh3_zs_1p = chemicalset_symbol_of_segment_symbol Segment_symbol_v.nh3_zs_1p;;

let no2_zs = chemicalset_symbol_of_segment_symbol Segment_symbol_v.no2_zs;;

let no_zs = chemicalset_symbol_of_segment_symbol Segment_symbol_v.no_zs;;

let oh_zs = chemicalset_symbol_of_segment_symbol Segment_symbol_v.oh_zs;;

let sh_zs = chemicalset_symbol_of_segment_symbol Segment_symbol_v.sh_zs;;

let ch2_d = chemicalset_symbol_of_segment_symbol Segment_symbol_v.ch2_d;;

let co_d = chemicalset_symbol_of_segment_symbol Segment_symbol_v.co_d;;

let nh_d = chemicalset_symbol_of_segment_symbol Segment_symbol_v.nh_d;;

let nh2_d_1p = chemicalset_symbol_of_segment_symbol Segment_symbol_v.nh2_d_1p;;

let ch_t = chemicalset_symbol_of_segment_symbol Segment_symbol_v.ch_t;;

let block_zeroonehalfbridge = chemicalset_symbol_of_segment_symbol Segment_symbol_v.block_zeroonehalfbridge;;

let segment_rightextended = chemicalset_symbol_of_segment_symbol Segment_symbol_v.segment_rightextended;;

let ch2_ss = chemicalset_symbol_of_segment_symbol Segment_symbol_v.ch2_ss;;

let co_ss = chemicalset_symbol_of_segment_symbol Segment_symbol_v.co_ss;;

let nh2_ss_1p = chemicalset_symbol_of_segment_symbol Segment_symbol_v.nh2_ss_1p;;

let nh_ss = chemicalset_symbol_of_segment_symbol Segment_symbol_v.nh_ss;;

let o_ss = chemicalset_symbol_of_segment_symbol Segment_symbol_v.o_ss;;

let s_ss = chemicalset_symbol_of_segment_symbol Segment_symbol_v.s_ss;;

let ch_sd = chemicalset_symbol_of_segment_symbol Segment_symbol_v.ch_sd;;

let n_sd = chemicalset_symbol_of_segment_symbol Segment_symbol_v.n_sd;;

let n_sd_1p = chemicalset_symbol_of_segment_symbol Segment_symbol_v.n_sd_1p;;

let c_st = chemicalset_symbol_of_segment_symbol Segment_symbol_v.c_st;;

let n_st_1p = chemicalset_symbol_of_segment_symbol Segment_symbol_v.n_st_1p;;

let ch_ds = chemicalset_symbol_of_segment_symbol Segment_symbol_v.ch_ds;;

let n_ds = chemicalset_symbol_of_segment_symbol Segment_symbol_v.n_ds;;

let nh_ds_1p = chemicalset_symbol_of_segment_symbol Segment_symbol_v.nh_ds_1p;;

let c_dd = chemicalset_symbol_of_segment_symbol Segment_symbol_v.c_dd;;

let n_dd_1p = chemicalset_symbol_of_segment_symbol Segment_symbol_v.n_dd_1p;;

let c_ts = chemicalset_symbol_of_segment_symbol Segment_symbol_v.c_ts;;

let n_ts_1p = chemicalset_symbol_of_segment_symbol Segment_symbol_v.n_ts_1p;;

let segment_leftextended = chemicalset_symbol_of_segment_symbol Segment_symbol_v.segment_leftextended;;

let polysegment = chemicalset_symbol_of_segment_symbol Segment_symbol_v.polysegment;;


(** created by ./generator chemicalset implementation symbol at 18:43 8 Feb 2012. *)



