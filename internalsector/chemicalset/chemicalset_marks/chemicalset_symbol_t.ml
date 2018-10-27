(** {3 The Symbol for a Chemicalset.} *)



(** {6 Aliasing} *)



(** {6 Typing} *)


type chemicalset_symbol =
  | Atom_symbol of Atom_symbol_t.atom_symbol
  | Block_symbol of Block_symbol_t.block_symbol
  | Bond_symbol of Bond_symbol_t.bond_symbol
  | Bridge_symbol of Bridge_symbol_t.bridge_symbol
  | Chain_symbol of Chain_symbol_t.chain_symbol
  | Cluster_symbol of Cluster_symbol_t.cluster_symbol
  | Coffer_symbol of Coffer_symbol_t.coffer_symbol
  | Cterminal_subunit
  | Fragment_symbol of Fragment_symbol_t.fragment_symbol
  | Grouping_symbol of Grouping_symbol_t.grouping_symbol
  | Mendeleev_symbol of Mendeleev_symbol_t.mendeleev_symbol
  | Molecule_symbol of Molecule_symbol_t.molecule_symbol
  | Polypeptide_subunit_symbol of Polypeptide_subunit_symbol_t.polypeptide_subunit_symbol
  | Segment_symbol of Segment_symbol_t.segment_symbol
;;


(** created by ./generator chemicalset implementation symbol at 15:0 13 Mar 2012. *)



