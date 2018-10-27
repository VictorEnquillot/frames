(** {3 A Symbol for a Chemicalset.} *)


(** {6 Modules.} *)

module Ags_t = Aggregate_symbol_t
module Ats_t = Atom_symbol_t
module Bls_t = Block_symbol_t
module Bns_t = Bond_symbol_t
module Bxs_t = Box_symbol_t
module Brs_t = Bridge_symbol_t
module Chs_t = Chain_symbol_t
module Cls_t = Cluster_symbol_t
module Css_t = Cterminal_subunit_symbol_t
module Frs_t = Fragment_symbol_t
module Grs_t = Grouping_symbol_t
module Mes_t = Mendeleev_symbol_t
module Mas_t = Molecule_aminoacid_symbol_t
module Maos_t = Molecule_aminoacid_olc_symbol_t
module Mats_t = Molecule_aminoacid_tlc_symbol_t
module Mos_t = Molecule_symbol_t
module Nbs_t = Nitrogenous_base_symbol_t
module Nss_t = Nucleoside_symbol_t
module Nts_t = Nucleotide_symbol_t
module Pes_t = Peptideca_symbol_t
module Pss_t = Polypeptide_sidegroup_symbol_t
module Res_t = Residue_symbol_t
module Ses_t = Segment_symbol_t


(** {6 Typing.} *)

type chemicalset_symbol =
  | Aggregate_symbol of Ags_t.aggregate_symbol
  | Atom_symbol of Ats_t.atom_symbol
  | Block_symbol of Bls_t.block_symbol
  | Bond_symbol of Bns_t.bond_symbol
  | Box_symbol of Bxs_t.box_symbol
  | Bridge_symbol of Brs_t.bridge_symbol
  | Chain_symbol of Chs_t.chain_symbol
  | Cluster_symbol of Cls_t.cluster_symbol
  | Cterminal_subunit_symbol of Css_t.cterminal_subunit_symbol
  | Fragment_symbol of Frs_t.fragment_symbol
  | Grouping_symbol of Grs_t.grouping_symbol
  | Mendeleev_symbol of Mes_t.mendeleev_symbol
  | Molecule_aminoacid_symbol of Mas_t.molecule_aminoacid_symbol
  | Molecule_aminoacid_olc_symbol of Maos_t.molecule_aminoacid_olc_symbol
  | Molecule_aminoacid_tlc_symbol of Mats_t.molecule_aminoacid_tlc_symbol
  | Molecule_symbol of Mos_t.molecule_symbol
  | Nitrogenous_base_symbol of Nbs_t.nitrogenous_base_symbol
  | Nucleoside_symbol of Nss_t.nucleoside_symbol
  | Nucleotide_symbol of Nts_t.nucleotide_symbol
  | Peptideca_symbol of Pes_t.peptideca_symbol
  | Polypeptide_sidegroup_symbol of Pss_t.polypeptide_sidegroup_symbol
  | Residue_symbol of Res_t.residue_symbol
  | Segment_symbol of Ses_t.segment_symbol
;;


(** created by ./generator chemicalset t symbol at 19:13 25 Apr 2011. *)



