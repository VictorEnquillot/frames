(** {3 A Symbol for a Chemicalset.} *)

let nam_mod = "Chemicalset_symbol_v";;

(** {6 Modules.} *)

module Aans_t = Atom_zerotied_anion_symbol_t
module Aans_v = Atom_zerotied_anion_symbol_v
module Acccs_t = Atom_threetied_conjugated_conjugated_conjugated_symbol_t
module Acccs_v = Atom_threetied_conjugated_conjugated_conjugated_symbol_v
module Accs_t = Atom_twotied_conjugated_conjugated_symbol_t
module Accs_v = Atom_twotied_conjugated_conjugated_symbol_v
module Acds_t = Atom_twotied_conjugated_double_symbol_t
module Acds_v = Atom_twotied_conjugated_double_symbol_v
module Acns_t = Atom_zerotied_cation_symbol_t
module Acns_v = Atom_zerotied_cation_symbol_v
module Addds_t = Atom_threetied_double_double_double_symbol_t
module Addds_v = Atom_threetied_double_double_double_symbol_v
module Adds_t = Atom_twotied_double_double_symbol_t
module Adds_v = Atom_twotied_double_double_symbol_v
module Afos_t = Atom_fourtied_symbol_t
module Afos_v = Atom_fourtied_symbol_v
module Afvs_t = Atom_fivetied_symbol_t
module Afvs_v = Atom_fivetied_symbol_v
module Ags_t = Aggregate_symbol_t
module Ags_v = Aggregate_symbol_v
module Aocs_t = Atom_onetied_conjugated_symbol_t
module Aocs_v = Atom_onetied_conjugated_symbol_v
module Aods_t = Atom_onetied_double_symbol_t
module Aods_v = Atom_onetied_double_symbol_v
module Aons_t = Atom_onetied_symbol_t
module Aons_v = Atom_onetied_symbol_v
module Aoss_t = Atom_onetied_single_symbol_t
module Aoss_v = Atom_onetied_single_symbol_v
module Aots_t = Atom_onetied_triple_symbol_t
module Aots_v = Atom_onetied_triple_symbol_v
module Args_t = Atom_zerotied_raregas_symbol_t
module Args_v = Atom_zerotied_raregas_symbol_v
module Asccs_t = Atom_threetied_single_conjugated_conjugated_symbol_t
module Asccs_v = Atom_threetied_single_conjugated_conjugated_symbol_v
module Ascs_t = Atom_twotied_single_conjugated_symbol_t
module Ascs_v = Atom_twotied_single_conjugated_symbol_v
module Asds_t = Atom_twotied_single_double_symbol_t
module Asds_v = Atom_twotied_single_double_symbol_v
module Assds_t = Atom_threetied_single_single_double_symbol_t
module Assds_v = Atom_threetied_single_single_double_symbol_v
module Assss_t = Atom_threetied_single_single_single_symbol_t
module Assss_v = Atom_threetied_single_single_single_symbol_v
module Asss_t = Atom_twotied_single_single_symbol_t
module Asss_v = Atom_twotied_single_single_symbol_v
module Asts_t = Atom_twotied_single_triple_symbol_t
module Asts_v = Atom_twotied_single_triple_symbol_v
module Asxs_t = Atom_sixtied_symbol_t
module Asxs_v = Atom_sixtied_symbol_v
module Aths_t = Atom_threetied_symbol_t
module Aths_v = Atom_threetied_symbol_v
module Ats_t = Atom_symbol_t
module Ats_v = Atom_symbol_v
module Atws_t = Atom_twotied_symbol_t
module Atws_v = Atom_twotied_symbol_v
module Azes_t = Atom_zerotied_symbol_t
module Azes_v = Atom_zerotied_symbol_v
module Bdds_t = Block_onedoubleonedouble_symbol_t
module Bdds_v = Block_onedoubleonedouble_symbol_v
module Bdss_t = Block_onedoubleonesingle_symbol_t
module Bdss_v = Block_onedoubleonesingle_symbol_v
module Bls_t = Block_symbol_t
module Bls_v = Block_symbol_v
module Bns_t = Bond_symbol_t
module Bns_v = Bond_symbol_v
module Boes_t = Block_oneend_symbol_t
module Boes_v = Block_oneend_symbol_v
module Bofs_t = Block_onefork_symbol_t
module Bofs_v = Block_onefork_symbol_v
module Boos_t = Block_oneone_symbol_t
module Boos_v = Block_oneone_symbol_v
module Bozs_t = Block_onezero_symbol_t
module Bozs_v = Block_onezero_symbol_v
module Brs_t = Bridge_symbol_t
module Brs_v = Bridge_symbol_v
module Bsds_t = Block_onesingleonedouble_symbol_t
module Bsds_v = Block_onesingleonedouble_symbol_v
module Bsss_t = Block_onesingleonesingle_symbol_t
module Bsss_v = Block_onesingleonesingle_symbol_v
module Bsts_t = Block_onesingleonetriple_symbol_t
module Bsts_v = Block_onesingleonetriple_symbol_v
module Btss_t = Block_onetripleonesingle_symbol_t
module Btss_v = Block_onetripleonesingle_symbol_v
module Bxs_t = Box_symbol_t
module Bxs_v = Box_symbol_v
module Bzbfs_t = Block_zerobifork_symbol_t
module Bzbfs_v = Block_zerobifork_symbol_v
module Bzds_t = Block_zeroonedouble_symbol_t
module Bzds_v = Block_zeroonedouble_symbol_v
module Bzfs_t = Block_zerofork_symbol_t
module Bzfs_v = Block_zerofork_symbol_v
module Bzos_t = Block_zeroone_symbol_t
module Bzos_v = Block_zeroone_symbol_v
module Bzqfs_t = Block_zeroquadrifork_symbol_t
module Bzqfs_v = Block_zeroquadrifork_symbol_v
module Bzss_t = Block_zeroonesingle_symbol_t
module Bzss_v = Block_zeroonesingle_symbol_v
module Bztfs_t = Block_zerotrifork_symbol_t
module Bztfs_v = Block_zerotrifork_symbol_v
module Bzts_t = Block_zeroonetriple_symbol_t
module Bzts_v = Block_zeroonetriple_symbol_v
module Bzzds_t = Block_zerozero_diatomic_symbol_t
module Bzzds_v = Block_zerozero_diatomic_symbol_v
module Bzzps_t = Block_zerozero_pentatomic_symbol_t
module Bzzps_v = Block_zerozero_pentatomic_symbol_v
module Bzzqs_t = Block_zerozero_tetratomic_symbol_t
module Bzzqs_v = Block_zerozero_tetratomic_symbol_v
module Bzzs_t = Block_zerozero_symbol_t
module Bzzs_v = Block_zerozero_symbol_v
module Bzzts_t = Block_zerozero_triatomic_symbol_t
module Bzzts_v = Block_zerozero_triatomic_symbol_v
module Chs_t = Chain_symbol_t
module Chs_v = Chain_symbol_v
module Cls_t = Cluster_symbol_t
module Cls_v = Cluster_symbol_v
module Css_t = Chemicalset_symbol_t
module Ctss_t = Cterminal_subunit_symbol_t
module Ctss_v = Cterminal_subunit_symbol_v
module Dbt_v = Doublet_v
module Dncs_t = Deoxyribonucleotide_symbol_t
module Dncs_v = Deoxyribonucleotide_symbol_v
module Dpus_t = Deoxyribonucleotide_purinic_symbol_t
module Dpus_v = Deoxyribonucleotide_purinic_symbol_v
module Dpys_t = Deoxyribonucleotide_pyrimidinic_symbol_t
module Dpys_v = Deoxyribonucleotide_pyrimidinic_symbol_v
module Fbs_t = Fragment_buried_symbol_t
module Fbs_v = Fragment_buried_symbol_v
module Fcs_t = Fragment_closed_symbol_t
module Fcs_v = Fragment_closed_symbol_v
module Fhs_t = Fragment_head_symbol_t
module Fhs_v = Fragment_head_symbol_v
module Frls_t = Fragment_leaf_symbol_t
module Frls_v = Fragment_leaf_symbol_v
module Frs_t = Fragment_symbol_t
module Frs_v = Fragment_symbol_v
module Gbs_t = Grouping_bridged_symbol_t
module Gbs_v = Grouping_bridged_symbol_v
module Gps_t = Grouping_polyfragment_symbol_t
module Gps_v = Grouping_polyfragment_symbol_v
module Grs_t = Grouping_symbol_t
module Grs_v = Grouping_symbol_v
module Hbs_t = Halfbridge_symbol_t
module Hbs_v = Halfbridge_symbol_v
module Mafs_t = Molecule_aminoacid_fragmented_symbol_t
module Mafs_v = Molecule_aminoacid_fragmented_symbol_v
module Mafts_t = Molecule_aminoacid_fragmented_tlc_symbol_t
module Mafts_v = Molecule_aminoacid_fragmented_tlc_symbol_v
module Maofs_t = Molecule_aminoacid_fragmented_olc_symbol_t
module Maofs_v = Molecule_aminoacid_fragmented_olc_symbol_v
module Maors_t = Molecule_aminoacid_regular_olc_symbol_t
module Maors_v = Molecule_aminoacid_regular_olc_symbol_v
module Maoss_t = Molecule_aminoacid_segmented_olc_symbol_t
module Maoss_v = Molecule_aminoacid_segmented_olc_symbol_v
module Maos_t = Molecule_aminoacid_olc_symbol_t
module Maos_v = Molecule_aminoacid_olc_symbol_v
module Mars_t = Molecule_aminoacid_regular_symbol_t
module Mars_v = Molecule_aminoacid_regular_symbol_v
module Marts_t = Molecule_aminoacid_regular_tlc_symbol_t
module Marts_v = Molecule_aminoacid_regular_tlc_symbol_v
module Mass_t = Molecule_aminoacid_segmented_symbol_t
module Mass_v = Molecule_aminoacid_segmented_symbol_v
module Mas_t = Molecule_aminoacid_symbol_t
module Masts_t = Molecule_aminoacid_segmented_tlc_symbol_t
module Masts_v = Molecule_aminoacid_segmented_tlc_symbol_v
module Mas_v = Molecule_aminoacid_symbol_v
module Mats_t = Molecule_aminoacid_tlc_symbol_t
module Mats_v = Molecule_aminoacid_tlc_symbol_v
module Mbs_t = Molecule_bridged_symbol_t
module Mbs_v = Molecule_bridged_symbol_v
module Mds_t = Molecule_dendrimer_symbol_t
module Mds_v = Molecule_dendrimer_symbol_v
module Mf1s_t = Molecule_forked_oneforked_symbol_t
module Mf1s_v = Molecule_forked_oneforked_symbol_v
module Mf2s_t = Molecule_forked_twoforked_symbol_t
module Mf2s_v = Molecule_forked_twoforked_symbol_v
module Mf3s_t = Molecule_forked_threeforked_symbol_t
module Mf3s_v = Molecule_forked_threeforked_symbol_v
module Mfms_t = Molecule_forked_moreforked_symbol_t
module Mfms_v = Molecule_forked_moreforked_symbol_v
module Mfs_t = Molecule_forked_symbol_t
module Mfs_v = Molecule_forked_symbol_v
module Ml2s_t = Molecule_linear_diatomic_symbol_t
module Ml2s_v = Molecule_linear_diatomic_symbol_v
module Ml3s_t = Molecule_linear_triatomic_symbol_t
module Ml3s_v = Molecule_linear_triatomic_symbol_v
module Ml4s_t = Molecule_linear_tetratomic_symbol_t
module Ml4s_v = Molecule_linear_tetratomic_symbol_v
module Ml5s_t = Molecule_linear_pentatomic_symbol_t
module Ml5s_v = Molecule_linear_pentatomic_symbol_v
module Mlms_t = Molecule_linear_monoatomic_symbol_t
module Mlms_v = Molecule_linear_monoatomic_symbol_v
module Mlps_t = Molecule_linear_polyatomic_symbol_t
module Mlps_v = Molecule_linear_polyatomic_symbol_v
module Mls_t = Molecule_linear_symbol_t
module Mls_v = Molecule_linear_symbol_v
module Mns_t = Mendeleev_symbol_t
module Mns_v = Mendeleev_symbol_v
module Mos_t = Molecule_symbol_t
module Mos_v = Molecule_symbol_v
module Mps_t = Molecule_polymer_symbol_t
module Mps_v = Molecule_polymer_symbol_v
module Nas_t = Nucleicacid_symbol_t
module Nas_v = Nucleicacid_symbol_v
module Nbs_t = Nitrogenous_base_symbol_t
module Nbs_v = Nitrogenous_base_symbol_v
module Nss_t = Nucleoside_symbol_t
module Nss_v = Nucleoside_symbol_v
module Nts_t = Nucleotide_symbol_t
module Nts_v = Nucleotide_symbol_v
module Ord_p = Ordinal_p
module Pas_t = Peptideca_symbol_t
module Pas_v = Peptideca_symbol_v
module Pbfs_t = Peptideca_buried_fragmented_symbol_t
module Pbfs_v = Peptideca_buried_fragmented_symbol_v
module Pbss_t = Peptideca_buried_segmented_symbol_t
module Pbss_v = Peptideca_buried_segmented_symbol_v
module Pbs_t = Peptideca_buried_symbol_t
module Pbs_v = Peptideca_buried_symbol_v
module Pls_t = Polypeptide_symbol_t
module Pls_v = Polypeptide_symbol_v
module Pnfs_t = Peptideca_nterminal_fragmented_symbol_t
module Pnfs_v = Peptideca_nterminal_fragmented_symbol_v
module Pnss_t = Peptideca_nterminal_segmented_symbol_t
module Pnss_v = Peptideca_nterminal_segmented_symbol_v
module Pns_t = Peptideca_nterminal_symbol_t
module Pns_v = Peptideca_nterminal_symbol_v
module Prs_t = Protein_symbol_t
module Prs_v = Protein_symbol_v
module Pss_t = Polypeptide_sidegroup_symbol_t
module Pss_v = Polypeptide_sidegroup_symbol_v
module Pus_t = Purine_base_symbol_t
module Pus_v = Purine_base_symbol_v
module Pys_t = Pyrimidine_base_symbol_t
module Pys_v = Pyrimidine_base_symbol_v
module Rbfs_t = Residue_buried_fragmented_symbol_t
module Rbfs_v = Residue_buried_fragmented_symbol_v
module Rbss_t = Residue_buried_segmented_symbol_t
module Rbss_v = Residue_buried_segmented_symbol_v
module Rbs_t = Residue_buried_symbol_t
module Rbs_v = Residue_buried_symbol_v
module Rncs_t = Ribonucleotide_symbol_t
module Rncs_v = Ribonucleotide_symbol_v
module Rnfs_t = Residue_nterminal_fragmented_symbol_t
module Rnfs_v = Residue_nterminal_fragmented_symbol_v
module Rnss_t = Residue_nterminal_segmented_symbol_t
module Rnss_v = Residue_nterminal_segmented_symbol_v
module Rns_t = Residue_nterminal_symbol_t
module Rns_v = Residue_nterminal_symbol_v
module Rpus_t = Ribonucleotide_purinic_symbol_t
module Rpus_v = Ribonucleotide_purinic_symbol_v
module Rpys_t = Ribonucleotide_pyrimidinic_symbol_t
module Rpys_v = Ribonucleotide_pyrimidinic_symbol_v
module Rss_t = Residue_symbol_t
module Rss_v = Residue_symbol_v
module Sbs_t = Segment_buried_symbol_t
module Sbs_v = Segment_buried_symbol_v
module Shs_t = Segment_head_symbol_t
module Shs_v = Segment_head_symbol_v
module Sms_t = Segment_symbol_t
module Sms_v = Segment_symbol_v
module Str_v = String_v

(** {6 Displaying.} *)

let name = function
  | Css_t.Aggregate_symbol smb_agg -> 
      Ags_v.name smb_agg
  | Css_t.Atom_symbol smb_atm -> 
      Ats_v.name smb_atm
  | Css_t.Block_symbol smb_blk -> 
      Bls_v.name smb_blk
  | Css_t.Bond_symbol smb_bnd -> 
      Bns_v.name smb_bnd
  | Css_t.Box_symbol smb_box -> 
      Bxs_v.name smb_box
  | Css_t.Bridge_symbol smb_brg -> 
      Brs_v.name smb_brg
  | Css_t.Chain_symbol smb_chn -> 
      Chs_v.name smb_chn
  | Css_t.Cluster_symbol smb_clr -> 
      Cls_v.name smb_clr
  | Css_t.Cterminal_subunit_symbol smb_cts -> 
      Ctss_v.name smb_cts
  | Css_t.Fragment_symbol smb_frg -> 
      Frs_v.name smb_frg
  | Css_t.Grouping_symbol smb_grp -> 
      Grs_v.name smb_grp
  | Css_t.Mendeleev_symbol smb_mnd -> 
      Mns_v.name smb_mnd
  | Css_t.Molecule_aminoacid_symbol smb_mam -> 
      Mas_v.name smb_mam
  | Css_t.Molecule_aminoacid_olc_symbol smb_amo -> 
      Maos_v.name smb_amo
  | Css_t.Molecule_aminoacid_tlc_symbol smb_amt -> 
      Mats_v.name smb_amt
  | Css_t.Molecule_symbol smb_mol -> 
      Mos_v.name smb_mol
  | Css_t.Nitrogenous_base_symbol smb_nbs -> 
      Nbs_v.name smb_nbs
  | Css_t.Nucleoside_symbol smb_ncs -> 
      Nss_v.name smb_ncs
  | Css_t.Nucleotide_symbol smb_nct -> 
      Nts_v.name smb_nct
  | Css_t.Peptideca_symbol smb_pca -> 
      Pas_v.name smb_pca
  | Css_t.Polypeptide_sidegroup_symbol smb_pls -> 
      Pss_v.name smb_pls
  | Css_t.Residue_symbol smb_res -> 
      Rss_v.name smb_res
  | Css_t.Segment_symbol smb_seg -> 
      Sms_v.name smb_seg
;;

let print ppf = function
  | Css_t.Aggregate_symbol smb_agg -> 
      Ags_v.print ppf smb_agg
  | Css_t.Atom_symbol smb_atm -> 
      Ats_v.print ppf smb_atm
  | Css_t.Block_symbol smb_blk -> 
      Bls_v.print ppf smb_blk
  | Css_t.Bond_symbol smb_bnd -> 
      Bns_v.print ppf smb_bnd
  | Css_t.Box_symbol smb_box -> 
      Bxs_v.print ppf smb_box
  | Css_t.Bridge_symbol smb_brg -> 
      Brs_v.print ppf smb_brg
  | Css_t.Chain_symbol smb_chn -> 
      Chs_v.print ppf smb_chn
  | Css_t.Cluster_symbol smb_clr -> 
      Cls_v.print ppf smb_clr
  | Css_t.Cterminal_subunit_symbol smb_cts -> 
      Ctss_v.print ppf smb_cts
  | Css_t.Fragment_symbol smb_frg -> 
      Frs_v.print ppf smb_frg
  | Css_t.Grouping_symbol smb_grp -> 
      Grs_v.print ppf smb_grp
  | Css_t.Mendeleev_symbol smb_mnd -> 
      Mns_v.print ppf smb_mnd
  | Css_t.Molecule_aminoacid_symbol smb_mam -> 
      Mas_v.print ppf smb_mam
  | Css_t.Molecule_aminoacid_olc_symbol smb_amo -> 
      Maos_v.print ppf smb_amo
  | Css_t.Molecule_aminoacid_tlc_symbol smb_amt -> 
      Mats_v.print ppf smb_amt
  | Css_t.Molecule_symbol smb_mol -> 
      Mos_v.print ppf smb_mol
  | Css_t.Nitrogenous_base_symbol smb_nbs -> 
      Nbs_v.print ppf smb_nbs
  | Css_t.Nucleoside_symbol smb_ncs -> 
      Nss_v.print ppf smb_ncs
  | Css_t.Nucleotide_symbol smb_nct -> 
      Nts_v.print ppf smb_nct
  | Css_t.Peptideca_symbol smb_pca -> 
      Pas_v.print ppf smb_pca
  | Css_t.Polypeptide_sidegroup_symbol smb_pls -> 
      Pss_v.print ppf smb_pls
  | Css_t.Residue_symbol smb_res -> 
      Rss_v.print ppf smb_res
  | Css_t.Segment_symbol smb_seg -> 
      Sms_v.print ppf smb_seg
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found chemicalset_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Aggregate from Chemicalset.} *)

let aggregate_symbol_off_chemicalset_symbol = function
  | Css_t.Aggregate_symbol smb_agg -> smb_agg
  | s ->  print_fatal_error
      "aggregate_symbol_off_chemicalset_symbol"
      "Aggregate_symbol" (name s)
;;

(** {9 Extracting Doublet_string_ordinal from Aggregate from Chemicalset.} *)

(* No Extraction from doublet_string_ordinal d. *)

(** {6 Extracting Atom from Chemicalset.} *)

let atom_symbol_off_chemicalset_symbol = function
  | Css_t.Atom_symbol smb_atm -> smb_atm
  | s ->  print_fatal_error
      "atom_symbol_off_chemicalset_symbol"
      "Atom_symbol" (name s)
;;

(** {9 Extracting Atom_zerotied from Atom from Chemicalset.} *)

let atom_zerotied_symbol_off_chemicalset_symbol smb_chs =
  let smb_atm = atom_symbol_off_chemicalset_symbol smb_chs in
    Ats_v.atom_zerotied_symbol_off_atom_symbol smb_atm
;;

(** {12 Extracting Atom_zerotied_raregas from Atom_zerotied from Atom from Chemicalset.} *)

let atom_zerotied_raregas_symbol_off_chemicalset_symbol smb_chs =
  let smb_aze = atom_zerotied_symbol_off_chemicalset_symbol smb_chs in
    Azes_v.atom_zerotied_raregas_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Atom_zerotied_anion from Atom_zerotied from Atom from Chemicalset.} *)

let atom_zerotied_anion_symbol_off_chemicalset_symbol smb_chs =
  let smb_aze = atom_zerotied_symbol_off_chemicalset_symbol smb_chs in
    Azes_v.atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Atom_zerotied_cation from Atom_zerotied from Atom from Chemicalset.} *)

let atom_zerotied_cation_symbol_off_chemicalset_symbol smb_chs =
  let smb_aze = atom_zerotied_symbol_off_chemicalset_symbol smb_chs in
    Azes_v.atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Halfbridge from Atom_zerotied from Atom from Chemicalset.} *)

let halfbridge_symbol_off_chemicalset_symbol smb_chs =
  let smb_aze = atom_zerotied_symbol_off_chemicalset_symbol smb_chs in
    Azes_v.halfbridge_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {9 Extracting Atom_onetied from Atom from Chemicalset.} *)

let atom_onetied_symbol_off_chemicalset_symbol smb_chs =
  let smb_atm = atom_symbol_off_chemicalset_symbol smb_chs in
    Ats_v.atom_onetied_symbol_off_atom_symbol smb_atm
;;

(** {12 Extracting Atom_onetied_conjugated from Atom_onetied from Atom from Chemicalset.} *)

let atom_onetied_conjugated_symbol_off_chemicalset_symbol smb_chs =
  let smb_aon = atom_onetied_symbol_off_chemicalset_symbol smb_chs in
    Aons_v.atom_onetied_conjugated_symbol_off_atom_onetied_symbol smb_aon
;;

(** {12 Extracting Atom_onetied_double from Atom_onetied from Atom from Chemicalset.} *)

let atom_onetied_double_symbol_off_chemicalset_symbol smb_chs =
  let smb_aon = atom_onetied_symbol_off_chemicalset_symbol smb_chs in
    Aons_v.atom_onetied_double_symbol_off_atom_onetied_symbol smb_aon
;;

(** {12 Extracting Atom_onetied_single from Atom_onetied from Atom from Chemicalset.} *)

let atom_onetied_single_symbol_off_chemicalset_symbol smb_chs =
  let smb_aon = atom_onetied_symbol_off_chemicalset_symbol smb_chs in
    Aons_v.atom_onetied_single_symbol_off_atom_onetied_symbol smb_aon
;;

(** {12 Extracting Atom_onetied_triple from Atom_onetied from Atom from Chemicalset.} *)

let atom_onetied_triple_symbol_off_chemicalset_symbol smb_chs =
  let smb_aon = atom_onetied_symbol_off_chemicalset_symbol smb_chs in
    Aons_v.atom_onetied_triple_symbol_off_atom_onetied_symbol smb_aon
;;

(** {9 Extracting Atom_twotied from Atom from Chemicalset.} *)

let atom_twotied_symbol_off_chemicalset_symbol smb_chs =
  let smb_atm = atom_symbol_off_chemicalset_symbol smb_chs in
    Ats_v.atom_twotied_symbol_off_atom_symbol smb_atm
;;

(** {12 Extracting Atom_twotied_single_single from Atom_twotied from Atom from Chemicalset.} *)

let atom_twotied_single_single_symbol_off_chemicalset_symbol smb_chs =
  let smb_atw = atom_twotied_symbol_off_chemicalset_symbol smb_chs in
    Atws_v.atom_twotied_single_single_symbol_off_atom_twotied_symbol smb_atw
;;

(** {12 Extracting Atom_twotied_single_conjugated from Atom_twotied from Atom from Chemicalset.} *)

let atom_twotied_single_conjugated_symbol_off_chemicalset_symbol smb_chs =
  let smb_atw = atom_twotied_symbol_off_chemicalset_symbol smb_chs in
    Atws_v.atom_twotied_single_conjugated_symbol_off_atom_twotied_symbol smb_atw
;;

(** {12 Extracting Atom_twotied_single_double from Atom_twotied from Atom from Chemicalset.} *)

let atom_twotied_single_double_symbol_off_chemicalset_symbol smb_chs =
  let smb_atw = atom_twotied_symbol_off_chemicalset_symbol smb_chs in
    Atws_v.atom_twotied_single_double_symbol_off_atom_twotied_symbol smb_atw
;;

(** {12 Extracting Atom_twotied_single_triple from Atom_twotied from Atom from Chemicalset.} *)

let atom_twotied_single_triple_symbol_off_chemicalset_symbol smb_chs =
  let smb_atw = atom_twotied_symbol_off_chemicalset_symbol smb_chs in
    Atws_v.atom_twotied_single_triple_symbol_off_atom_twotied_symbol smb_atw
;;

(** {12 Extracting Atom_twotied_conjugated_conjugated from Atom_twotied from Atom from Chemicalset.} *)

let atom_twotied_conjugated_conjugated_symbol_off_chemicalset_symbol smb_chs =
  let smb_atw = atom_twotied_symbol_off_chemicalset_symbol smb_chs in
    Atws_v.atom_twotied_conjugated_conjugated_symbol_off_atom_twotied_symbol smb_atw
;;

(** {12 Extracting Atom_twotied_conjugated_double from Atom_twotied from Atom from Chemicalset.} *)

let atom_twotied_conjugated_double_symbol_off_chemicalset_symbol smb_chs =
  let smb_atw = atom_twotied_symbol_off_chemicalset_symbol smb_chs in
    Atws_v.atom_twotied_conjugated_double_symbol_off_atom_twotied_symbol smb_atw
;;

(** {12 Extracting Atom_twotied_double_double from Atom_twotied from Atom from Chemicalset.} *)

let atom_twotied_double_double_symbol_off_chemicalset_symbol smb_chs =
  let smb_atw = atom_twotied_symbol_off_chemicalset_symbol smb_chs in
    Atws_v.atom_twotied_double_double_symbol_off_atom_twotied_symbol smb_atw
;;

(** {9 Extracting Atom_threetied from Atom from Chemicalset.} *)

let atom_threetied_symbol_off_chemicalset_symbol smb_chs =
  let smb_atm = atom_symbol_off_chemicalset_symbol smb_chs in
    Ats_v.atom_threetied_symbol_off_atom_symbol smb_atm
;;

(** {12 Extracting Atom_threetied_single_single_single from Atom_threetied from Atom from Chemicalset.} *)

let atom_threetied_single_single_single_symbol_off_chemicalset_symbol smb_chs =
  let smb_ath = atom_threetied_symbol_off_chemicalset_symbol smb_chs in
    Aths_v.atom_threetied_single_single_single_symbol_off_atom_threetied_symbol smb_ath
;;

(** {12 Extracting Atom_threetied_single_single_double from Atom_threetied from Atom from Chemicalset.} *)

let atom_threetied_single_single_double_symbol_off_chemicalset_symbol smb_chs =
  let smb_ath = atom_threetied_symbol_off_chemicalset_symbol smb_chs in
    Aths_v.atom_threetied_single_single_double_symbol_off_atom_threetied_symbol smb_ath
;;

(** {12 Extracting Atom_threetied_single_conjugated_conjugated from Atom_threetied from Atom from Chemicalset.} *)

let atom_threetied_single_conjugated_conjugated_symbol_off_chemicalset_symbol smb_chs =
  let smb_ath = atom_threetied_symbol_off_chemicalset_symbol smb_chs in
    Aths_v.atom_threetied_single_conjugated_conjugated_symbol_off_atom_threetied_symbol smb_ath
;;

(** {12 Extracting Atom_threetied_conjugated_conjugated_conjugated from Atom_threetied from Atom from Chemicalset.} *)

let atom_threetied_conjugated_conjugated_conjugated_symbol_off_chemicalset_symbol smb_chs =
  let smb_ath = atom_threetied_symbol_off_chemicalset_symbol smb_chs in
    Aths_v.atom_threetied_conjugated_conjugated_conjugated_symbol_off_atom_threetied_symbol smb_ath
;;

(** {12 Extracting Atom_threetied_double_double_double from Atom_threetied from Atom from Chemicalset.} *)

let atom_threetied_double_double_double_symbol_off_chemicalset_symbol smb_chs =
  let smb_ath = atom_threetied_symbol_off_chemicalset_symbol smb_chs in
    Aths_v.atom_threetied_double_double_double_symbol_off_atom_threetied_symbol smb_ath
;;

(** {9 Extracting Atom_fourtied from Atom from Chemicalset.} *)

let atom_fourtied_symbol_off_chemicalset_symbol smb_chs =
  let smb_atm = atom_symbol_off_chemicalset_symbol smb_chs in
    Ats_v.atom_fourtied_symbol_off_atom_symbol smb_atm
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

let atom_fivetied_symbol_off_chemicalset_symbol smb_chs =
  let smb_atm = atom_symbol_off_chemicalset_symbol smb_chs in
    Ats_v.atom_fivetied_symbol_off_atom_symbol smb_atm
;;

(** {12 Extracting Cl_5s from Atom_fivetied from Atom from Chemicalset.} *)

(* No Extraction from cl_5s 0. *)

(** {9 Extracting Atom_sixtied from Atom from Chemicalset.} *)

let atom_sixtied_symbol_off_chemicalset_symbol smb_chs =
  let smb_atm = atom_symbol_off_chemicalset_symbol smb_chs in
    Ats_v.atom_sixtied_symbol_off_atom_symbol smb_atm
;;

(** {12 Extracting S_6s from Atom_sixtied from Atom from Chemicalset.} *)

(* No Extraction from s_6s 0. *)

(** {6 Extracting Block from Chemicalset.} *)

let block_symbol_off_chemicalset_symbol = function
  | Css_t.Block_symbol smb_blk -> smb_blk
  | s ->  print_fatal_error
      "block_symbol_off_chemicalset_symbol"
      "Block_symbol" (name s)
;;

(** {9 Extracting Block_zerozero from Block from Chemicalset.} *)

let block_zerozero_symbol_off_chemicalset_symbol smb_chs =
  let smb_blk = block_symbol_off_chemicalset_symbol smb_chs in
    Bls_v.block_zerozero_symbol_off_block_symbol smb_blk
;;

(** {12 Extracting Atom_zerotied from Block_zerozero from Block from Chemicalset.} *)

let atom_zerotied_symbol_off_chemicalset_symbol smb_chs =
  let smb_bzz = block_zerozero_symbol_off_chemicalset_symbol smb_chs in
    Bzzs_v.atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz
;;

(** {12 Extracting Block_zerozero_diatomic from Block_zerozero from Block from Chemicalset.} *)

let block_zerozero_diatomic_symbol_off_chemicalset_symbol smb_chs =
  let smb_bzz = block_zerozero_symbol_off_chemicalset_symbol smb_chs in
    Bzzs_v.block_zerozero_diatomic_symbol_off_block_zerozero_symbol smb_bzz
;;

(** {12 Extracting Block_zerozero_triatomic from Block_zerozero from Block from Chemicalset.} *)

let block_zerozero_triatomic_symbol_off_chemicalset_symbol smb_chs =
  let smb_bzz = block_zerozero_symbol_off_chemicalset_symbol smb_chs in
    Bzzs_v.block_zerozero_triatomic_symbol_off_block_zerozero_symbol smb_bzz
;;

(** {12 Extracting Block_zerozero_tetratomic from Block_zerozero from Block from Chemicalset.} *)

let block_zerozero_tetratomic_symbol_off_chemicalset_symbol smb_chs =
  let smb_bzz = block_zerozero_symbol_off_chemicalset_symbol smb_chs in
    Bzzs_v.block_zerozero_tetratomic_symbol_off_block_zerozero_symbol smb_bzz
;;

(** {12 Extracting Block_zerozero_pentatomic from Block_zerozero from Block from Chemicalset.} *)

let block_zerozero_pentatomic_symbol_off_chemicalset_symbol smb_chs =
  let smb_bzz = block_zerozero_symbol_off_chemicalset_symbol smb_chs in
    Bzzs_v.block_zerozero_pentatomic_symbol_off_block_zerozero_symbol smb_bzz
;;

(** {9 Extracting Block_zeroone from Block from Chemicalset.} *)

let block_zeroone_symbol_off_chemicalset_symbol smb_chs =
  let smb_blk = block_symbol_off_chemicalset_symbol smb_chs in
    Bls_v.block_zeroone_symbol_off_block_symbol smb_blk
;;

(** {12 Extracting Block_zeroonesingle from Block_zeroone from Block from Chemicalset.} *)

let block_zeroonesingle_symbol_off_chemicalset_symbol smb_chs =
  let smb_bzo = block_zeroone_symbol_off_chemicalset_symbol smb_chs in
    Bzos_v.block_zeroonesingle_symbol_off_block_zeroone_symbol smb_bzo
;;

(** {12 Extracting Block_zeroonedouble from Block_zeroone from Block from Chemicalset.} *)

let block_zeroonedouble_symbol_off_chemicalset_symbol smb_chs =
  let smb_bzo = block_zeroone_symbol_off_chemicalset_symbol smb_chs in
    Bzos_v.block_zeroonedouble_symbol_off_block_zeroone_symbol smb_bzo
;;

(** {12 Extracting Block_zeroonetriple from Block_zeroone from Block from Chemicalset.} *)

let block_zeroonetriple_symbol_off_chemicalset_symbol smb_chs =
  let smb_bzo = block_zeroone_symbol_off_chemicalset_symbol smb_chs in
    Bzos_v.block_zeroonetriple_symbol_off_block_zeroone_symbol smb_bzo
;;

(** {12 Extracting Block_zeroonehalfbridge from Block_zeroone from Block from Chemicalset.} *)

(* No Extraction from block_zeroonehalfbridge 0. *)

(** {9 Extracting Block_zerofork from Block from Chemicalset.} *)

let block_zerofork_symbol_off_chemicalset_symbol smb_chs =
  let smb_blk = block_symbol_off_chemicalset_symbol smb_chs in
    Bls_v.block_zerofork_symbol_off_block_symbol smb_blk
;;

(** {12 Extracting Block_zerobifork from Block_zerofork from Block from Chemicalset.} *)

let block_zerobifork_symbol_off_chemicalset_symbol smb_chs =
  let smb_bzf = block_zerofork_symbol_off_chemicalset_symbol smb_chs in
    Bzfs_v.block_zerobifork_symbol_off_block_zerofork_symbol smb_bzf
;;

(** {12 Extracting Block_zerotrifork from Block_zerofork from Block from Chemicalset.} *)

let block_zerotrifork_symbol_off_chemicalset_symbol smb_chs =
  let smb_bzf = block_zerofork_symbol_off_chemicalset_symbol smb_chs in
    Bzfs_v.block_zerotrifork_symbol_off_block_zerofork_symbol smb_bzf
;;

(** {12 Extracting Block_zeroquadrifork from Block_zerofork from Block from Chemicalset.} *)

let block_zeroquadrifork_symbol_off_chemicalset_symbol smb_chs =
  let smb_bzf = block_zerofork_symbol_off_chemicalset_symbol smb_chs in
    Bzfs_v.block_zeroquadrifork_symbol_off_block_zerofork_symbol smb_bzf
;;

(** {9 Extracting Block_oneone from Block from Chemicalset.} *)

let block_oneone_symbol_off_chemicalset_symbol smb_chs =
  let smb_blk = block_symbol_off_chemicalset_symbol smb_chs in
    Bls_v.block_oneone_symbol_off_block_symbol smb_blk
;;

(** {12 Extracting Block_onesingleonesingle from Block_oneone from Block from Chemicalset.} *)

let block_onesingleonesingle_symbol_off_chemicalset_symbol smb_chs =
  let smb_boo = block_oneone_symbol_off_chemicalset_symbol smb_chs in
    Boos_v.block_onesingleonesingle_symbol_off_block_oneone_symbol smb_boo
;;

(** {12 Extracting Block_onesingleonedouble from Block_oneone from Block from Chemicalset.} *)

let block_onesingleonedouble_symbol_off_chemicalset_symbol smb_chs =
  let smb_boo = block_oneone_symbol_off_chemicalset_symbol smb_chs in
    Boos_v.block_onesingleonedouble_symbol_off_block_oneone_symbol smb_boo
;;

(** {12 Extracting Block_onesingleonetriple from Block_oneone from Block from Chemicalset.} *)

let block_onesingleonetriple_symbol_off_chemicalset_symbol smb_chs =
  let smb_boo = block_oneone_symbol_off_chemicalset_symbol smb_chs in
    Boos_v.block_onesingleonetriple_symbol_off_block_oneone_symbol smb_boo
;;

(** {12 Extracting Block_onedoubleonesingle from Block_oneone from Block from Chemicalset.} *)

let block_onedoubleonesingle_symbol_off_chemicalset_symbol smb_chs =
  let smb_boo = block_oneone_symbol_off_chemicalset_symbol smb_chs in
    Boos_v.block_onedoubleonesingle_symbol_off_block_oneone_symbol smb_boo
;;

(** {12 Extracting Block_onedoubleonedouble from Block_oneone from Block from Chemicalset.} *)

let block_onedoubleonedouble_symbol_off_chemicalset_symbol smb_chs =
  let smb_boo = block_oneone_symbol_off_chemicalset_symbol smb_chs in
    Boos_v.block_onedoubleonedouble_symbol_off_block_oneone_symbol smb_boo
;;

(** {12 Extracting Block_onetripleonesingle from Block_oneone from Block from Chemicalset.} *)

let block_onetripleonesingle_symbol_off_chemicalset_symbol smb_chs =
  let smb_boo = block_oneone_symbol_off_chemicalset_symbol smb_chs in
    Boos_v.block_onetripleonesingle_symbol_off_block_oneone_symbol smb_boo
;;

(** {9 Extracting Block_oneend from Block from Chemicalset.} *)

let block_oneend_symbol_off_chemicalset_symbol smb_chs =
  let smb_blk = block_symbol_off_chemicalset_symbol smb_chs in
    Bls_v.block_oneend_symbol_off_block_symbol smb_blk
;;

(** {12 Extracting Block_onefork from Block_oneend from Block from Chemicalset.} *)

let block_onefork_symbol_off_chemicalset_symbol smb_chs =
  let smb_boe = block_oneend_symbol_off_chemicalset_symbol smb_chs in
    Boes_v.block_onefork_symbol_off_block_oneend_symbol smb_boe
;;

(** {12 Extracting Block_onezero from Block_oneend from Block from Chemicalset.} *)

let block_onezero_symbol_off_chemicalset_symbol smb_chs =
  let smb_boe = block_oneend_symbol_off_chemicalset_symbol smb_chs in
    Boes_v.block_onezero_symbol_off_block_oneend_symbol smb_boe
;;

(** {6 Extracting Bond from Chemicalset.} *)

let bond_symbol_off_chemicalset_symbol = function
  | Css_t.Bond_symbol smb_bnd -> smb_bnd
  | s ->  print_fatal_error
      "bond_symbol_off_chemicalset_symbol"
      "Bond_symbol" (name s)
;;

(** {9 Extracting Bond_covalent from Bond from Chemicalset.} *)

(* No Extraction from bond_covalent 0. *)

(** {9 Extracting Bond_hydrogen from Bond from Chemicalset.} *)

(* No Extraction from bond_hydrogen 0. *)

(** {9 Extracting Bond_ionic from Bond from Chemicalset.} *)

(* No Extraction from bond_ionic 0. *)

(** {6 Extracting Box from Chemicalset.} *)

let box_symbol_off_chemicalset_symbol = function
  | Css_t.Box_symbol smb_box -> smb_box
  | s ->  print_fatal_error
      "box_symbol_off_chemicalset_symbol"
      "Box_symbol" (name s)
;;

(** {9 Extracting String from Box from Chemicalset.} *)

let box_string_off_chemicalset_symbol smb_chs =
  let smb_box = box_symbol_off_chemicalset_symbol smb_chs in
    Bxs_v.box_string_off_box_symbol smb_box
;;

(** {9 Extracting Protein from Box from Chemicalset.} *)

let protein_symbol_off_chemicalset_symbol smb_chs =
  let smb_box = box_symbol_off_chemicalset_symbol smb_chs in
    Bxs_v.protein_symbol_off_box_symbol smb_box
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

let protein_string_off_chemicalset_symbol smb_chs =
  let smb_prn = protein_symbol_off_chemicalset_symbol smb_chs in
    Prs_v.protein_string_off_protein_symbol smb_prn
;;

(** {6 Extracting Bridge from Chemicalset.} *)

let bridge_symbol_off_chemicalset_symbol = function
  | Css_t.Bridge_symbol smb_brg -> smb_brg
  | s ->  print_fatal_error
      "bridge_symbol_off_chemicalset_symbol"
      "Bridge_symbol" (name s)
;;

(** {9 Extracting Bc from Bridge from Chemicalset.} *)

(* No Extraction from Bc 0. *)

(** {9 Extracting Bd from Bridge from Chemicalset.} *)

(* No Extraction from Bd 0. *)

(** {9 Extracting Bs from Bridge from Chemicalset.} *)

(* No Extraction from Bs 0. *)

(** {6 Extracting Chain from Chemicalset.} *)

let chain_symbol_off_chemicalset_symbol = function
  | Css_t.Chain_symbol smb_chn -> smb_chn
  | s ->  print_fatal_error
      "chain_symbol_off_chemicalset_symbol"
      "Chain_symbol" (name s)
;;

(** {9 Extracting Blank from Chain from Chemicalset.} *)

(* No Extraction from Blank 0. *)

(** {9 Extracting A from Chain from Chemicalset.} *)

(* No Extraction from A 0. *)

(** {9 Extracting B from Chain from Chemicalset.} *)

(* No Extraction from B 0. *)

(** {9 Extracting C from Chain from Chemicalset.} *)

(* No Extraction from C 0. *)

(** {9 Extracting D from Chain from Chemicalset.} *)

(* No Extraction from D 0. *)

(** {9 Extracting E from Chain from Chemicalset.} *)

(* No Extraction from E 0. *)

(** {9 Extracting F from Chain from Chemicalset.} *)

(* No Extraction from F 0. *)

(** {9 Extracting G from Chain from Chemicalset.} *)

(* No Extraction from G 0. *)

(** {9 Extracting H from Chain from Chemicalset.} *)

(* No Extraction from H 0. *)

(** {6 Extracting Cluster from Chemicalset.} *)

let cluster_symbol_off_chemicalset_symbol = function
  | Css_t.Cluster_symbol smb_clr -> smb_clr
  | s ->  print_fatal_error
      "cluster_symbol_off_chemicalset_symbol"
      "Cluster_symbol" (name s)
;;

(** {9 Extracting Doublet_string_ordinal from Cluster from Chemicalset.} *)

(* No Extraction from doublet_string_ordinal d. *)

(** {6 Extracting Cterminal_subunit from Chemicalset.} *)

let cterminal_subunit_symbol_off_chemicalset_symbol = function
  | Css_t.Cterminal_subunit_symbol smb_cts -> smb_cts
  | s ->  print_fatal_error
      "cterminal_subunit_symbol_off_chemicalset_symbol"
      "Cterminal_subunit_symbol" (name s)
;;

(** {9 Extracting Carboxyl_leftextended from Cterminal_subunit from Chemicalset.} *)

(* No Extraction from Carboxyl_leftextended 0. *)

(** {9 Extracting Carboxylate_leftextended from Cterminal_subunit from Chemicalset.} *)

(* No Extraction from Carboxylate_leftextended 0. *)

(** {6 Extracting Fragment from Chemicalset.} *)

let fragment_symbol_off_chemicalset_symbol = function
  | Css_t.Fragment_symbol smb_frg -> smb_frg
  | s ->  print_fatal_error
      "fragment_symbol_off_chemicalset_symbol"
      "Fragment_symbol" (name s)
;;

(** {9 Extracting Fragment_closed from Fragment from Chemicalset.} *)

let fragment_closed_symbol_off_chemicalset_symbol smb_chs =
  let smb_frg = fragment_symbol_off_chemicalset_symbol smb_chs in
    Frs_v.fragment_closed_symbol_off_fragment_symbol smb_frg
;;

(** {12 Extracting Fragment_zerozero from Fragment_closed from Fragment from Chemicalset.} *)

(* No Extraction from fragment_zerozero 0. *)

(** {12 Extracting Block_zerozero from Fragment_closed from Fragment from Chemicalset.} *)

let block_zerozero_symbol_off_chemicalset_symbol smb_chs =
  let smb_frc = fragment_closed_symbol_off_chemicalset_symbol smb_chs in
    Fcs_v.block_zerozero_symbol_off_fragment_closed_symbol smb_frc
;;

(** {12 Extracting Segment_head_extends_fragment_leaf from Fragment_closed from Fragment from Chemicalset.} *)

(* No Extraction from segment_head_extends_fragment_leaf 0. *)

(** {9 Extracting Fragment_head from Fragment from Chemicalset.} *)

let fragment_head_symbol_off_chemicalset_symbol smb_chs =
  let smb_frg = fragment_symbol_off_chemicalset_symbol smb_chs in
    Frs_v.fragment_head_symbol_off_fragment_symbol smb_frg
;;

(** {12 Extracting Fragment_head_halfbridge from Fragment_head from Fragment from Chemicalset.} *)

(* No Extraction from fragment_head_halfbridge 0. *)

(** {12 Extracting Block_zerofork from Fragment_head from Fragment from Chemicalset.} *)

let block_zerofork_symbol_off_chemicalset_symbol smb_chs =
  let smb_frh = fragment_head_symbol_off_chemicalset_symbol smb_chs in
    Fhs_v.block_zerofork_symbol_off_fragment_head_symbol smb_frh
;;

(** {12 Extracting Fragment_zerofork from Fragment_head from Fragment from Chemicalset.} *)

(* No Extraction from fragment_zerofork 0. *)

(** {12 Extracting Segment_head_extends_fragment_buried from Fragment_head from Fragment from Chemicalset.} *)

(* No Extraction from segment_head_extends_fragment_buried 0. *)

(** {9 Extracting Fragment_buried from Fragment from Chemicalset.} *)

let fragment_buried_symbol_off_chemicalset_symbol smb_chs =
  let smb_frg = fragment_symbol_off_chemicalset_symbol smb_chs in
    Frs_v.fragment_buried_symbol_off_fragment_symbol smb_frg
;;

(** {12 Extracting Fragment_onefork from Fragment_buried from Fragment from Chemicalset.} *)

(* No Extraction from fragment_onefork 0. *)

(** {12 Extracting Block_onefork from Fragment_buried from Fragment from Chemicalset.} *)

let block_onefork_symbol_off_chemicalset_symbol smb_chs =
  let smb_frb = fragment_buried_symbol_off_chemicalset_symbol smb_chs in
    Fbs_v.block_onefork_symbol_off_fragment_buried_symbol smb_frb
;;

(** {12 Extracting Polysegment_buried_leftextended from Fragment_buried from Fragment from Chemicalset.} *)

(* No Extraction from polysegment_buried_leftextended 0. *)

(** {9 Extracting Fragment_leaf from Fragment from Chemicalset.} *)

let fragment_leaf_symbol_off_chemicalset_symbol smb_chs =
  let smb_frg = fragment_symbol_off_chemicalset_symbol smb_chs in
    Frs_v.fragment_leaf_symbol_off_fragment_symbol smb_frg
;;

(** {12 Extracting Fragment_halfbridgetail from Fragment_leaf from Fragment from Chemicalset.} *)

(* No Extraction from fragment_halfbridgetail 0. *)

(** {12 Extracting Fragment_halfbridge from Fragment_leaf from Fragment from Chemicalset.} *)

(* No Extraction from fragment_halfbridge 0. *)

(** {12 Extracting Block_zerofork from Fragment_leaf from Fragment from Chemicalset.} *)

let block_zerofork_symbol_off_chemicalset_symbol smb_chs =
  let smb_frl = fragment_leaf_symbol_off_chemicalset_symbol smb_chs in
    Frls_v.block_zerofork_symbol_off_fragment_leaf_symbol smb_frl
;;

(** {12 Extracting Fragment_zerofork from Fragment_leaf from Fragment from Chemicalset.} *)

(* No Extraction from fragment_zerofork 0. *)

(** {12 Extracting Segment_head_extends_fragment_buried from Fragment_leaf from Fragment from Chemicalset.} *)

(* No Extraction from segment_head_extends_fragment_buried 0. *)

(** {6 Extracting Grouping from Chemicalset.} *)

let grouping_symbol_off_chemicalset_symbol = function
  | Css_t.Grouping_symbol smb_grp -> smb_grp
  | s ->  print_fatal_error
      "grouping_symbol_off_chemicalset_symbol"
      "Grouping_symbol" (name s)
;;

(** {9 Extracting Empty from Grouping from Chemicalset.} *)

(* No Extraction from empty 0. *)

(** {9 Extracting Fragment_leaf from Grouping from Chemicalset.} *)

let fragment_leaf_symbol_off_chemicalset_symbol smb_chs =
  let smb_grp = grouping_symbol_off_chemicalset_symbol smb_chs in
    Grs_v.fragment_leaf_symbol_off_grouping_symbol smb_grp
;;

(** {12 Extracting Fragment_halfbridgetail from Fragment_leaf from Grouping from Chemicalset.} *)

(* No Extraction from fragment_halfbridgetail 0. *)

(** {12 Extracting Fragment_halfbridge from Fragment_leaf from Grouping from Chemicalset.} *)

(* No Extraction from fragment_halfbridge 0. *)

(** {12 Extracting Block_zerofork from Fragment_leaf from Grouping from Chemicalset.} *)

let block_zerofork_symbol_off_chemicalset_symbol smb_chs =
  let smb_frl = fragment_leaf_symbol_off_chemicalset_symbol smb_chs in
    Frls_v.block_zerofork_symbol_off_fragment_leaf_symbol smb_frl
;;

(** {12 Extracting Fragment_zerofork from Fragment_leaf from Grouping from Chemicalset.} *)

(* No Extraction from fragment_zerofork 0. *)

(** {12 Extracting Segment_head_extends_fragment_buried from Fragment_leaf from Grouping from Chemicalset.} *)

(* No Extraction from segment_head_extends_fragment_buried 0. *)

(** {9 Extracting Grouping_polyfragment from Grouping from Chemicalset.} *)

let grouping_polyfragment_symbol_off_chemicalset_symbol smb_chs =
  let smb_grp = grouping_symbol_off_chemicalset_symbol smb_chs in
    Grs_v.grouping_polyfragment_symbol_off_grouping_symbol smb_grp
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

let grouping_bridged_symbol_off_chemicalset_symbol smb_chs =
  let smb_grp = grouping_symbol_off_chemicalset_symbol smb_chs in
    Grs_v.grouping_bridged_symbol_off_grouping_symbol smb_grp
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

let mendeleev_symbol_off_chemicalset_symbol = function
  | Css_t.Mendeleev_symbol smb_mnd -> smb_mnd
  | s ->  print_fatal_error
      "mendeleev_symbol_off_chemicalset_symbol"
      "Mendeleev_symbol" (name s)
;;

(** {9 Extracting Hand from Mendeleev from Chemicalset.} *)

(* No Extraction from hand h. *)

(** {6 Extracting Molecule_aminoacid from Chemicalset.} *)

let molecule_aminoacid_symbol_off_chemicalset_symbol = function
  | Css_t.Molecule_aminoacid_symbol smb_mam -> smb_mam
  | s ->  print_fatal_error
      "molecule_aminoacid_symbol_off_chemicalset_symbol"
      "Molecule_aminoacid_symbol" (name s)
;;

(** {9 Extracting Molecule_aminoacid_segmented from Molecule_aminoacid from Chemicalset.} *)

let molecule_aminoacid_segmented_symbol_off_chemicalset_symbol smb_chs =
  let smb_mam = molecule_aminoacid_symbol_off_chemicalset_symbol smb_chs in
    Mas_v.molecule_aminoacid_segmented_symbol_off_molecule_aminoacid_symbol smb_mam
;;

(** {12 Extracting Glycine from Molecule_aminoacid_segmented from Molecule_aminoacid from Chemicalset.} *)

(* No Extraction from glycine 0. *)

(** {9 Extracting Molecule_aminoacid_fragmented from Molecule_aminoacid from Chemicalset.} *)

let molecule_aminoacid_fragmented_symbol_off_chemicalset_symbol smb_chs =
  let smb_mam = molecule_aminoacid_symbol_off_chemicalset_symbol smb_chs in
    Mas_v.molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol smb_mam
;;

(** {12 Extracting Pro from Molecule_aminoacid_fragmented from Molecule_aminoacid from Chemicalset.} *)

(* No Extraction from pro 0. *)

(** {12 Extracting Molecule_aminoacid_regular from Molecule_aminoacid_fragmented from Molecule_aminoacid from Chemicalset.} *)

let molecule_aminoacid_regular_symbol_off_chemicalset_symbol smb_chs =
  let smb_maf = molecule_aminoacid_fragmented_symbol_off_chemicalset_symbol smb_chs in
    Mafs_v.molecule_aminoacid_regular_symbol_off_molecule_aminoacid_fragmented_symbol smb_maf
;;

(** {6 Extracting Molecule_aminoacid_olc from Chemicalset.} *)

let molecule_aminoacid_olc_symbol_off_chemicalset_symbol = function
  | Css_t.Molecule_aminoacid_olc_symbol smb_amo -> smb_amo
  | s ->  print_fatal_error
      "molecule_aminoacid_olc_symbol_off_chemicalset_symbol"
      "Molecule_aminoacid_olc_symbol" (name s)
;;

(** {9 Extracting Molecule_aminoacid_segmented_olc from Molecule_aminoacid_olc from Chemicalset.} *)

let molecule_aminoacid_segmented_olc_symbol_off_chemicalset_symbol smb_chs =
  let smb_amo = molecule_aminoacid_olc_symbol_off_chemicalset_symbol smb_chs in
    Maos_v.molecule_aminoacid_segmented_olc_symbol_off_molecule_aminoacid_olc_symbol smb_amo
;;

(** {12 Extracting G from Molecule_aminoacid_segmented_olc from Molecule_aminoacid_olc from Chemicalset.} *)

(* No Extraction from g 0. *)

(** {9 Extracting Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc from Chemicalset.} *)

let molecule_aminoacid_fragmented_olc_symbol_off_chemicalset_symbol smb_chs =
  let smb_amo = molecule_aminoacid_olc_symbol_off_chemicalset_symbol smb_chs in
    Maos_v.molecule_aminoacid_fragmented_olc_symbol_off_molecule_aminoacid_olc_symbol smb_amo
;;

(** {12 Extracting P from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc from Chemicalset.} *)

(* No Extraction from p 0. *)

(** {12 Extracting Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc from Chemicalset.} *)

let molecule_aminoacid_regular_olc_symbol_off_chemicalset_symbol smb_chs =
  let smb_aof = molecule_aminoacid_fragmented_olc_symbol_off_chemicalset_symbol smb_chs in
    Maofs_v.molecule_aminoacid_regular_olc_symbol_off_molecule_aminoacid_fragmented_olc_symbol smb_aof
;;

(** {6 Extracting Molecule_aminoacid_tlc from Chemicalset.} *)

let molecule_aminoacid_tlc_symbol_off_chemicalset_symbol = function
  | Css_t.Molecule_aminoacid_tlc_symbol smb_amt -> smb_amt
  | s ->  print_fatal_error
      "molecule_aminoacid_tlc_symbol_off_chemicalset_symbol"
      "Molecule_aminoacid_tlc_symbol" (name s)
;;

(** {9 Extracting Molecule_aminoacid_segmented_tlc from Molecule_aminoacid_tlc from Chemicalset.} *)

let molecule_aminoacid_segmented_tlc_symbol_off_chemicalset_symbol smb_chs =
  let smb_amt = molecule_aminoacid_tlc_symbol_off_chemicalset_symbol smb_chs in
    Mats_v.molecule_aminoacid_segmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol smb_amt
;;

(** {12 Extracting Gly from Molecule_aminoacid_segmented_tlc from Molecule_aminoacid_tlc from Chemicalset.} *)

(* No Extraction from gly 0. *)

(** {9 Extracting Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc from Chemicalset.} *)

let molecule_aminoacid_fragmented_tlc_symbol_off_chemicalset_symbol smb_chs =
  let smb_amt = molecule_aminoacid_tlc_symbol_off_chemicalset_symbol smb_chs in
    Mats_v.molecule_aminoacid_fragmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol smb_amt
;;

(** {12 Extracting Pro from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc from Chemicalset.} *)

(* No Extraction from pro 0. *)

(** {12 Extracting Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc from Chemicalset.} *)

let molecule_aminoacid_regular_tlc_symbol_off_chemicalset_symbol smb_chs =
  let smb_aft = molecule_aminoacid_fragmented_tlc_symbol_off_chemicalset_symbol smb_chs in
    Mafts_v.molecule_aminoacid_regular_tlc_symbol_off_molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

(** {6 Extracting Molecule from Chemicalset.} *)

let molecule_symbol_off_chemicalset_symbol = function
  | Css_t.Molecule_symbol smb_mol -> smb_mol
  | s ->  print_fatal_error
      "molecule_symbol_off_chemicalset_symbol"
      "Molecule_symbol" (name s)
;;

(** {9 Extracting Molecule_aminoacid from Molecule from Chemicalset.} *)

let molecule_aminoacid_symbol_off_chemicalset_symbol smb_chs =
  let smb_mol = molecule_symbol_off_chemicalset_symbol smb_chs in
    Mos_v.molecule_aminoacid_symbol_off_molecule_symbol smb_mol
;;

(** {12 Extracting Molecule_aminoacid_segmented from Molecule_aminoacid from Molecule from Chemicalset.} *)

let molecule_aminoacid_segmented_symbol_off_chemicalset_symbol smb_chs =
  let smb_mam = molecule_aminoacid_symbol_off_chemicalset_symbol smb_chs in
    Mas_v.molecule_aminoacid_segmented_symbol_off_molecule_aminoacid_symbol smb_mam
;;

(** {12 Extracting Molecule_aminoacid_fragmented from Molecule_aminoacid from Molecule from Chemicalset.} *)

let molecule_aminoacid_fragmented_symbol_off_chemicalset_symbol smb_chs =
  let smb_mam = molecule_aminoacid_symbol_off_chemicalset_symbol smb_chs in
    Mas_v.molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol smb_mam
;;

(** {9 Extracting Molecule_bridged from Molecule from Chemicalset.} *)

let molecule_bridged_symbol_off_chemicalset_symbol smb_chs =
  let smb_mol = molecule_symbol_off_chemicalset_symbol smb_chs in
    Mos_v.molecule_bridged_symbol_off_molecule_symbol smb_mol
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

let molecule_dendrimer_symbol_off_chemicalset_symbol smb_chs =
  let smb_mol = molecule_symbol_off_chemicalset_symbol smb_chs in
    Mos_v.molecule_dendrimer_symbol_off_molecule_symbol smb_mol
;;

(** {12 Extracting Fake_d2 from Molecule_dendrimer from Molecule from Chemicalset.} *)

(* No Extraction from Fake_d2 0. *)

(** {9 Extracting Molecule_forked from Molecule from Chemicalset.} *)

let molecule_forked_symbol_off_chemicalset_symbol smb_chs =
  let smb_mol = molecule_symbol_off_chemicalset_symbol smb_chs in
    Mos_v.molecule_forked_symbol_off_molecule_symbol smb_mol
;;

(** {12 Extracting Molecule_forked_oneforked from Molecule_forked from Molecule from Chemicalset.} *)

let molecule_forked_oneforked_symbol_off_chemicalset_symbol smb_chs =
  let smb_mfk = molecule_forked_symbol_off_chemicalset_symbol smb_chs in
    Mfs_v.molecule_forked_oneforked_symbol_off_molecule_forked_symbol smb_mfk
;;

(** {12 Extracting Molecule_forked_twoforked from Molecule_forked from Molecule from Chemicalset.} *)

let molecule_forked_twoforked_symbol_off_chemicalset_symbol smb_chs =
  let smb_mfk = molecule_forked_symbol_off_chemicalset_symbol smb_chs in
    Mfs_v.molecule_forked_twoforked_symbol_off_molecule_forked_symbol smb_mfk
;;

(** {12 Extracting Molecule_forked_threeforked from Molecule_forked from Molecule from Chemicalset.} *)

let molecule_forked_threeforked_symbol_off_chemicalset_symbol smb_chs =
  let smb_mfk = molecule_forked_symbol_off_chemicalset_symbol smb_chs in
    Mfs_v.molecule_forked_threeforked_symbol_off_molecule_forked_symbol smb_mfk
;;

(** {12 Extracting Molecule_forked_moreforked from Molecule_forked from Molecule from Chemicalset.} *)

let molecule_forked_moreforked_symbol_off_chemicalset_symbol smb_chs =
  let smb_mfk = molecule_forked_symbol_off_chemicalset_symbol smb_chs in
    Mfs_v.molecule_forked_moreforked_symbol_off_molecule_forked_symbol smb_mfk
;;

(** {9 Extracting Molecule_linear from Molecule from Chemicalset.} *)

let molecule_linear_symbol_off_chemicalset_symbol smb_chs =
  let smb_mol = molecule_symbol_off_chemicalset_symbol smb_chs in
    Mos_v.molecule_linear_symbol_off_molecule_symbol smb_mol
;;

(** {12 Extracting Molecule_linear_monoatomic from Molecule_linear from Molecule from Chemicalset.} *)

let molecule_linear_monoatomic_symbol_off_chemicalset_symbol smb_chs =
  let smb_ml = molecule_linear_symbol_off_chemicalset_symbol smb_chs in
    Mls_v.molecule_linear_monoatomic_symbol_off_molecule_linear_symbol smb_ml
;;

(** {12 Extracting Molecule_linear_diatomic from Molecule_linear from Molecule from Chemicalset.} *)

let molecule_linear_diatomic_symbol_off_chemicalset_symbol smb_chs =
  let smb_ml = molecule_linear_symbol_off_chemicalset_symbol smb_chs in
    Mls_v.molecule_linear_diatomic_symbol_off_molecule_linear_symbol smb_ml
;;

(** {12 Extracting Molecule_linear_triatomic from Molecule_linear from Molecule from Chemicalset.} *)

let molecule_linear_triatomic_symbol_off_chemicalset_symbol smb_chs =
  let smb_ml = molecule_linear_symbol_off_chemicalset_symbol smb_chs in
    Mls_v.molecule_linear_triatomic_symbol_off_molecule_linear_symbol smb_ml
;;

(** {12 Extracting Molecule_linear_tetratomic from Molecule_linear from Molecule from Chemicalset.} *)

let molecule_linear_tetratomic_symbol_off_chemicalset_symbol smb_chs =
  let smb_ml = molecule_linear_symbol_off_chemicalset_symbol smb_chs in
    Mls_v.molecule_linear_tetratomic_symbol_off_molecule_linear_symbol smb_ml
;;

(** {12 Extracting Molecule_linear_pentatomic from Molecule_linear from Molecule from Chemicalset.} *)

let molecule_linear_pentatomic_symbol_off_chemicalset_symbol smb_chs =
  let smb_ml = molecule_linear_symbol_off_chemicalset_symbol smb_chs in
    Mls_v.molecule_linear_pentatomic_symbol_off_molecule_linear_symbol smb_ml
;;

(** {12 Extracting Molecule_linear_polyatomic from Molecule_linear from Molecule from Chemicalset.} *)

let molecule_linear_polyatomic_symbol_off_chemicalset_symbol smb_chs =
  let smb_ml = molecule_linear_symbol_off_chemicalset_symbol smb_chs in
    Mls_v.molecule_linear_polyatomic_symbol_off_molecule_linear_symbol smb_ml
;;

(** {9 Extracting Molecule_nucleoside from Molecule from Chemicalset.} *)

(* No Extraction from molecule_nucleoside 0. *)

(** {9 Extracting Molecule_polymer from Molecule from Chemicalset.} *)

let molecule_polymer_symbol_off_chemicalset_symbol smb_chs =
  let smb_mol = molecule_symbol_off_chemicalset_symbol smb_chs in
    Mos_v.molecule_polymer_symbol_off_molecule_symbol smb_mol
;;

(** {12 Extracting Polypeptide from Molecule_polymer from Molecule from Chemicalset.} *)

let polypeptide_symbol_off_chemicalset_symbol smb_chs =
  let smb_mp = molecule_polymer_symbol_off_chemicalset_symbol smb_chs in
    Mps_v.polypeptide_symbol_off_molecule_polymer_symbol smb_mp
;;

(** {12 Extracting Nucleicacid from Molecule_polymer from Molecule from Chemicalset.} *)

let nucleicacid_symbol_off_chemicalset_symbol smb_chs =
  let smb_mp = molecule_polymer_symbol_off_chemicalset_symbol smb_chs in
    Mps_v.nucleicacid_symbol_off_molecule_polymer_symbol smb_mp
;;

(** {6 Extracting Nitrogenous_base from Chemicalset.} *)

let nitrogenous_base_symbol_off_chemicalset_symbol = function
  | Css_t.Nitrogenous_base_symbol smb_nbs -> smb_nbs
  | s ->  print_fatal_error
      "nitrogenous_base_symbol_off_chemicalset_symbol"
      "Nitrogenous_base_symbol" (name s)
;;

(** {9 Extracting Purine_base from Nitrogenous_base from Chemicalset.} *)

let purine_base_symbol_off_chemicalset_symbol smb_chs =
  let smb_nbs = nitrogenous_base_symbol_off_chemicalset_symbol smb_chs in
    Nbs_v.purine_base_symbol_off_nitrogenous_base_symbol smb_nbs
;;

(** {12 Extracting Adenosine from Purine_base from Nitrogenous_base from Chemicalset.} *)

(* No Extraction from Adenosine 0. *)

(** {12 Extracting Guanine from Purine_base from Nitrogenous_base from Chemicalset.} *)

(* No Extraction from Guanine 0. *)

(** {9 Extracting Pyrimidine_base from Nitrogenous_base from Chemicalset.} *)

let pyrimidine_base_symbol_off_chemicalset_symbol smb_chs =
  let smb_nbs = nitrogenous_base_symbol_off_chemicalset_symbol smb_chs in
    Nbs_v.pyrimidine_base_symbol_off_nitrogenous_base_symbol smb_nbs
;;

(** {12 Extracting Cytosine from Pyrimidine_base from Nitrogenous_base from Chemicalset.} *)

(* No Extraction from Cytosine 0. *)

(** {12 Extracting Uracil from Pyrimidine_base from Nitrogenous_base from Chemicalset.} *)

(* No Extraction from Uracil 0. *)

(** {12 Extracting Thymine from Pyrimidine_base from Nitrogenous_base from Chemicalset.} *)

(* No Extraction from Thymine 0. *)

(** {6 Extracting Nucleoside from Chemicalset.} *)

let nucleoside_symbol_off_chemicalset_symbol = function
  | Css_t.Nucleoside_symbol smb_ncs -> smb_ncs
  | s ->  print_fatal_error
      "nucleoside_symbol_off_chemicalset_symbol"
      "Nucleoside_symbol" (name s)
;;

(** {9 Extracting Ribonucleoside from Nucleoside from Chemicalset.} *)

(* No Extraction from ribonucleoside 0. *)

(** {9 Extracting Deoxyribonucleoside from Nucleoside from Chemicalset.} *)

(* No Extraction from deoxyribonucleoside 0. *)

(** {6 Extracting Nucleotide from Chemicalset.} *)

let nucleotide_symbol_off_chemicalset_symbol = function
  | Css_t.Nucleotide_symbol smb_nct -> smb_nct
  | s ->  print_fatal_error
      "nucleotide_symbol_off_chemicalset_symbol"
      "Nucleotide_symbol" (name s)
;;

(** {9 Extracting Ribonucleotide from Nucleotide from Chemicalset.} *)

let ribonucleotide_symbol_off_chemicalset_symbol smb_chs =
  let smb_nct = nucleotide_symbol_off_chemicalset_symbol smb_chs in
    Nts_v.ribonucleotide_symbol_off_nucleotide_symbol smb_nct
;;

(** {12 Extracting Ribonucleotide_purinic from Ribonucleotide from Nucleotide from Chemicalset.} *)

let ribonucleotide_purinic_symbol_off_chemicalset_symbol smb_chs =
  let smb_rnc = ribonucleotide_symbol_off_chemicalset_symbol smb_chs in
    Rncs_v.ribonucleotide_purinic_symbol_off_ribonucleotide_symbol smb_rnc
;;

(** {12 Extracting Ribonucleotide_pyrimidinic from Ribonucleotide from Nucleotide from Chemicalset.} *)

let ribonucleotide_pyrimidinic_symbol_off_chemicalset_symbol smb_chs =
  let smb_rnc = ribonucleotide_symbol_off_chemicalset_symbol smb_chs in
    Rncs_v.ribonucleotide_pyrimidinic_symbol_off_ribonucleotide_symbol smb_rnc
;;

(** {9 Extracting Deoxyribonucleotide from Nucleotide from Chemicalset.} *)

let deoxyribonucleotide_symbol_off_chemicalset_symbol smb_chs =
  let smb_nct = nucleotide_symbol_off_chemicalset_symbol smb_chs in
    Nts_v.deoxyribonucleotide_symbol_off_nucleotide_symbol smb_nct
;;

(** {12 Extracting Deoxyribonucleotide_purinic from Deoxyribonucleotide from Nucleotide from Chemicalset.} *)

let deoxyribonucleotide_purinic_symbol_off_chemicalset_symbol smb_chs =
  let smb_dnc = deoxyribonucleotide_symbol_off_chemicalset_symbol smb_chs in
    Dncs_v.deoxyribonucleotide_purinic_symbol_off_deoxyribonucleotide_symbol smb_dnc
;;

(** {12 Extracting Deoxyribonucleotide_pyrimidinic from Deoxyribonucleotide from Nucleotide from Chemicalset.} *)

let deoxyribonucleotide_pyrimidinic_symbol_off_chemicalset_symbol smb_chs =
  let smb_dnc = deoxyribonucleotide_symbol_off_chemicalset_symbol smb_chs in
    Dncs_v.deoxyribonucleotide_pyrimidinic_symbol_off_deoxyribonucleotide_symbol smb_dnc
;;

(** {6 Extracting Peptideca from Chemicalset.} *)

let peptideca_symbol_off_chemicalset_symbol = function
  | Css_t.Peptideca_symbol smb_pca -> smb_pca
  | s ->  print_fatal_error
      "peptideca_symbol_off_chemicalset_symbol"
      "Peptideca_symbol" (name s)
;;

(** {9 Extracting Peptideca_buried from Peptideca from Chemicalset.} *)

let peptideca_buried_symbol_off_chemicalset_symbol smb_chs =
  let smb_pca = peptideca_symbol_off_chemicalset_symbol smb_chs in
    Pas_v.peptideca_buried_symbol_off_peptideca_symbol smb_pca
;;

(** {12 Extracting Peptideca_buried_segmented from Peptideca_buried from Peptideca from Chemicalset.} *)

let peptideca_buried_segmented_symbol_off_chemicalset_symbol smb_chs =
  let smb_pcb = peptideca_buried_symbol_off_chemicalset_symbol smb_chs in
    Pbs_v.peptideca_buried_segmented_symbol_off_peptideca_buried_symbol smb_pcb
;;

(** {12 Extracting Peptideca_buried_fragmented from Peptideca_buried from Peptideca from Chemicalset.} *)

let peptideca_buried_fragmented_symbol_off_chemicalset_symbol smb_chs =
  let smb_pcb = peptideca_buried_symbol_off_chemicalset_symbol smb_chs in
    Pbs_v.peptideca_buried_fragmented_symbol_off_peptideca_buried_symbol smb_pcb
;;

(** {9 Extracting Peptideca_nterminal from Peptideca from Chemicalset.} *)

let peptideca_nterminal_symbol_off_chemicalset_symbol smb_chs =
  let smb_pca = peptideca_symbol_off_chemicalset_symbol smb_chs in
    Pas_v.peptideca_nterminal_symbol_off_peptideca_symbol smb_pca
;;

(** {12 Extracting Peptideca_nterminal_segmented from Peptideca_nterminal from Peptideca from Chemicalset.} *)

let peptideca_nterminal_segmented_symbol_off_chemicalset_symbol smb_chs =
  let smb_pcn = peptideca_nterminal_symbol_off_chemicalset_symbol smb_chs in
    Pns_v.peptideca_nterminal_segmented_symbol_off_peptideca_nterminal_symbol smb_pcn
;;

(** {12 Extracting Peptideca_nterminal_fragmented from Peptideca_nterminal from Peptideca from Chemicalset.} *)

let peptideca_nterminal_fragmented_symbol_off_chemicalset_symbol smb_chs =
  let smb_pcn = peptideca_nterminal_symbol_off_chemicalset_symbol smb_chs in
    Pns_v.peptideca_nterminal_fragmented_symbol_off_peptideca_nterminal_symbol smb_pcn
;;

(** {6 Extracting Polypeptide_sidegroup from Chemicalset.} *)

let polypeptide_sidegroup_symbol_off_chemicalset_symbol = function
  | Css_t.Polypeptide_sidegroup_symbol smb_pls -> smb_pls
  | s ->  print_fatal_error
      "polypeptide_sidegroup_symbol_off_chemicalset_symbol"
      "Polypeptide_sidegroup_symbol" (name s)
;;

(** {9 Extracting Benzyl from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from Benzyl 0. *)

(** {9 Extracting DiEtheneAmine from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from DiEtheneAmine 0. *)

(** {9 Extracting DiMetheneSMethyl from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from DiMetheneSMethyl 0. *)

(** {9 Extracting MethineDiMethyl from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from MethineDiMethyl 0. *)

(** {9 Extracting EtheneAcid from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from EtheneAcid 0. *)

(** {9 Extracting EtheneAmide from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from EtheneAmide 0. *)

(** {9 Extracting MetheneAcid from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from MetheneAcid 0. *)

(** {9 Extracting MetheneAmide from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from MetheneAmide 0. *)

(** {9 Extracting MetheneImidazole from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from MetheneImidazole 0. *)

(** {9 Extracting MetheneMethineDiMethyl from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from MetheneMethineDiMethyl 0. *)

(** {9 Extracting MethenePhenol from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from MethenePhenol 0. *)

(** {9 Extracting MetheneThiol from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from MetheneThiol 0. *)

(** {9 Extracting MetheneIndole from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from MetheneIndole 0. *)

(** {9 Extracting Methenol from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from Methenol 0. *)

(** {9 Extracting MethineEthylMethyl from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from MethineEthylMethyl 0. *)

(** {9 Extracting MethinolMethyl from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from MethinolMethyl 0. *)

(** {9 Extracting Methyl from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from Methyl 0. *)

(** {9 Extracting TriMetheneGuanidinium from Polypeptide_sidegroup from Chemicalset.} *)

(* No Extraction from TriMetheneGuanidinium 0. *)

(** {6 Extracting Residue from Chemicalset.} *)

let residue_symbol_off_chemicalset_symbol = function
  | Css_t.Residue_symbol smb_res -> smb_res
  | s ->  print_fatal_error
      "residue_symbol_off_chemicalset_symbol"
      "Residue_symbol" (name s)
;;

(** {9 Extracting Residue_nterminal from Residue from Chemicalset.} *)

let residue_nterminal_symbol_off_chemicalset_symbol smb_chs =
  let smb_res = residue_symbol_off_chemicalset_symbol smb_chs in
    Rss_v.residue_nterminal_symbol_off_residue_symbol smb_res
;;

(** {12 Extracting Residue_nterminal_segmented from Residue_nterminal from Residue from Chemicalset.} *)

let residue_nterminal_segmented_symbol_off_chemicalset_symbol smb_chs =
  let smb_rsn = residue_nterminal_symbol_off_chemicalset_symbol smb_chs in
    Rns_v.residue_nterminal_segmented_symbol_off_residue_nterminal_symbol smb_rsn
;;

(** {12 Extracting Residue_nterminal_fragmented from Residue_nterminal from Residue from Chemicalset.} *)

let residue_nterminal_fragmented_symbol_off_chemicalset_symbol smb_chs =
  let smb_rsn = residue_nterminal_symbol_off_chemicalset_symbol smb_chs in
    Rns_v.residue_nterminal_fragmented_symbol_off_residue_nterminal_symbol smb_rsn
;;

(** {9 Extracting Residue_buried from Residue from Chemicalset.} *)

let residue_buried_symbol_off_chemicalset_symbol smb_chs =
  let smb_res = residue_symbol_off_chemicalset_symbol smb_chs in
    Rss_v.residue_buried_symbol_off_residue_symbol smb_res
;;

(** {12 Extracting Residue_buried_segmented from Residue_buried from Residue from Chemicalset.} *)

let residue_buried_segmented_symbol_off_chemicalset_symbol smb_chs =
  let smb_rse = residue_buried_symbol_off_chemicalset_symbol smb_chs in
    Rbs_v.residue_buried_segmented_symbol_off_residue_buried_symbol smb_rse
;;

(** {12 Extracting Residue_buried_fragmented from Residue_buried from Residue from Chemicalset.} *)

let residue_buried_fragmented_symbol_off_chemicalset_symbol smb_chs =
  let smb_rse = residue_buried_symbol_off_chemicalset_symbol smb_chs in
    Rbs_v.residue_buried_fragmented_symbol_off_residue_buried_symbol smb_rse
;;

(** {6 Extracting Segment from Chemicalset.} *)

let segment_symbol_off_chemicalset_symbol = function
  | Css_t.Segment_symbol smb_seg -> smb_seg
  | s ->  print_fatal_error
      "segment_symbol_off_chemicalset_symbol"
      "Segment_symbol" (name s)
;;

(** {9 Extracting Segment_head from Segment from Chemicalset.} *)

let segment_head_symbol_off_chemicalset_symbol smb_chs =
  let smb_seg = segment_symbol_off_chemicalset_symbol smb_chs in
    Sms_v.segment_head_symbol_off_segment_symbol smb_seg
;;

(** {12 Extracting Segment_zeroone from Segment_head from Segment from Chemicalset.} *)

(* No Extraction from segment_zeroone 0. *)

(** {12 Extracting Block_zeroone from Segment_head from Segment from Chemicalset.} *)

let block_zeroone_symbol_off_chemicalset_symbol smb_chs =
  let smb_sgh = segment_head_symbol_off_chemicalset_symbol smb_chs in
    Shs_v.block_zeroone_symbol_off_segment_head_symbol smb_sgh
;;

(** {12 Extracting Segment_rightextended from Segment_head from Segment from Chemicalset.} *)

(* No Extraction from segment_rightextended 0. *)

(** {9 Extracting Segment_buried from Segment from Chemicalset.} *)

let segment_buried_symbol_off_chemicalset_symbol smb_chs =
  let smb_seg = segment_symbol_off_chemicalset_symbol smb_chs in
    Sms_v.segment_buried_symbol_off_segment_symbol smb_seg
;;

(** {12 Extracting Segment_oneone from Segment_buried from Segment from Chemicalset.} *)

(* No Extraction from segment_oneone 0. *)

(** {12 Extracting Block_oneone from Segment_buried from Segment from Chemicalset.} *)

let block_oneone_symbol_off_chemicalset_symbol smb_chs =
  let smb_sgb = segment_buried_symbol_off_chemicalset_symbol smb_chs in
    Sbs_v.block_oneone_symbol_off_segment_buried_symbol smb_sgb
;;

(** {12 Extracting Segment_leftextended from Segment_buried from Segment from Chemicalset.} *)

(* No Extraction from segment_leftextended 0. *)

(** {12 Extracting Polysegment from Segment_buried from Segment from Chemicalset.} *)

(* No Extraction from polysegment 0. *)

(** {6 Querying.} *)

(** {6 Querying Aggregate in Chemicalset.} *)

let is_aggregate_symbol_off_chemicalset_symbol = function
  | Css_t.Aggregate_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Doublet_string_ordinal in Aggregate in Chemicalset.} *)

(* No Query from doublet_string_ordinal d. *)


(** {6 Querying Atom in Chemicalset.} *)

let is_atom_symbol_off_chemicalset_symbol = function
  | Css_t.Atom_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Atom_zerotied in Atom in Chemicalset.} *)

let is_atom_zerotied_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_atm = atom_symbol_off_chemicalset_symbol smb_chs in
      Ats_v.is_atom_zerotied_symbol_off_atom_symbol smb_atm
    end
;;

(** {12 Querying Atom_zerotied_raregas in Atom_zerotied in Atom in Chemicalset.} *)

let is_atom_zerotied_raregas_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_zerotied_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_chemicalset_symbol smb_chs in
      Azes_v.is_atom_zerotied_raregas_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Atom_zerotied_anion in Atom_zerotied in Atom in Chemicalset.} *)

let is_atom_zerotied_anion_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_zerotied_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_chemicalset_symbol smb_chs in
      Azes_v.is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Atom_zerotied_cation in Atom_zerotied in Atom in Chemicalset.} *)

let is_atom_zerotied_cation_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_zerotied_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_chemicalset_symbol smb_chs in
      Azes_v.is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Halfbridge in Atom_zerotied in Atom in Chemicalset.} *)

let is_halfbridge_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_zerotied_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_chemicalset_symbol smb_chs in
      Azes_v.is_halfbridge_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {9 Querying Atom_onetied in Atom in Chemicalset.} *)

let is_atom_onetied_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_atm = atom_symbol_off_chemicalset_symbol smb_chs in
      Ats_v.is_atom_onetied_symbol_off_atom_symbol smb_atm
    end
;;

(** {12 Querying Atom_onetied_conjugated in Atom_onetied in Atom in Chemicalset.} *)

let is_atom_onetied_conjugated_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_onetied_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_aon = atom_onetied_symbol_off_chemicalset_symbol smb_chs in
      Aons_v.is_atom_onetied_conjugated_symbol_off_atom_onetied_symbol smb_aon
    end
;;

(** {12 Querying Atom_onetied_double in Atom_onetied in Atom in Chemicalset.} *)

let is_atom_onetied_double_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_onetied_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_aon = atom_onetied_symbol_off_chemicalset_symbol smb_chs in
      Aons_v.is_atom_onetied_double_symbol_off_atom_onetied_symbol smb_aon
    end
;;

(** {12 Querying Atom_onetied_single in Atom_onetied in Atom in Chemicalset.} *)

let is_atom_onetied_single_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_onetied_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_aon = atom_onetied_symbol_off_chemicalset_symbol smb_chs in
      Aons_v.is_atom_onetied_single_symbol_off_atom_onetied_symbol smb_aon
    end
;;

(** {12 Querying Atom_onetied_triple in Atom_onetied in Atom in Chemicalset.} *)

let is_atom_onetied_triple_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_onetied_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_aon = atom_onetied_symbol_off_chemicalset_symbol smb_chs in
      Aons_v.is_atom_onetied_triple_symbol_off_atom_onetied_symbol smb_aon
    end
;;

(** {9 Querying Atom_twotied in Atom in Chemicalset.} *)

let is_atom_twotied_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_atm = atom_symbol_off_chemicalset_symbol smb_chs in
      Ats_v.is_atom_twotied_symbol_off_atom_symbol smb_atm
    end
;;

(** {12 Querying Atom_twotied_single_single in Atom_twotied in Atom in Chemicalset.} *)

let is_atom_twotied_single_single_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_twotied_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_atw = atom_twotied_symbol_off_chemicalset_symbol smb_chs in
      Atws_v.is_atom_twotied_single_single_symbol_off_atom_twotied_symbol smb_atw
    end
;;

(** {12 Querying Atom_twotied_single_conjugated in Atom_twotied in Atom in Chemicalset.} *)

let is_atom_twotied_single_conjugated_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_twotied_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_atw = atom_twotied_symbol_off_chemicalset_symbol smb_chs in
      Atws_v.is_atom_twotied_single_conjugated_symbol_off_atom_twotied_symbol smb_atw
    end
;;

(** {12 Querying Atom_twotied_single_double in Atom_twotied in Atom in Chemicalset.} *)

let is_atom_twotied_single_double_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_twotied_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_atw = atom_twotied_symbol_off_chemicalset_symbol smb_chs in
      Atws_v.is_atom_twotied_single_double_symbol_off_atom_twotied_symbol smb_atw
    end
;;

(** {12 Querying Atom_twotied_single_triple in Atom_twotied in Atom in Chemicalset.} *)

let is_atom_twotied_single_triple_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_twotied_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_atw = atom_twotied_symbol_off_chemicalset_symbol smb_chs in
      Atws_v.is_atom_twotied_single_triple_symbol_off_atom_twotied_symbol smb_atw
    end
;;

(** {12 Querying Atom_twotied_conjugated_conjugated in Atom_twotied in Atom in Chemicalset.} *)

let is_atom_twotied_conjugated_conjugated_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_twotied_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_atw = atom_twotied_symbol_off_chemicalset_symbol smb_chs in
      Atws_v.is_atom_twotied_conjugated_conjugated_symbol_off_atom_twotied_symbol smb_atw
    end
;;

(** {12 Querying Atom_twotied_conjugated_double in Atom_twotied in Atom in Chemicalset.} *)

let is_atom_twotied_conjugated_double_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_twotied_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_atw = atom_twotied_symbol_off_chemicalset_symbol smb_chs in
      Atws_v.is_atom_twotied_conjugated_double_symbol_off_atom_twotied_symbol smb_atw
    end
;;

(** {12 Querying Atom_twotied_double_double in Atom_twotied in Atom in Chemicalset.} *)

let is_atom_twotied_double_double_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_twotied_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_atw = atom_twotied_symbol_off_chemicalset_symbol smb_chs in
      Atws_v.is_atom_twotied_double_double_symbol_off_atom_twotied_symbol smb_atw
    end
;;

(** {9 Querying Atom_threetied in Atom in Chemicalset.} *)

let is_atom_threetied_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_atm = atom_symbol_off_chemicalset_symbol smb_chs in
      Ats_v.is_atom_threetied_symbol_off_atom_symbol smb_atm
    end
;;

(** {12 Querying Atom_threetied_single_single_single in Atom_threetied in Atom in Chemicalset.} *)

let is_atom_threetied_single_single_single_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_threetied_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_ath = atom_threetied_symbol_off_chemicalset_symbol smb_chs in
      Aths_v.is_atom_threetied_single_single_single_symbol_off_atom_threetied_symbol smb_ath
    end
;;

(** {12 Querying Atom_threetied_single_single_double in Atom_threetied in Atom in Chemicalset.} *)

let is_atom_threetied_single_single_double_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_threetied_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_ath = atom_threetied_symbol_off_chemicalset_symbol smb_chs in
      Aths_v.is_atom_threetied_single_single_double_symbol_off_atom_threetied_symbol smb_ath
    end
;;

(** {12 Querying Atom_threetied_single_conjugated_conjugated in Atom_threetied in Atom in Chemicalset.} *)

let is_atom_threetied_single_conjugated_conjugated_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_threetied_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_ath = atom_threetied_symbol_off_chemicalset_symbol smb_chs in
      Aths_v.is_atom_threetied_single_conjugated_conjugated_symbol_off_atom_threetied_symbol smb_ath
    end
;;

(** {12 Querying Atom_threetied_conjugated_conjugated_conjugated in Atom_threetied in Atom in Chemicalset.} *)

let is_atom_threetied_conjugated_conjugated_conjugated_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_threetied_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_ath = atom_threetied_symbol_off_chemicalset_symbol smb_chs in
      Aths_v.is_atom_threetied_conjugated_conjugated_conjugated_symbol_off_atom_threetied_symbol smb_ath
    end
;;

(** {12 Querying Atom_threetied_double_double_double in Atom_threetied in Atom in Chemicalset.} *)

let is_atom_threetied_double_double_double_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_threetied_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_ath = atom_threetied_symbol_off_chemicalset_symbol smb_chs in
      Aths_v.is_atom_threetied_double_double_double_symbol_off_atom_threetied_symbol smb_ath
    end
;;

(** {9 Querying Atom_fourtied in Atom in Chemicalset.} *)

let is_atom_fourtied_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_atm = atom_symbol_off_chemicalset_symbol smb_chs in
      Ats_v.is_atom_fourtied_symbol_off_atom_symbol smb_atm
    end
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

let is_atom_fivetied_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_atm = atom_symbol_off_chemicalset_symbol smb_chs in
      Ats_v.is_atom_fivetied_symbol_off_atom_symbol smb_atm
    end
;;

(** {12 Querying Cl_5s in Atom_fivetied in Atom in Chemicalset.} *)

(* No Query from cl_5s 0. *)

(** {9 Querying Atom_sixtied in Atom in Chemicalset.} *)

let is_atom_sixtied_symbol_off_chemicalset_symbol smb_chs =
  if not (is_atom_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_atm = atom_symbol_off_chemicalset_symbol smb_chs in
      Ats_v.is_atom_sixtied_symbol_off_atom_symbol smb_atm
    end
;;

(** {12 Querying S_6s in Atom_sixtied in Atom in Chemicalset.} *)

(* No Query from s_6s 0. *)

(** {6 Querying Block in Chemicalset.} *)

let is_block_symbol_off_chemicalset_symbol = function
  | Css_t.Block_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Block_zerozero in Block in Chemicalset.} *)

let is_block_zerozero_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_blk = block_symbol_off_chemicalset_symbol smb_chs in
      Bls_v.is_block_zerozero_symbol_off_block_symbol smb_blk
    end
;;

(** {12 Querying Atom_zerotied in Block_zerozero in Block in Chemicalset.} *)

let is_atom_zerotied_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_zerozero_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_bzz = block_zerozero_symbol_off_chemicalset_symbol smb_chs in
      Bzzs_v.is_atom_zerotied_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

(** {12 Querying Block_zerozero_diatomic in Block_zerozero in Block in Chemicalset.} *)

let is_block_zerozero_diatomic_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_zerozero_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_bzz = block_zerozero_symbol_off_chemicalset_symbol smb_chs in
      Bzzs_v.is_block_zerozero_diatomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

(** {12 Querying Block_zerozero_triatomic in Block_zerozero in Block in Chemicalset.} *)

let is_block_zerozero_triatomic_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_zerozero_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_bzz = block_zerozero_symbol_off_chemicalset_symbol smb_chs in
      Bzzs_v.is_block_zerozero_triatomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

(** {12 Querying Block_zerozero_tetratomic in Block_zerozero in Block in Chemicalset.} *)

let is_block_zerozero_tetratomic_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_zerozero_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_bzz = block_zerozero_symbol_off_chemicalset_symbol smb_chs in
      Bzzs_v.is_block_zerozero_tetratomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

(** {12 Querying Block_zerozero_pentatomic in Block_zerozero in Block in Chemicalset.} *)

let is_block_zerozero_pentatomic_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_zerozero_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_bzz = block_zerozero_symbol_off_chemicalset_symbol smb_chs in
      Bzzs_v.is_block_zerozero_pentatomic_symbol_off_block_zerozero_symbol smb_bzz
    end
;;

(** {9 Querying Block_zeroone in Block in Chemicalset.} *)

let is_block_zeroone_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_blk = block_symbol_off_chemicalset_symbol smb_chs in
      Bls_v.is_block_zeroone_symbol_off_block_symbol smb_blk
    end
;;

(** {12 Querying Block_zeroonesingle in Block_zeroone in Block in Chemicalset.} *)

let is_block_zeroonesingle_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_zeroone_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_bzo = block_zeroone_symbol_off_chemicalset_symbol smb_chs in
      Bzos_v.is_block_zeroonesingle_symbol_off_block_zeroone_symbol smb_bzo
    end
;;

(** {12 Querying Block_zeroonedouble in Block_zeroone in Block in Chemicalset.} *)

let is_block_zeroonedouble_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_zeroone_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_bzo = block_zeroone_symbol_off_chemicalset_symbol smb_chs in
      Bzos_v.is_block_zeroonedouble_symbol_off_block_zeroone_symbol smb_bzo
    end
;;

(** {12 Querying Block_zeroonetriple in Block_zeroone in Block in Chemicalset.} *)

let is_block_zeroonetriple_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_zeroone_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_bzo = block_zeroone_symbol_off_chemicalset_symbol smb_chs in
      Bzos_v.is_block_zeroonetriple_symbol_off_block_zeroone_symbol smb_bzo
    end
;;

(** {12 Querying Block_zeroonehalfbridge in Block_zeroone in Block in Chemicalset.} *)

(* No Query from block_zeroonehalfbridge 0. *)

(** {9 Querying Block_zerofork in Block in Chemicalset.} *)

let is_block_zerofork_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_blk = block_symbol_off_chemicalset_symbol smb_chs in
      Bls_v.is_block_zerofork_symbol_off_block_symbol smb_blk
    end
;;

(** {12 Querying Block_zerobifork in Block_zerofork in Block in Chemicalset.} *)

let is_block_zerobifork_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_zerofork_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_bzf = block_zerofork_symbol_off_chemicalset_symbol smb_chs in
      Bzfs_v.is_block_zerobifork_symbol_off_block_zerofork_symbol smb_bzf
    end
;;

(** {12 Querying Block_zerotrifork in Block_zerofork in Block in Chemicalset.} *)

let is_block_zerotrifork_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_zerofork_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_bzf = block_zerofork_symbol_off_chemicalset_symbol smb_chs in
      Bzfs_v.is_block_zerotrifork_symbol_off_block_zerofork_symbol smb_bzf
    end
;;

(** {12 Querying Block_zeroquadrifork in Block_zerofork in Block in Chemicalset.} *)

let is_block_zeroquadrifork_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_zerofork_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_bzf = block_zerofork_symbol_off_chemicalset_symbol smb_chs in
      Bzfs_v.is_block_zeroquadrifork_symbol_off_block_zerofork_symbol smb_bzf
    end
;;

(** {9 Querying Block_oneone in Block in Chemicalset.} *)

let is_block_oneone_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_blk = block_symbol_off_chemicalset_symbol smb_chs in
      Bls_v.is_block_oneone_symbol_off_block_symbol smb_blk
    end
;;

(** {12 Querying Block_onesingleonesingle in Block_oneone in Block in Chemicalset.} *)

let is_block_onesingleonesingle_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_oneone_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_chemicalset_symbol smb_chs in
      Boos_v.is_block_onesingleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {12 Querying Block_onesingleonedouble in Block_oneone in Block in Chemicalset.} *)

let is_block_onesingleonedouble_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_oneone_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_chemicalset_symbol smb_chs in
      Boos_v.is_block_onesingleonedouble_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {12 Querying Block_onesingleonetriple in Block_oneone in Block in Chemicalset.} *)

let is_block_onesingleonetriple_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_oneone_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_chemicalset_symbol smb_chs in
      Boos_v.is_block_onesingleonetriple_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {12 Querying Block_onedoubleonesingle in Block_oneone in Block in Chemicalset.} *)

let is_block_onedoubleonesingle_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_oneone_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_chemicalset_symbol smb_chs in
      Boos_v.is_block_onedoubleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {12 Querying Block_onedoubleonedouble in Block_oneone in Block in Chemicalset.} *)

let is_block_onedoubleonedouble_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_oneone_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_chemicalset_symbol smb_chs in
      Boos_v.is_block_onedoubleonedouble_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {12 Querying Block_onetripleonesingle in Block_oneone in Block in Chemicalset.} *)

let is_block_onetripleonesingle_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_oneone_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_boo = block_oneone_symbol_off_chemicalset_symbol smb_chs in
      Boos_v.is_block_onetripleonesingle_symbol_off_block_oneone_symbol smb_boo
    end
;;

(** {9 Querying Block_oneend in Block in Chemicalset.} *)

let is_block_oneend_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_blk = block_symbol_off_chemicalset_symbol smb_chs in
      Bls_v.is_block_oneend_symbol_off_block_symbol smb_blk
    end
;;

(** {12 Querying Block_onefork in Block_oneend in Block in Chemicalset.} *)

let is_block_onefork_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_oneend_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_boe = block_oneend_symbol_off_chemicalset_symbol smb_chs in
      Boes_v.is_block_onefork_symbol_off_block_oneend_symbol smb_boe
    end
;;

(** {12 Querying Block_onezero in Block_oneend in Block in Chemicalset.} *)

let is_block_onezero_symbol_off_chemicalset_symbol smb_chs =
  if not (is_block_oneend_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_boe = block_oneend_symbol_off_chemicalset_symbol smb_chs in
      Boes_v.is_block_onezero_symbol_off_block_oneend_symbol smb_boe
    end
;;

(** {6 Querying Bond in Chemicalset.} *)

let is_bond_symbol_off_chemicalset_symbol = function
  | Css_t.Bond_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Bond_covalent in Bond in Chemicalset.} *)

(* No Query from bond_covalent 0. *)


(** {9 Querying Bond_hydrogen in Bond in Chemicalset.} *)

(* No Query from bond_hydrogen 0. *)


(** {9 Querying Bond_ionic in Bond in Chemicalset.} *)

(* No Query from bond_ionic 0. *)


(** {6 Querying Box in Chemicalset.} *)

let is_box_symbol_off_chemicalset_symbol = function
  | Css_t.Box_symbol _ -> true
  | _ -> false
;;

(** {9 Querying String in Box in Chemicalset.} *)

let is_box_string_off_chemicalset_symbol smb_chs =
  if not (is_box_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_box = box_symbol_off_chemicalset_symbol smb_chs in
      Bxs_v.is_box_string_off_box_symbol smb_box
    end
;;

(** {9 Querying Protein in Box in Chemicalset.} *)

let is_protein_symbol_off_chemicalset_symbol smb_chs =
  if not (is_box_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_box = box_symbol_off_chemicalset_symbol smb_chs in
      Bxs_v.is_protein_symbol_off_box_symbol smb_box
    end
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

let is_protein_string_off_chemicalset_symbol smb_chs =
  if not (is_protein_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_prn = protein_symbol_off_chemicalset_symbol smb_chs in
      Prs_v.is_protein_string_off_protein_symbol smb_prn
    end
;;

(** {6 Querying Bridge in Chemicalset.} *)

let is_bridge_symbol_off_chemicalset_symbol = function
  | Css_t.Bridge_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Bc in Bridge in Chemicalset.} *)

(* No Query from Bc 0. *)


(** {9 Querying Bd in Bridge in Chemicalset.} *)

(* No Query from Bd 0. *)


(** {9 Querying Bs in Bridge in Chemicalset.} *)

(* No Query from Bs 0. *)


(** {6 Querying Chain in Chemicalset.} *)

let is_chain_symbol_off_chemicalset_symbol = function
  | Css_t.Chain_symbol _ -> true
  | _ -> false
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

let is_cluster_symbol_off_chemicalset_symbol = function
  | Css_t.Cluster_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Doublet_string_ordinal in Cluster in Chemicalset.} *)

(* No Query from doublet_string_ordinal d. *)


(** {6 Querying Cterminal_subunit in Chemicalset.} *)

let is_cterminal_subunit_symbol_off_chemicalset_symbol = function
  | Css_t.Cterminal_subunit_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Carboxyl_leftextended in Cterminal_subunit in Chemicalset.} *)

(* No Query from Carboxyl_leftextended 0. *)


(** {9 Querying Carboxylate_leftextended in Cterminal_subunit in Chemicalset.} *)

(* No Query from Carboxylate_leftextended 0. *)


(** {6 Querying Fragment in Chemicalset.} *)

let is_fragment_symbol_off_chemicalset_symbol = function
  | Css_t.Fragment_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Fragment_closed in Fragment in Chemicalset.} *)

let is_fragment_closed_symbol_off_chemicalset_symbol smb_chs =
  if not (is_fragment_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_frg = fragment_symbol_off_chemicalset_symbol smb_chs in
      Frs_v.is_fragment_closed_symbol_off_fragment_symbol smb_frg
    end
;;

(** {12 Querying Fragment_zerozero in Fragment_closed in Fragment in Chemicalset.} *)

(* No Query from fragment_zerozero 0. *)

(** {12 Querying Block_zerozero in Fragment_closed in Fragment in Chemicalset.} *)

let is_block_zerozero_symbol_off_chemicalset_symbol smb_chs =
  if not (is_fragment_closed_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_frc = fragment_closed_symbol_off_chemicalset_symbol smb_chs in
      Fcs_v.is_block_zerozero_symbol_off_fragment_closed_symbol smb_frc
    end
;;

(** {12 Querying Segment_head_extends_fragment_leaf in Fragment_closed in Fragment in Chemicalset.} *)

(* No Query from segment_head_extends_fragment_leaf 0. *)

(** {9 Querying Fragment_head in Fragment in Chemicalset.} *)

let is_fragment_head_symbol_off_chemicalset_symbol smb_chs =
  if not (is_fragment_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_frg = fragment_symbol_off_chemicalset_symbol smb_chs in
      Frs_v.is_fragment_head_symbol_off_fragment_symbol smb_frg
    end
;;

(** {12 Querying Fragment_head_halfbridge in Fragment_head in Fragment in Chemicalset.} *)

(* No Query from fragment_head_halfbridge 0. *)

(** {12 Querying Block_zerofork in Fragment_head in Fragment in Chemicalset.} *)

let is_block_zerofork_symbol_off_chemicalset_symbol smb_chs =
  if not (is_fragment_head_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_frh = fragment_head_symbol_off_chemicalset_symbol smb_chs in
      Fhs_v.is_block_zerofork_symbol_off_fragment_head_symbol smb_frh
    end
;;

(** {12 Querying Fragment_zerofork in Fragment_head in Fragment in Chemicalset.} *)

(* No Query from fragment_zerofork 0. *)

(** {12 Querying Segment_head_extends_fragment_buried in Fragment_head in Fragment in Chemicalset.} *)

(* No Query from segment_head_extends_fragment_buried 0. *)

(** {9 Querying Fragment_buried in Fragment in Chemicalset.} *)

let is_fragment_buried_symbol_off_chemicalset_symbol smb_chs =
  if not (is_fragment_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_frg = fragment_symbol_off_chemicalset_symbol smb_chs in
      Frs_v.is_fragment_buried_symbol_off_fragment_symbol smb_frg
    end
;;

(** {12 Querying Fragment_onefork in Fragment_buried in Fragment in Chemicalset.} *)

(* No Query from fragment_onefork 0. *)

(** {12 Querying Block_onefork in Fragment_buried in Fragment in Chemicalset.} *)

let is_block_onefork_symbol_off_chemicalset_symbol smb_chs =
  if not (is_fragment_buried_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_frb = fragment_buried_symbol_off_chemicalset_symbol smb_chs in
      Fbs_v.is_block_onefork_symbol_off_fragment_buried_symbol smb_frb
    end
;;

(** {12 Querying Polysegment_buried_leftextended in Fragment_buried in Fragment in Chemicalset.} *)

(* No Query from polysegment_buried_leftextended 0. *)

(** {9 Querying Fragment_leaf in Fragment in Chemicalset.} *)

let is_fragment_leaf_symbol_off_chemicalset_symbol smb_chs =
  if not (is_fragment_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_frg = fragment_symbol_off_chemicalset_symbol smb_chs in
      Frs_v.is_fragment_leaf_symbol_off_fragment_symbol smb_frg
    end
;;

(** {12 Querying Fragment_halfbridgetail in Fragment_leaf in Fragment in Chemicalset.} *)

(* No Query from fragment_halfbridgetail 0. *)

(** {12 Querying Fragment_halfbridge in Fragment_leaf in Fragment in Chemicalset.} *)

(* No Query from fragment_halfbridge 0. *)

(** {12 Querying Block_zerofork in Fragment_leaf in Fragment in Chemicalset.} *)

let is_block_zerofork_symbol_off_chemicalset_symbol smb_chs =
  if not (is_fragment_leaf_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_frl = fragment_leaf_symbol_off_chemicalset_symbol smb_chs in
      Frls_v.is_block_zerofork_symbol_off_fragment_leaf_symbol smb_frl
    end
;;

(** {12 Querying Fragment_zerofork in Fragment_leaf in Fragment in Chemicalset.} *)

(* No Query from fragment_zerofork 0. *)

(** {12 Querying Segment_head_extends_fragment_buried in Fragment_leaf in Fragment in Chemicalset.} *)

(* No Query from segment_head_extends_fragment_buried 0. *)

(** {6 Querying Grouping in Chemicalset.} *)

let is_grouping_symbol_off_chemicalset_symbol = function
  | Css_t.Grouping_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Empty in Grouping in Chemicalset.} *)

(* No Query from empty 0. *)


(** {9 Querying Fragment_leaf in Grouping in Chemicalset.} *)

let is_fragment_leaf_symbol_off_chemicalset_symbol smb_chs =
  if not (is_grouping_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_grp = grouping_symbol_off_chemicalset_symbol smb_chs in
      Grs_v.is_fragment_leaf_symbol_off_grouping_symbol smb_grp
    end
;;

(** {12 Querying Fragment_halfbridgetail in Fragment_leaf in Grouping in Chemicalset.} *)

(* No Query from fragment_halfbridgetail 0. *)

(** {12 Querying Fragment_halfbridge in Fragment_leaf in Grouping in Chemicalset.} *)

(* No Query from fragment_halfbridge 0. *)

(** {12 Querying Block_zerofork in Fragment_leaf in Grouping in Chemicalset.} *)

let is_block_zerofork_symbol_off_chemicalset_symbol smb_chs =
  if not (is_fragment_leaf_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_frl = fragment_leaf_symbol_off_chemicalset_symbol smb_chs in
      Frls_v.is_block_zerofork_symbol_off_fragment_leaf_symbol smb_frl
    end
;;

(** {12 Querying Fragment_zerofork in Fragment_leaf in Grouping in Chemicalset.} *)

(* No Query from fragment_zerofork 0. *)

(** {12 Querying Segment_head_extends_fragment_buried in Fragment_leaf in Grouping in Chemicalset.} *)

(* No Query from segment_head_extends_fragment_buried 0. *)

(** {9 Querying Grouping_polyfragment in Grouping in Chemicalset.} *)

let is_grouping_polyfragment_symbol_off_chemicalset_symbol smb_chs =
  if not (is_grouping_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_grp = grouping_symbol_off_chemicalset_symbol smb_chs in
      Grs_v.is_grouping_polyfragment_symbol_off_grouping_symbol smb_grp
    end
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

let is_grouping_bridged_symbol_off_chemicalset_symbol smb_chs =
  if not (is_grouping_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_grp = grouping_symbol_off_chemicalset_symbol smb_chs in
      Grs_v.is_grouping_bridged_symbol_off_grouping_symbol smb_grp
    end
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

let is_mendeleev_symbol_off_chemicalset_symbol = function
  | Css_t.Mendeleev_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Hand in Mendeleev in Chemicalset.} *)

(* No Query from hand h. *)


(** {6 Querying Molecule_aminoacid in Chemicalset.} *)

let is_molecule_aminoacid_symbol_off_chemicalset_symbol = function
  | Css_t.Molecule_aminoacid_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Molecule_aminoacid_segmented in Molecule_aminoacid in Chemicalset.} *)

let is_molecule_aminoacid_segmented_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_aminoacid_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_mam = molecule_aminoacid_symbol_off_chemicalset_symbol smb_chs in
      Mas_v.is_molecule_aminoacid_segmented_symbol_off_molecule_aminoacid_symbol smb_mam
    end
;;

(** {12 Querying Glycine in Molecule_aminoacid_segmented in Molecule_aminoacid in Chemicalset.} *)

(* No Query from glycine 0. *)

(** {9 Querying Molecule_aminoacid_fragmented in Molecule_aminoacid in Chemicalset.} *)

let is_molecule_aminoacid_fragmented_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_aminoacid_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_mam = molecule_aminoacid_symbol_off_chemicalset_symbol smb_chs in
      Mas_v.is_molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol smb_mam
    end
;;

(** {12 Querying Pro in Molecule_aminoacid_fragmented in Molecule_aminoacid in Chemicalset.} *)

(* No Query from pro 0. *)

(** {12 Querying Molecule_aminoacid_regular in Molecule_aminoacid_fragmented in Molecule_aminoacid in Chemicalset.} *)

let is_molecule_aminoacid_regular_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_aminoacid_fragmented_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_maf = molecule_aminoacid_fragmented_symbol_off_chemicalset_symbol smb_chs in
      Mafs_v.is_molecule_aminoacid_regular_symbol_off_molecule_aminoacid_fragmented_symbol smb_maf
    end
;;

(** {6 Querying Molecule_aminoacid_olc in Chemicalset.} *)

let is_molecule_aminoacid_olc_symbol_off_chemicalset_symbol = function
  | Css_t.Molecule_aminoacid_olc_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Molecule_aminoacid_segmented_olc in Molecule_aminoacid_olc in Chemicalset.} *)

let is_molecule_aminoacid_segmented_olc_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_aminoacid_olc_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_amo = molecule_aminoacid_olc_symbol_off_chemicalset_symbol smb_chs in
      Maos_v.is_molecule_aminoacid_segmented_olc_symbol_off_molecule_aminoacid_olc_symbol smb_amo
    end
;;

(** {12 Querying G in Molecule_aminoacid_segmented_olc in Molecule_aminoacid_olc in Chemicalset.} *)

(* No Query from g 0. *)

(** {9 Querying Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc in Chemicalset.} *)

let is_molecule_aminoacid_fragmented_olc_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_aminoacid_olc_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_amo = molecule_aminoacid_olc_symbol_off_chemicalset_symbol smb_chs in
      Maos_v.is_molecule_aminoacid_fragmented_olc_symbol_off_molecule_aminoacid_olc_symbol smb_amo
    end
;;

(** {12 Querying P in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc in Chemicalset.} *)

(* No Query from p 0. *)

(** {12 Querying Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc in Chemicalset.} *)

let is_molecule_aminoacid_regular_olc_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_aminoacid_fragmented_olc_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_aof = molecule_aminoacid_fragmented_olc_symbol_off_chemicalset_symbol smb_chs in
      Maofs_v.is_molecule_aminoacid_regular_olc_symbol_off_molecule_aminoacid_fragmented_olc_symbol smb_aof
    end
;;

(** {6 Querying Molecule_aminoacid_tlc in Chemicalset.} *)

let is_molecule_aminoacid_tlc_symbol_off_chemicalset_symbol = function
  | Css_t.Molecule_aminoacid_tlc_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Molecule_aminoacid_segmented_tlc in Molecule_aminoacid_tlc in Chemicalset.} *)

let is_molecule_aminoacid_segmented_tlc_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_aminoacid_tlc_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_amt = molecule_aminoacid_tlc_symbol_off_chemicalset_symbol smb_chs in
      Mats_v.is_molecule_aminoacid_segmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol smb_amt
    end
;;

(** {12 Querying Gly in Molecule_aminoacid_segmented_tlc in Molecule_aminoacid_tlc in Chemicalset.} *)

(* No Query from gly 0. *)

(** {9 Querying Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc in Chemicalset.} *)

let is_molecule_aminoacid_fragmented_tlc_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_aminoacid_tlc_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_amt = molecule_aminoacid_tlc_symbol_off_chemicalset_symbol smb_chs in
      Mats_v.is_molecule_aminoacid_fragmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol smb_amt
    end
;;

(** {12 Querying Pro in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc in Chemicalset.} *)

(* No Query from pro 0. *)

(** {12 Querying Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc in Chemicalset.} *)

let is_molecule_aminoacid_regular_tlc_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_aminoacid_fragmented_tlc_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_aft = molecule_aminoacid_fragmented_tlc_symbol_off_chemicalset_symbol smb_chs in
      Mafts_v.is_molecule_aminoacid_regular_tlc_symbol_off_molecule_aminoacid_fragmented_tlc_symbol smb_aft
    end
;;

(** {6 Querying Molecule in Chemicalset.} *)

let is_molecule_symbol_off_chemicalset_symbol = function
  | Css_t.Molecule_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Molecule_aminoacid in Molecule in Chemicalset.} *)

let is_molecule_aminoacid_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_mol = molecule_symbol_off_chemicalset_symbol smb_chs in
      Mos_v.is_molecule_aminoacid_symbol_off_molecule_symbol smb_mol
    end
;;

(** {12 Querying Molecule_aminoacid_segmented in Molecule_aminoacid in Molecule in Chemicalset.} *)

let is_molecule_aminoacid_segmented_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_aminoacid_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_mam = molecule_aminoacid_symbol_off_chemicalset_symbol smb_chs in
      Mas_v.is_molecule_aminoacid_segmented_symbol_off_molecule_aminoacid_symbol smb_mam
    end
;;

(** {12 Querying Molecule_aminoacid_fragmented in Molecule_aminoacid in Molecule in Chemicalset.} *)

let is_molecule_aminoacid_fragmented_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_aminoacid_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_mam = molecule_aminoacid_symbol_off_chemicalset_symbol smb_chs in
      Mas_v.is_molecule_aminoacid_fragmented_symbol_off_molecule_aminoacid_symbol smb_mam
    end
;;

(** {9 Querying Molecule_bridged in Molecule in Chemicalset.} *)

let is_molecule_bridged_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_mol = molecule_symbol_off_chemicalset_symbol smb_chs in
      Mos_v.is_molecule_bridged_symbol_off_molecule_symbol smb_mol
    end
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

let is_molecule_dendrimer_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_mol = molecule_symbol_off_chemicalset_symbol smb_chs in
      Mos_v.is_molecule_dendrimer_symbol_off_molecule_symbol smb_mol
    end
;;

(** {12 Querying Fake_d2 in Molecule_dendrimer in Molecule in Chemicalset.} *)

(* No Query from Fake_d2 0. *)

(** {9 Querying Molecule_forked in Molecule in Chemicalset.} *)

let is_molecule_forked_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_mol = molecule_symbol_off_chemicalset_symbol smb_chs in
      Mos_v.is_molecule_forked_symbol_off_molecule_symbol smb_mol
    end
;;

(** {12 Querying Molecule_forked_oneforked in Molecule_forked in Molecule in Chemicalset.} *)

let is_molecule_forked_oneforked_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_forked_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_mfk = molecule_forked_symbol_off_chemicalset_symbol smb_chs in
      Mfs_v.is_molecule_forked_oneforked_symbol_off_molecule_forked_symbol smb_mfk
    end
;;

(** {12 Querying Molecule_forked_twoforked in Molecule_forked in Molecule in Chemicalset.} *)

let is_molecule_forked_twoforked_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_forked_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_mfk = molecule_forked_symbol_off_chemicalset_symbol smb_chs in
      Mfs_v.is_molecule_forked_twoforked_symbol_off_molecule_forked_symbol smb_mfk
    end
;;

(** {12 Querying Molecule_forked_threeforked in Molecule_forked in Molecule in Chemicalset.} *)

let is_molecule_forked_threeforked_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_forked_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_mfk = molecule_forked_symbol_off_chemicalset_symbol smb_chs in
      Mfs_v.is_molecule_forked_threeforked_symbol_off_molecule_forked_symbol smb_mfk
    end
;;

(** {12 Querying Molecule_forked_moreforked in Molecule_forked in Molecule in Chemicalset.} *)

let is_molecule_forked_moreforked_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_forked_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_mfk = molecule_forked_symbol_off_chemicalset_symbol smb_chs in
      Mfs_v.is_molecule_forked_moreforked_symbol_off_molecule_forked_symbol smb_mfk
    end
;;

(** {9 Querying Molecule_linear in Molecule in Chemicalset.} *)

let is_molecule_linear_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_mol = molecule_symbol_off_chemicalset_symbol smb_chs in
      Mos_v.is_molecule_linear_symbol_off_molecule_symbol smb_mol
    end
;;

(** {12 Querying Molecule_linear_monoatomic in Molecule_linear in Molecule in Chemicalset.} *)

let is_molecule_linear_monoatomic_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_linear_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_ml = molecule_linear_symbol_off_chemicalset_symbol smb_chs in
      Mls_v.is_molecule_linear_monoatomic_symbol_off_molecule_linear_symbol smb_ml
    end
;;

(** {12 Querying Molecule_linear_diatomic in Molecule_linear in Molecule in Chemicalset.} *)

let is_molecule_linear_diatomic_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_linear_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_ml = molecule_linear_symbol_off_chemicalset_symbol smb_chs in
      Mls_v.is_molecule_linear_diatomic_symbol_off_molecule_linear_symbol smb_ml
    end
;;

(** {12 Querying Molecule_linear_triatomic in Molecule_linear in Molecule in Chemicalset.} *)

let is_molecule_linear_triatomic_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_linear_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_ml = molecule_linear_symbol_off_chemicalset_symbol smb_chs in
      Mls_v.is_molecule_linear_triatomic_symbol_off_molecule_linear_symbol smb_ml
    end
;;

(** {12 Querying Molecule_linear_tetratomic in Molecule_linear in Molecule in Chemicalset.} *)

let is_molecule_linear_tetratomic_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_linear_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_ml = molecule_linear_symbol_off_chemicalset_symbol smb_chs in
      Mls_v.is_molecule_linear_tetratomic_symbol_off_molecule_linear_symbol smb_ml
    end
;;

(** {12 Querying Molecule_linear_pentatomic in Molecule_linear in Molecule in Chemicalset.} *)

let is_molecule_linear_pentatomic_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_linear_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_ml = molecule_linear_symbol_off_chemicalset_symbol smb_chs in
      Mls_v.is_molecule_linear_pentatomic_symbol_off_molecule_linear_symbol smb_ml
    end
;;

(** {12 Querying Molecule_linear_polyatomic in Molecule_linear in Molecule in Chemicalset.} *)

let is_molecule_linear_polyatomic_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_linear_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_ml = molecule_linear_symbol_off_chemicalset_symbol smb_chs in
      Mls_v.is_molecule_linear_polyatomic_symbol_off_molecule_linear_symbol smb_ml
    end
;;

(** {9 Querying Molecule_nucleoside in Molecule in Chemicalset.} *)

(* No Query from molecule_nucleoside 0. *)


(** {9 Querying Molecule_polymer in Molecule in Chemicalset.} *)

let is_molecule_polymer_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_mol = molecule_symbol_off_chemicalset_symbol smb_chs in
      Mos_v.is_molecule_polymer_symbol_off_molecule_symbol smb_mol
    end
;;

(** {12 Querying Polypeptide in Molecule_polymer in Molecule in Chemicalset.} *)

let is_polypeptide_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_polymer_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_mp = molecule_polymer_symbol_off_chemicalset_symbol smb_chs in
      Mps_v.is_polypeptide_symbol_off_molecule_polymer_symbol smb_mp
    end
;;

(** {12 Querying Nucleicacid in Molecule_polymer in Molecule in Chemicalset.} *)

let is_nucleicacid_symbol_off_chemicalset_symbol smb_chs =
  if not (is_molecule_polymer_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_mp = molecule_polymer_symbol_off_chemicalset_symbol smb_chs in
      Mps_v.is_nucleicacid_symbol_off_molecule_polymer_symbol smb_mp
    end
;;

(** {6 Querying Nitrogenous_base in Chemicalset.} *)

let is_nitrogenous_base_symbol_off_chemicalset_symbol = function
  | Css_t.Nitrogenous_base_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Purine_base in Nitrogenous_base in Chemicalset.} *)

let is_purine_base_symbol_off_chemicalset_symbol smb_chs =
  if not (is_nitrogenous_base_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_nbs = nitrogenous_base_symbol_off_chemicalset_symbol smb_chs in
      Nbs_v.is_purine_base_symbol_off_nitrogenous_base_symbol smb_nbs
    end
;;

(** {12 Querying Adenosine in Purine_base in Nitrogenous_base in Chemicalset.} *)

(* No Query from Adenosine 0. *)

(** {12 Querying Guanine in Purine_base in Nitrogenous_base in Chemicalset.} *)

(* No Query from Guanine 0. *)

(** {9 Querying Pyrimidine_base in Nitrogenous_base in Chemicalset.} *)

let is_pyrimidine_base_symbol_off_chemicalset_symbol smb_chs =
  if not (is_nitrogenous_base_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_nbs = nitrogenous_base_symbol_off_chemicalset_symbol smb_chs in
      Nbs_v.is_pyrimidine_base_symbol_off_nitrogenous_base_symbol smb_nbs
    end
;;

(** {12 Querying Cytosine in Pyrimidine_base in Nitrogenous_base in Chemicalset.} *)

(* No Query from Cytosine 0. *)

(** {12 Querying Uracil in Pyrimidine_base in Nitrogenous_base in Chemicalset.} *)

(* No Query from Uracil 0. *)

(** {12 Querying Thymine in Pyrimidine_base in Nitrogenous_base in Chemicalset.} *)

(* No Query from Thymine 0. *)

(** {6 Querying Nucleoside in Chemicalset.} *)

let is_nucleoside_symbol_off_chemicalset_symbol = function
  | Css_t.Nucleoside_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Ribonucleoside in Nucleoside in Chemicalset.} *)

(* No Query from ribonucleoside 0. *)


(** {9 Querying Deoxyribonucleoside in Nucleoside in Chemicalset.} *)

(* No Query from deoxyribonucleoside 0. *)


(** {6 Querying Nucleotide in Chemicalset.} *)

let is_nucleotide_symbol_off_chemicalset_symbol = function
  | Css_t.Nucleotide_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Ribonucleotide in Nucleotide in Chemicalset.} *)

let is_ribonucleotide_symbol_off_chemicalset_symbol smb_chs =
  if not (is_nucleotide_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_nct = nucleotide_symbol_off_chemicalset_symbol smb_chs in
      Nts_v.is_ribonucleotide_symbol_off_nucleotide_symbol smb_nct
    end
;;

(** {12 Querying Ribonucleotide_purinic in Ribonucleotide in Nucleotide in Chemicalset.} *)

let is_ribonucleotide_purinic_symbol_off_chemicalset_symbol smb_chs =
  if not (is_ribonucleotide_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_rnc = ribonucleotide_symbol_off_chemicalset_symbol smb_chs in
      Rncs_v.is_ribonucleotide_purinic_symbol_off_ribonucleotide_symbol smb_rnc
    end
;;

(** {12 Querying Ribonucleotide_pyrimidinic in Ribonucleotide in Nucleotide in Chemicalset.} *)

let is_ribonucleotide_pyrimidinic_symbol_off_chemicalset_symbol smb_chs =
  if not (is_ribonucleotide_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_rnc = ribonucleotide_symbol_off_chemicalset_symbol smb_chs in
      Rncs_v.is_ribonucleotide_pyrimidinic_symbol_off_ribonucleotide_symbol smb_rnc
    end
;;

(** {9 Querying Deoxyribonucleotide in Nucleotide in Chemicalset.} *)

let is_deoxyribonucleotide_symbol_off_chemicalset_symbol smb_chs =
  if not (is_nucleotide_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_nct = nucleotide_symbol_off_chemicalset_symbol smb_chs in
      Nts_v.is_deoxyribonucleotide_symbol_off_nucleotide_symbol smb_nct
    end
;;

(** {12 Querying Deoxyribonucleotide_purinic in Deoxyribonucleotide in Nucleotide in Chemicalset.} *)

let is_deoxyribonucleotide_purinic_symbol_off_chemicalset_symbol smb_chs =
  if not (is_deoxyribonucleotide_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_dnc = deoxyribonucleotide_symbol_off_chemicalset_symbol smb_chs in
      Dncs_v.is_deoxyribonucleotide_purinic_symbol_off_deoxyribonucleotide_symbol smb_dnc
    end
;;

(** {12 Querying Deoxyribonucleotide_pyrimidinic in Deoxyribonucleotide in Nucleotide in Chemicalset.} *)

let is_deoxyribonucleotide_pyrimidinic_symbol_off_chemicalset_symbol smb_chs =
  if not (is_deoxyribonucleotide_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_dnc = deoxyribonucleotide_symbol_off_chemicalset_symbol smb_chs in
      Dncs_v.is_deoxyribonucleotide_pyrimidinic_symbol_off_deoxyribonucleotide_symbol smb_dnc
    end
;;

(** {6 Querying Peptideca in Chemicalset.} *)

let is_peptideca_symbol_off_chemicalset_symbol = function
  | Css_t.Peptideca_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Peptideca_buried in Peptideca in Chemicalset.} *)

let is_peptideca_buried_symbol_off_chemicalset_symbol smb_chs =
  if not (is_peptideca_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_pca = peptideca_symbol_off_chemicalset_symbol smb_chs in
      Pas_v.is_peptideca_buried_symbol_off_peptideca_symbol smb_pca
    end
;;

(** {12 Querying Peptideca_buried_segmented in Peptideca_buried in Peptideca in Chemicalset.} *)

let is_peptideca_buried_segmented_symbol_off_chemicalset_symbol smb_chs =
  if not (is_peptideca_buried_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_pcb = peptideca_buried_symbol_off_chemicalset_symbol smb_chs in
      Pbs_v.is_peptideca_buried_segmented_symbol_off_peptideca_buried_symbol smb_pcb
    end
;;

(** {12 Querying Peptideca_buried_fragmented in Peptideca_buried in Peptideca in Chemicalset.} *)

let is_peptideca_buried_fragmented_symbol_off_chemicalset_symbol smb_chs =
  if not (is_peptideca_buried_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_pcb = peptideca_buried_symbol_off_chemicalset_symbol smb_chs in
      Pbs_v.is_peptideca_buried_fragmented_symbol_off_peptideca_buried_symbol smb_pcb
    end
;;

(** {9 Querying Peptideca_nterminal in Peptideca in Chemicalset.} *)

let is_peptideca_nterminal_symbol_off_chemicalset_symbol smb_chs =
  if not (is_peptideca_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_pca = peptideca_symbol_off_chemicalset_symbol smb_chs in
      Pas_v.is_peptideca_nterminal_symbol_off_peptideca_symbol smb_pca
    end
;;

(** {12 Querying Peptideca_nterminal_segmented in Peptideca_nterminal in Peptideca in Chemicalset.} *)

let is_peptideca_nterminal_segmented_symbol_off_chemicalset_symbol smb_chs =
  if not (is_peptideca_nterminal_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_pcn = peptideca_nterminal_symbol_off_chemicalset_symbol smb_chs in
      Pns_v.is_peptideca_nterminal_segmented_symbol_off_peptideca_nterminal_symbol smb_pcn
    end
;;

(** {12 Querying Peptideca_nterminal_fragmented in Peptideca_nterminal in Peptideca in Chemicalset.} *)

let is_peptideca_nterminal_fragmented_symbol_off_chemicalset_symbol smb_chs =
  if not (is_peptideca_nterminal_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_pcn = peptideca_nterminal_symbol_off_chemicalset_symbol smb_chs in
      Pns_v.is_peptideca_nterminal_fragmented_symbol_off_peptideca_nterminal_symbol smb_pcn
    end
;;

(** {6 Querying Polypeptide_sidegroup in Chemicalset.} *)

let is_polypeptide_sidegroup_symbol_off_chemicalset_symbol = function
  | Css_t.Polypeptide_sidegroup_symbol _ -> true
  | _ -> false
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

let is_residue_symbol_off_chemicalset_symbol = function
  | Css_t.Residue_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Residue_nterminal in Residue in Chemicalset.} *)

let is_residue_nterminal_symbol_off_chemicalset_symbol smb_chs =
  if not (is_residue_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_res = residue_symbol_off_chemicalset_symbol smb_chs in
      Rss_v.is_residue_nterminal_symbol_off_residue_symbol smb_res
    end
;;

(** {12 Querying Residue_nterminal_segmented in Residue_nterminal in Residue in Chemicalset.} *)

let is_residue_nterminal_segmented_symbol_off_chemicalset_symbol smb_chs =
  if not (is_residue_nterminal_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_rsn = residue_nterminal_symbol_off_chemicalset_symbol smb_chs in
      Rns_v.is_residue_nterminal_segmented_symbol_off_residue_nterminal_symbol smb_rsn
    end
;;

(** {12 Querying Residue_nterminal_fragmented in Residue_nterminal in Residue in Chemicalset.} *)

let is_residue_nterminal_fragmented_symbol_off_chemicalset_symbol smb_chs =
  if not (is_residue_nterminal_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_rsn = residue_nterminal_symbol_off_chemicalset_symbol smb_chs in
      Rns_v.is_residue_nterminal_fragmented_symbol_off_residue_nterminal_symbol smb_rsn
    end
;;

(** {9 Querying Residue_buried in Residue in Chemicalset.} *)

let is_residue_buried_symbol_off_chemicalset_symbol smb_chs =
  if not (is_residue_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_res = residue_symbol_off_chemicalset_symbol smb_chs in
      Rss_v.is_residue_buried_symbol_off_residue_symbol smb_res
    end
;;

(** {12 Querying Residue_buried_segmented in Residue_buried in Residue in Chemicalset.} *)

let is_residue_buried_segmented_symbol_off_chemicalset_symbol smb_chs =
  if not (is_residue_buried_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_rse = residue_buried_symbol_off_chemicalset_symbol smb_chs in
      Rbs_v.is_residue_buried_segmented_symbol_off_residue_buried_symbol smb_rse
    end
;;

(** {12 Querying Residue_buried_fragmented in Residue_buried in Residue in Chemicalset.} *)

let is_residue_buried_fragmented_symbol_off_chemicalset_symbol smb_chs =
  if not (is_residue_buried_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_rse = residue_buried_symbol_off_chemicalset_symbol smb_chs in
      Rbs_v.is_residue_buried_fragmented_symbol_off_residue_buried_symbol smb_rse
    end
;;

(** {6 Querying Segment in Chemicalset.} *)

let is_segment_symbol_off_chemicalset_symbol = function
  | Css_t.Segment_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Segment_head in Segment in Chemicalset.} *)

let is_segment_head_symbol_off_chemicalset_symbol smb_chs =
  if not (is_segment_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_seg = segment_symbol_off_chemicalset_symbol smb_chs in
      Sms_v.is_segment_head_symbol_off_segment_symbol smb_seg
    end
;;

(** {12 Querying Segment_zeroone in Segment_head in Segment in Chemicalset.} *)

(* No Query from segment_zeroone 0. *)

(** {12 Querying Block_zeroone in Segment_head in Segment in Chemicalset.} *)

let is_block_zeroone_symbol_off_chemicalset_symbol smb_chs =
  if not (is_segment_head_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_sgh = segment_head_symbol_off_chemicalset_symbol smb_chs in
      Shs_v.is_block_zeroone_symbol_off_segment_head_symbol smb_sgh
    end
;;

(** {12 Querying Segment_rightextended in Segment_head in Segment in Chemicalset.} *)

(* No Query from segment_rightextended 0. *)

(** {9 Querying Segment_buried in Segment in Chemicalset.} *)

let is_segment_buried_symbol_off_chemicalset_symbol smb_chs =
  if not (is_segment_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_seg = segment_symbol_off_chemicalset_symbol smb_chs in
      Sms_v.is_segment_buried_symbol_off_segment_symbol smb_seg
    end
;;

(** {12 Querying Segment_oneone in Segment_buried in Segment in Chemicalset.} *)

(* No Query from segment_oneone 0. *)

(** {12 Querying Block_oneone in Segment_buried in Segment in Chemicalset.} *)

let is_block_oneone_symbol_off_chemicalset_symbol smb_chs =
  if not (is_segment_buried_symbol_off_chemicalset_symbol smb_chs)
  then false
  else
    begin
      let smb_sgb = segment_buried_symbol_off_chemicalset_symbol smb_chs in
      Sbs_v.is_block_oneone_symbol_off_segment_buried_symbol smb_sgb
    end
;;

(** {12 Querying Segment_leftextended in Segment_buried in Segment in Chemicalset.} *)

(* No Query from segment_leftextended 0. *)

(** {12 Querying Polysegment in Segment_buried in Segment in Chemicalset.} *)

(* No Query from polysegment 0. *)

(** {6 Upgrading from Aggregate to Chemicalset.} *)

let chemicalset_symbol_of_aggregate_symbol smb_agg =
  Css_t.Aggregate_symbol smb_agg
;;

(** {9 Upgrading from Doublet_string_ordinal through Aggregate to Chemicalset.} *)

(* No Upgrade from doublet_string_ordinal d. *)

(** {6 Upgrading from Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_symbol smb_atm =
  Css_t.Atom_symbol smb_atm
;;

(** {9 Upgrading from Atom_zerotied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_zerotied_symbol smb_aze =
  let smb_atm = Ats_v.atom_symbol_of_atom_zerotied_symbol smb_aze in
  chemicalset_symbol_of_atom_symbol smb_atm
;;

(** {12 Upgrading from Atom_zerotied_raregas through Atom_zerotied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_zerotied_raregas_symbol smb_arg =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_arg in
    chemicalset_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Atom_zerotied_anion through Atom_zerotied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_zerotied_anion_symbol smb_aza =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_aza in
    chemicalset_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Atom_zerotied_cation through Atom_zerotied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_zerotied_cation_symbol smb_acn =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_acn in
    chemicalset_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Halfbridge through Atom_zerotied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_halfbridge_symbol smb_hbd =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_halfbridge_symbol smb_hbd in
    chemicalset_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {9 Upgrading from Atom_onetied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_onetied_symbol smb_aon =
  let smb_atm = Ats_v.atom_symbol_of_atom_onetied_symbol smb_aon in
  chemicalset_symbol_of_atom_symbol smb_atm
;;

(** {12 Upgrading from Atom_onetied_conjugated through Atom_onetied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_onetied_conjugated_symbol smb_aoc =
  let smb_aon = Aons_v.atom_onetied_symbol_of_atom_onetied_conjugated_symbol smb_aoc in
    chemicalset_symbol_of_atom_onetied_symbol smb_aon
;;

(** {12 Upgrading from Atom_onetied_double through Atom_onetied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_onetied_double_symbol smb_aod =
  let smb_aon = Aons_v.atom_onetied_symbol_of_atom_onetied_double_symbol smb_aod in
    chemicalset_symbol_of_atom_onetied_symbol smb_aon
;;

(** {12 Upgrading from Atom_onetied_single through Atom_onetied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_onetied_single_symbol smb_aos =
  let smb_aon = Aons_v.atom_onetied_symbol_of_atom_onetied_single_symbol smb_aos in
    chemicalset_symbol_of_atom_onetied_symbol smb_aon
;;

(** {12 Upgrading from Atom_onetied_triple through Atom_onetied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_onetied_triple_symbol smb_aot =
  let smb_aon = Aons_v.atom_onetied_symbol_of_atom_onetied_triple_symbol smb_aot in
    chemicalset_symbol_of_atom_onetied_symbol smb_aon
;;

(** {9 Upgrading from Atom_twotied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_twotied_symbol smb_atw =
  let smb_atm = Ats_v.atom_symbol_of_atom_twotied_symbol smb_atw in
  chemicalset_symbol_of_atom_symbol smb_atm
;;

(** {12 Upgrading from Atom_twotied_single_single through Atom_twotied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_twotied_single_single_symbol smb_ass =
  let smb_atw = Atws_v.atom_twotied_symbol_of_atom_twotied_single_single_symbol smb_ass in
    chemicalset_symbol_of_atom_twotied_symbol smb_atw
;;

(** {12 Upgrading from Atom_twotied_single_conjugated through Atom_twotied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_twotied_single_conjugated_symbol smb_asc =
  let smb_atw = Atws_v.atom_twotied_symbol_of_atom_twotied_single_conjugated_symbol smb_asc in
    chemicalset_symbol_of_atom_twotied_symbol smb_atw
;;

(** {12 Upgrading from Atom_twotied_single_double through Atom_twotied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_twotied_single_double_symbol smb_asd =
  let smb_atw = Atws_v.atom_twotied_symbol_of_atom_twotied_single_double_symbol smb_asd in
    chemicalset_symbol_of_atom_twotied_symbol smb_atw
;;

(** {12 Upgrading from Atom_twotied_single_triple through Atom_twotied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_twotied_single_triple_symbol smb_ast =
  let smb_atw = Atws_v.atom_twotied_symbol_of_atom_twotied_single_triple_symbol smb_ast in
    chemicalset_symbol_of_atom_twotied_symbol smb_atw
;;

(** {12 Upgrading from Atom_twotied_conjugated_conjugated through Atom_twotied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_twotied_conjugated_conjugated_symbol smb_acc =
  let smb_atw = Atws_v.atom_twotied_symbol_of_atom_twotied_conjugated_conjugated_symbol smb_acc in
    chemicalset_symbol_of_atom_twotied_symbol smb_atw
;;

(** {12 Upgrading from Atom_twotied_conjugated_double through Atom_twotied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_twotied_conjugated_double_symbol smb_acd =
  let smb_atw = Atws_v.atom_twotied_symbol_of_atom_twotied_conjugated_double_symbol smb_acd in
    chemicalset_symbol_of_atom_twotied_symbol smb_atw
;;

(** {12 Upgrading from Atom_twotied_double_double through Atom_twotied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_twotied_double_double_symbol smb_add =
  let smb_atw = Atws_v.atom_twotied_symbol_of_atom_twotied_double_double_symbol smb_add in
    chemicalset_symbol_of_atom_twotied_symbol smb_atw
;;

(** {9 Upgrading from Atom_threetied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_threetied_symbol smb_ath =
  let smb_atm = Ats_v.atom_symbol_of_atom_threetied_symbol smb_ath in
  chemicalset_symbol_of_atom_symbol smb_atm
;;

(** {12 Upgrading from Atom_threetied_single_single_single through Atom_threetied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_threetied_single_single_single_symbol smb_asss =
  let smb_ath = Aths_v.atom_threetied_symbol_of_atom_threetied_single_single_single_symbol smb_asss in
    chemicalset_symbol_of_atom_threetied_symbol smb_ath
;;

(** {12 Upgrading from Atom_threetied_single_single_double through Atom_threetied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_threetied_single_single_double_symbol smb_assd =
  let smb_ath = Aths_v.atom_threetied_symbol_of_atom_threetied_single_single_double_symbol smb_assd in
    chemicalset_symbol_of_atom_threetied_symbol smb_ath
;;

(** {12 Upgrading from Atom_threetied_single_conjugated_conjugated through Atom_threetied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_threetied_single_conjugated_conjugated_symbol smb_ascc =
  let smb_ath = Aths_v.atom_threetied_symbol_of_atom_threetied_single_conjugated_conjugated_symbol smb_ascc in
    chemicalset_symbol_of_atom_threetied_symbol smb_ath
;;

(** {12 Upgrading from Atom_threetied_conjugated_conjugated_conjugated through Atom_threetied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_threetied_conjugated_conjugated_conjugated_symbol smb_accc =
  let smb_ath = Aths_v.atom_threetied_symbol_of_atom_threetied_conjugated_conjugated_conjugated_symbol smb_accc in
    chemicalset_symbol_of_atom_threetied_symbol smb_ath
;;

(** {12 Upgrading from Atom_threetied_double_double_double through Atom_threetied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_threetied_double_double_double_symbol smb_addd =
  let smb_ath = Aths_v.atom_threetied_symbol_of_atom_threetied_double_double_double_symbol smb_addd in
    chemicalset_symbol_of_atom_threetied_symbol smb_ath
;;

(** {9 Upgrading from Atom_fourtied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_fourtied_symbol smb_afo =
  let smb_atm = Ats_v.atom_symbol_of_atom_fourtied_symbol smb_afo in
  chemicalset_symbol_of_atom_symbol smb_atm
;;

(** {12 Upgrading from C_4s through Atom_fourtied through Atom to Chemicalset.} *)

let c_4s = chemicalset_symbol_of_atom_fourtied_symbol Afos_t.C_4s;;

(** {12 Upgrading from N_4s through Atom_fourtied through Atom to Chemicalset.} *)

let n_4s = chemicalset_symbol_of_atom_fourtied_symbol Afos_t.N_4s;;

(** {12 Upgrading from S_4s through Atom_fourtied through Atom to Chemicalset.} *)

let s_4s = chemicalset_symbol_of_atom_fourtied_symbol Afos_t.S_4s;;

(** {12 Upgrading from Xe_4s through Atom_fourtied through Atom to Chemicalset.} *)

let xe_4s = chemicalset_symbol_of_atom_fourtied_symbol Afos_t.Xe_4s;;

(** {9 Upgrading from Atom_fivetied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_fivetied_symbol smb_afi =
  let smb_atm = Ats_v.atom_symbol_of_atom_fivetied_symbol smb_afi in
  chemicalset_symbol_of_atom_symbol smb_atm
;;

(** {12 Upgrading from Cl_5s through Atom_fivetied through Atom to Chemicalset.} *)

let cl_5s = chemicalset_symbol_of_atom_fivetied_symbol Afvs_t.Cl_5s;;

(** {9 Upgrading from Atom_sixtied through Atom to Chemicalset.} *)

let chemicalset_symbol_of_atom_sixtied_symbol smb_asi =
  let smb_atm = Ats_v.atom_symbol_of_atom_sixtied_symbol smb_asi in
  chemicalset_symbol_of_atom_symbol smb_atm
;;

(** {12 Upgrading from S_6s through Atom_sixtied through Atom to Chemicalset.} *)

let s_6s = chemicalset_symbol_of_atom_sixtied_symbol Asxs_t.S_6s;;

(** {6 Upgrading from Block to Chemicalset.} *)

let chemicalset_symbol_of_block_symbol smb_blk =
  Css_t.Block_symbol smb_blk
;;

(** {9 Upgrading from Block_zerozero through Block to Chemicalset.} *)

let chemicalset_symbol_of_block_zerozero_symbol smb_bzz =
  let smb_blk = Bls_v.block_symbol_of_block_zerozero_symbol smb_bzz in
  chemicalset_symbol_of_block_symbol smb_blk
;;

(** {12 Upgrading from Atom_zerotied through Block_zerozero through Block to Chemicalset.} *)

let chemicalset_symbol_of_atom_zerotied_symbol smb_aze =
  let smb_bzz = Bzzs_v.block_zerozero_symbol_of_atom_zerotied_symbol smb_aze in
    chemicalset_symbol_of_block_zerozero_symbol smb_bzz
;;

(** {12 Upgrading from Block_zerozero_diatomic through Block_zerozero through Block to Chemicalset.} *)

let chemicalset_symbol_of_block_zerozero_diatomic_symbol smb_bzzd =
  let smb_bzz = Bzzs_v.block_zerozero_symbol_of_block_zerozero_diatomic_symbol smb_bzzd in
    chemicalset_symbol_of_block_zerozero_symbol smb_bzz
;;

(** {12 Upgrading from Block_zerozero_triatomic through Block_zerozero through Block to Chemicalset.} *)

let chemicalset_symbol_of_block_zerozero_triatomic_symbol smb_bzzt =
  let smb_bzz = Bzzs_v.block_zerozero_symbol_of_block_zerozero_triatomic_symbol smb_bzzt in
    chemicalset_symbol_of_block_zerozero_symbol smb_bzz
;;

(** {12 Upgrading from Block_zerozero_tetratomic through Block_zerozero through Block to Chemicalset.} *)

let chemicalset_symbol_of_block_zerozero_tetratomic_symbol smb_bzzq =
  let smb_bzz = Bzzs_v.block_zerozero_symbol_of_block_zerozero_tetratomic_symbol smb_bzzq in
    chemicalset_symbol_of_block_zerozero_symbol smb_bzz
;;

(** {12 Upgrading from Block_zerozero_pentatomic through Block_zerozero through Block to Chemicalset.} *)

let chemicalset_symbol_of_block_zerozero_pentatomic_symbol smb_bzzp =
  let smb_bzz = Bzzs_v.block_zerozero_symbol_of_block_zerozero_pentatomic_symbol smb_bzzp in
    chemicalset_symbol_of_block_zerozero_symbol smb_bzz
;;

(** {9 Upgrading from Block_zeroone through Block to Chemicalset.} *)

let chemicalset_symbol_of_block_zeroone_symbol smb_bzo =
  let smb_blk = Bls_v.block_symbol_of_block_zeroone_symbol smb_bzo in
  chemicalset_symbol_of_block_symbol smb_blk
;;

(** {12 Upgrading from Block_zeroonesingle through Block_zeroone through Block to Chemicalset.} *)

let chemicalset_symbol_of_block_zeroonesingle_symbol smb_bzs =
  let smb_bzo = Bzos_v.block_zeroone_symbol_of_block_zeroonesingle_symbol smb_bzs in
    chemicalset_symbol_of_block_zeroone_symbol smb_bzo
;;

(** {12 Upgrading from Block_zeroonedouble through Block_zeroone through Block to Chemicalset.} *)

let chemicalset_symbol_of_block_zeroonedouble_symbol smb_bzd =
  let smb_bzo = Bzos_v.block_zeroone_symbol_of_block_zeroonedouble_symbol smb_bzd in
    chemicalset_symbol_of_block_zeroone_symbol smb_bzo
;;

(** {12 Upgrading from Block_zeroonetriple through Block_zeroone through Block to Chemicalset.} *)

let chemicalset_symbol_of_block_zeroonetriple_symbol smb_bzt =
  let smb_bzo = Bzos_v.block_zeroone_symbol_of_block_zeroonetriple_symbol smb_bzt in
    chemicalset_symbol_of_block_zeroone_symbol smb_bzo
;;

(** {12 Upgrading from Block_zeroonehalfbridge through Block_zeroone through Block to Chemicalset.} *)

let block_zeroonehalfbridge = chemicalset_symbol_of_block_zeroone_symbol Bzos_t.Block_zeroonehalfbridge;;

(** {9 Upgrading from Block_zerofork through Block to Chemicalset.} *)

let chemicalset_symbol_of_block_zerofork_symbol smb_bzf =
  let smb_blk = Bls_v.block_symbol_of_block_zerofork_symbol smb_bzf in
  chemicalset_symbol_of_block_symbol smb_blk
;;

(** {12 Upgrading from Block_zerobifork through Block_zerofork through Block to Chemicalset.} *)

let chemicalset_symbol_of_block_zerobifork_symbol smb_bzb =
  let smb_bzf = Bzfs_v.block_zerofork_symbol_of_block_zerobifork_symbol smb_bzb in
    chemicalset_symbol_of_block_zerofork_symbol smb_bzf
;;

(** {12 Upgrading from Block_zerotrifork through Block_zerofork through Block to Chemicalset.} *)

let chemicalset_symbol_of_block_zerotrifork_symbol smb_bzt =
  let smb_bzf = Bzfs_v.block_zerofork_symbol_of_block_zerotrifork_symbol smb_bzt in
    chemicalset_symbol_of_block_zerofork_symbol smb_bzf
;;

(** {12 Upgrading from Block_zeroquadrifork through Block_zerofork through Block to Chemicalset.} *)

let chemicalset_symbol_of_block_zeroquadrifork_symbol smb_bzq =
  let smb_bzf = Bzfs_v.block_zerofork_symbol_of_block_zeroquadrifork_symbol smb_bzq in
    chemicalset_symbol_of_block_zerofork_symbol smb_bzf
;;

(** {9 Upgrading from Block_oneone through Block to Chemicalset.} *)

let chemicalset_symbol_of_block_oneone_symbol smb_boo =
  let smb_blk = Bls_v.block_symbol_of_block_oneone_symbol smb_boo in
  chemicalset_symbol_of_block_symbol smb_blk
;;

(** {12 Upgrading from Block_onesingleonesingle through Block_oneone through Block to Chemicalset.} *)

let chemicalset_symbol_of_block_onesingleonesingle_symbol smb_bss =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onesingleonesingle_symbol smb_bss in
    chemicalset_symbol_of_block_oneone_symbol smb_boo
;;

(** {12 Upgrading from Block_onesingleonedouble through Block_oneone through Block to Chemicalset.} *)

let chemicalset_symbol_of_block_onesingleonedouble_symbol smb_bsd =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onesingleonedouble_symbol smb_bsd in
    chemicalset_symbol_of_block_oneone_symbol smb_boo
;;

(** {12 Upgrading from Block_onesingleonetriple through Block_oneone through Block to Chemicalset.} *)

let chemicalset_symbol_of_block_onesingleonetriple_symbol smb_bst =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onesingleonetriple_symbol smb_bst in
    chemicalset_symbol_of_block_oneone_symbol smb_boo
;;

(** {12 Upgrading from Block_onedoubleonesingle through Block_oneone through Block to Chemicalset.} *)

let chemicalset_symbol_of_block_onedoubleonesingle_symbol smb_bds =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onedoubleonesingle_symbol smb_bds in
    chemicalset_symbol_of_block_oneone_symbol smb_boo
;;

(** {12 Upgrading from Block_onedoubleonedouble through Block_oneone through Block to Chemicalset.} *)

let chemicalset_symbol_of_block_onedoubleonedouble_symbol smb_bdd =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onedoubleonedouble_symbol smb_bdd in
    chemicalset_symbol_of_block_oneone_symbol smb_boo
;;

(** {12 Upgrading from Block_onetripleonesingle through Block_oneone through Block to Chemicalset.} *)

let chemicalset_symbol_of_block_onetripleonesingle_symbol smb_bts =
  let smb_boo = Boos_v.block_oneone_symbol_of_block_onetripleonesingle_symbol smb_bts in
    chemicalset_symbol_of_block_oneone_symbol smb_boo
;;

(** {9 Upgrading from Block_oneend through Block to Chemicalset.} *)

let chemicalset_symbol_of_block_oneend_symbol smb_boe =
  let smb_blk = Bls_v.block_symbol_of_block_oneend_symbol smb_boe in
  chemicalset_symbol_of_block_symbol smb_blk
;;

(** {12 Upgrading from Block_onefork through Block_oneend through Block to Chemicalset.} *)

let chemicalset_symbol_of_block_onefork_symbol smb_bof =
  let smb_boe = Boes_v.block_oneend_symbol_of_block_onefork_symbol smb_bof in
    chemicalset_symbol_of_block_oneend_symbol smb_boe
;;

(** {12 Upgrading from Block_onezero through Block_oneend through Block to Chemicalset.} *)

let chemicalset_symbol_of_block_onezero_symbol smb_boz =
  let smb_boe = Boes_v.block_oneend_symbol_of_block_onezero_symbol smb_boz in
    chemicalset_symbol_of_block_oneend_symbol smb_boe
;;

(** {6 Upgrading from Bond to Chemicalset.} *)

let chemicalset_symbol_of_bond_symbol smb_bnd =
  Css_t.Bond_symbol smb_bnd
;;

(** {9 Upgrading from Bond_covalent through Bond to Chemicalset.} *)

let bond_covalent = chemicalset_symbol_of_bond_symbol Bns_t.Bond_covalent;;

(** {9 Upgrading from Bond_hydrogen through Bond to Chemicalset.} *)

let bond_hydrogen = chemicalset_symbol_of_bond_symbol Bns_t.Bond_hydrogen;;

(** {9 Upgrading from Bond_ionic through Bond to Chemicalset.} *)

let bond_ionic = chemicalset_symbol_of_bond_symbol Bns_t.Bond_ionic;;

(** {6 Upgrading from Box to Chemicalset.} *)

let chemicalset_symbol_of_box_symbol smb_box =
  Css_t.Box_symbol smb_box
;;

(** {9 Upgrading from String through Box to Chemicalset.} *)

let chemicalset_symbol_of_box_string s =
  let smb_box = Bxs_v.box_symbol_of_box_string s in
  chemicalset_symbol_of_box_symbol smb_box
;;

(** {9 Upgrading from Protein through Box to Chemicalset.} *)

let chemicalset_symbol_of_protein_symbol smb_prn =
  let smb_box = Bxs_v.box_symbol_of_protein_symbol smb_prn in
  chemicalset_symbol_of_box_symbol smb_box
;;

(** {12 Upgrading from Acg through Protein through Box to Chemicalset.} *)

let acg = chemicalset_symbol_of_protein_symbol Prs_t.Acg;;

(** {12 Upgrading from Adh through Protein through Box to Chemicalset.} *)

let adh = chemicalset_symbol_of_protein_symbol Prs_t.Adh;;

(** {12 Upgrading from Agagag through Protein through Box to Chemicalset.} *)

let agagag = chemicalset_symbol_of_protein_symbol Prs_t.Agagag;;

(** {12 Upgrading from Agc through Protein through Box to Chemicalset.} *)

let agc = chemicalset_symbol_of_protein_symbol Prs_t.Agc;;

(** {12 Upgrading from Agg through Protein through Box to Chemicalset.} *)

let agg = chemicalset_symbol_of_protein_symbol Prs_t.Agg;;

(** {12 Upgrading from Agp through Protein through Box to Chemicalset.} *)

let agp = chemicalset_symbol_of_protein_symbol Prs_t.Agp;;

(** {12 Upgrading from Gac through Protein through Box to Chemicalset.} *)

let gac = chemicalset_symbol_of_protein_symbol Prs_t.Gac;;

(** {12 Upgrading from Gap through Protein through Box to Chemicalset.} *)

let gap = chemicalset_symbol_of_protein_symbol Prs_t.Gap;;

(** {12 Upgrading from Ggg through Protein through Box to Chemicalset.} *)

let ggg = chemicalset_symbol_of_protein_symbol Prs_t.Ggg;;

(** {12 Upgrading from Ggacgg through Protein through Box to Chemicalset.} *)

let ggacgg = chemicalset_symbol_of_protein_symbol Prs_t.Ggacgg;;

(** {12 Upgrading from Ggaggg through Protein through Box to Chemicalset.} *)

let ggaggg = chemicalset_symbol_of_protein_symbol Prs_t.Ggaggg;;

(** {12 Upgrading from Gagaga through Protein through Box to Chemicalset.} *)

let gagaga = chemicalset_symbol_of_protein_symbol Prs_t.Gagaga;;

(** {12 Upgrading from Mhb through Protein through Box to Chemicalset.} *)

let mhb = chemicalset_symbol_of_protein_symbol Prs_t.Mhb;;

(** {12 Upgrading from Pac through Protein through Box to Chemicalset.} *)

let pac = chemicalset_symbol_of_protein_symbol Prs_t.Pac;;

(** {12 Upgrading from Pag through Protein through Box to Chemicalset.} *)

let pag = chemicalset_symbol_of_protein_symbol Prs_t.Pag;;

(** {12 Upgrading from Pgk through Protein through Box to Chemicalset.} *)

let pgk = chemicalset_symbol_of_protein_symbol Prs_t.Pgk;;

(** {12 Upgrading from Pti through Protein through Box to Chemicalset.} *)

let pti = chemicalset_symbol_of_protein_symbol Prs_t.Pti;;

(** {12 Upgrading from Sac through Protein through Box to Chemicalset.} *)

let sac = chemicalset_symbol_of_protein_symbol Prs_t.Sac;;

(** {12 Upgrading from Tab through Protein through Box to Chemicalset.} *)

let tab = chemicalset_symbol_of_protein_symbol Prs_t.Tab;;

(** {12 Upgrading from Try through Protein through Box to Chemicalset.} *)

let tr_ = chemicalset_symbol_of_protein_symbol Prs_t.Try;;

(** {12 Upgrading from String through Protein through Box to Chemicalset.} *)

let chemicalset_symbol_of_protein_string s =
  let smb_prn = Prs_v.protein_symbol_of_protein_string s in
  chemicalset_symbol_of_protein_symbol smb_prn
;;

(** {6 Upgrading from Bridge to Chemicalset.} *)

let chemicalset_symbol_of_bridge_symbol smb_brg =
  Css_t.Bridge_symbol smb_brg
;;

(** {9 Upgrading from Bc through Bridge to Chemicalset.} *)

let bc = chemicalset_symbol_of_bridge_symbol Brs_t.Bc;;

(** {9 Upgrading from Bd through Bridge to Chemicalset.} *)

let bd = chemicalset_symbol_of_bridge_symbol Brs_t.Bd;;

(** {9 Upgrading from Bs through Bridge to Chemicalset.} *)

let bs = chemicalset_symbol_of_bridge_symbol Brs_t.Bs;;

(** {6 Upgrading from Chain to Chemicalset.} *)

let chemicalset_symbol_of_chain_symbol smb_chn =
  Css_t.Chain_symbol smb_chn
;;

(** {9 Upgrading from Blank through Chain to Chemicalset.} *)

let blank = chemicalset_symbol_of_chain_symbol Chs_t.Blank;;

(** {9 Upgrading from A through Chain to Chemicalset.} *)

let a = chemicalset_symbol_of_chain_symbol Chs_t.A;;

(** {9 Upgrading from B through Chain to Chemicalset.} *)

let b = chemicalset_symbol_of_chain_symbol Chs_t.B;;

(** {9 Upgrading from C through Chain to Chemicalset.} *)

let c = chemicalset_symbol_of_chain_symbol Chs_t.C;;

(** {9 Upgrading from D through Chain to Chemicalset.} *)

let d = chemicalset_symbol_of_chain_symbol Chs_t.D;;

(** {9 Upgrading from E through Chain to Chemicalset.} *)

let e = chemicalset_symbol_of_chain_symbol Chs_t.E;;

(** {9 Upgrading from F through Chain to Chemicalset.} *)

let f = chemicalset_symbol_of_chain_symbol Chs_t.F;;

(** {9 Upgrading from G through Chain to Chemicalset.} *)

let g = chemicalset_symbol_of_chain_symbol Chs_t.G;;

(** {9 Upgrading from H through Chain to Chemicalset.} *)

let h = chemicalset_symbol_of_chain_symbol Chs_t.H;;

(** {6 Upgrading from Cluster to Chemicalset.} *)

let chemicalset_symbol_of_cluster_symbol smb_clr =
  Css_t.Cluster_symbol smb_clr
;;

(** {9 Upgrading from Doublet_string_ordinal through Cluster to Chemicalset.} *)

(* No Upgrade from doublet_string_ordinal d. *)

(** {6 Upgrading from Cterminal_subunit to Chemicalset.} *)

let chemicalset_symbol_of_cterminal_subunit_symbol smb_cts =
  Css_t.Cterminal_subunit_symbol smb_cts
;;

(** {9 Upgrading from Carboxyl_leftextended through Cterminal_subunit to Chemicalset.} *)

let carboxyl_leftextended = chemicalset_symbol_of_cterminal_subunit_symbol Ctss_t.Carboxyl_leftextended;;

(** {9 Upgrading from Carboxylate_leftextended through Cterminal_subunit to Chemicalset.} *)

let carboxylate_leftextended = chemicalset_symbol_of_cterminal_subunit_symbol Ctss_t.Carboxylate_leftextended;;

(** {6 Upgrading from Fragment to Chemicalset.} *)

let chemicalset_symbol_of_fragment_symbol smb_frg =
  Css_t.Fragment_symbol smb_frg
;;

(** {9 Upgrading from Fragment_closed through Fragment to Chemicalset.} *)

let chemicalset_symbol_of_fragment_closed_symbol smb_frc =
  let smb_frg = Frs_v.fragment_symbol_of_fragment_closed_symbol smb_frc in
  chemicalset_symbol_of_fragment_symbol smb_frg
;;

(** {12 Upgrading from Fragment_zerozero through Fragment_closed through Fragment to Chemicalset.} *)

let fragment_zerozero = chemicalset_symbol_of_fragment_closed_symbol Fcs_t.Fragment_zerozero;;

(** {12 Upgrading from Block_zerozero through Fragment_closed through Fragment to Chemicalset.} *)

let chemicalset_symbol_of_block_zerozero_symbol smb_bzz =
  let smb_frc = Fcs_v.fragment_closed_symbol_of_block_zerozero_symbol smb_bzz in
    chemicalset_symbol_of_fragment_closed_symbol smb_frc
;;

(** {12 Upgrading from Segment_head_extends_fragment_leaf through Fragment_closed through Fragment to Chemicalset.} *)

let segment_head_extends_fragment_leaf = chemicalset_symbol_of_fragment_closed_symbol Fcs_t.Segment_head_extends_fragment_leaf;;

(** {9 Upgrading from Fragment_head through Fragment to Chemicalset.} *)

let chemicalset_symbol_of_fragment_head_symbol smb_frh =
  let smb_frg = Frs_v.fragment_symbol_of_fragment_head_symbol smb_frh in
  chemicalset_symbol_of_fragment_symbol smb_frg
;;

(** {12 Upgrading from Fragment_head_halfbridge through Fragment_head through Fragment to Chemicalset.} *)

let fragment_head_halfbridge = chemicalset_symbol_of_fragment_head_symbol Fhs_t.Fragment_head_halfbridge;;

(** {12 Upgrading from Block_zerofork through Fragment_head through Fragment to Chemicalset.} *)

let chemicalset_symbol_of_block_zerofork_symbol smb_bzf =
  let smb_frh = Fhs_v.fragment_head_symbol_of_block_zerofork_symbol smb_bzf in
    chemicalset_symbol_of_fragment_head_symbol smb_frh
;;

(** {12 Upgrading from Fragment_zerofork through Fragment_head through Fragment to Chemicalset.} *)

let fragment_zerofork = chemicalset_symbol_of_fragment_head_symbol Fhs_t.Fragment_zerofork;;

(** {12 Upgrading from Segment_head_extends_fragment_buried through Fragment_head through Fragment to Chemicalset.} *)

let segment_head_extends_fragment_buried = chemicalset_symbol_of_fragment_head_symbol Fhs_t.Segment_head_extends_fragment_buried;;

(** {9 Upgrading from Fragment_buried through Fragment to Chemicalset.} *)

let chemicalset_symbol_of_fragment_buried_symbol smb_frb =
  let smb_frg = Frs_v.fragment_symbol_of_fragment_buried_symbol smb_frb in
  chemicalset_symbol_of_fragment_symbol smb_frg
;;

(** {12 Upgrading from Fragment_onefork through Fragment_buried through Fragment to Chemicalset.} *)

let fragment_onefork = chemicalset_symbol_of_fragment_buried_symbol Fbs_t.Fragment_onefork;;

(** {12 Upgrading from Block_onefork through Fragment_buried through Fragment to Chemicalset.} *)

let chemicalset_symbol_of_block_onefork_symbol smb_bof =
  let smb_frb = Fbs_v.fragment_buried_symbol_of_block_onefork_symbol smb_bof in
    chemicalset_symbol_of_fragment_buried_symbol smb_frb
;;

(** {12 Upgrading from Polysegment_buried_leftextended through Fragment_buried through Fragment to Chemicalset.} *)

let polysegment_buried_leftextended = chemicalset_symbol_of_fragment_buried_symbol Fbs_t.Polysegment_buried_leftextended;;

(** {9 Upgrading from Fragment_leaf through Fragment to Chemicalset.} *)

let chemicalset_symbol_of_fragment_leaf_symbol smb_frl =
  let smb_frg = Frs_v.fragment_symbol_of_fragment_leaf_symbol smb_frl in
  chemicalset_symbol_of_fragment_symbol smb_frg
;;

(** {12 Upgrading from Fragment_halfbridgetail through Fragment_leaf through Fragment to Chemicalset.} *)

let fragment_halfbridgetail = chemicalset_symbol_of_fragment_leaf_symbol Frls_t.Fragment_halfbridgetail;;

(** {12 Upgrading from Fragment_halfbridge through Fragment_leaf through Fragment to Chemicalset.} *)

let fragment_halfbridge = chemicalset_symbol_of_fragment_leaf_symbol Frls_t.Fragment_halfbridge;;

(** {12 Upgrading from Block_zerofork through Fragment_leaf through Fragment to Chemicalset.} *)

let chemicalset_symbol_of_block_zerofork_symbol smb_bzf =
  let smb_frl = Frls_v.fragment_leaf_symbol_of_block_zerofork_symbol smb_bzf in
    chemicalset_symbol_of_fragment_leaf_symbol smb_frl
;;

(** {12 Upgrading from Fragment_zerofork through Fragment_leaf through Fragment to Chemicalset.} *)

let fragment_zerofork = chemicalset_symbol_of_fragment_leaf_symbol Frls_t.Fragment_zerofork;;

(** {12 Upgrading from Segment_head_extends_fragment_buried through Fragment_leaf through Fragment to Chemicalset.} *)

let segment_head_extends_fragment_buried = chemicalset_symbol_of_fragment_leaf_symbol Frls_t.Segment_head_extends_fragment_buried;;

(** {6 Upgrading from Grouping to Chemicalset.} *)

let chemicalset_symbol_of_grouping_symbol smb_grp =
  Css_t.Grouping_symbol smb_grp
;;

(** {9 Upgrading from Empty through Grouping to Chemicalset.} *)

let empty = chemicalset_symbol_of_grouping_symbol Grs_t.Empty;;

(** {9 Upgrading from Fragment_leaf through Grouping to Chemicalset.} *)

let chemicalset_symbol_of_fragment_leaf_symbol smb_frl =
  let smb_grp = Grs_v.grouping_symbol_of_fragment_leaf_symbol smb_frl in
  chemicalset_symbol_of_grouping_symbol smb_grp
;;

(** {12 Upgrading from Fragment_halfbridgetail through Fragment_leaf through Grouping to Chemicalset.} *)

let fragment_halfbridgetail = chemicalset_symbol_of_fragment_leaf_symbol Frls_t.Fragment_halfbridgetail;;

(** {12 Upgrading from Fragment_halfbridge through Fragment_leaf through Grouping to Chemicalset.} *)

let fragment_halfbridge = chemicalset_symbol_of_fragment_leaf_symbol Frls_t.Fragment_halfbridge;;

(** {12 Upgrading from Block_zerofork through Fragment_leaf through Grouping to Chemicalset.} *)

let chemicalset_symbol_of_block_zerofork_symbol smb_bzf =
  let smb_frl = Frls_v.fragment_leaf_symbol_of_block_zerofork_symbol smb_bzf in
    chemicalset_symbol_of_fragment_leaf_symbol smb_frl
;;

(** {12 Upgrading from Fragment_zerofork through Fragment_leaf through Grouping to Chemicalset.} *)

let fragment_zerofork = chemicalset_symbol_of_fragment_leaf_symbol Frls_t.Fragment_zerofork;;

(** {12 Upgrading from Segment_head_extends_fragment_buried through Fragment_leaf through Grouping to Chemicalset.} *)

let segment_head_extends_fragment_buried = chemicalset_symbol_of_fragment_leaf_symbol Frls_t.Segment_head_extends_fragment_buried;;

(** {9 Upgrading from Grouping_polyfragment through Grouping to Chemicalset.} *)

let chemicalset_symbol_of_grouping_polyfragment_symbol smb_gpf =
  let smb_grp = Grs_v.grouping_symbol_of_grouping_polyfragment_symbol smb_gpf in
  chemicalset_symbol_of_grouping_symbol smb_grp
;;

(** {12 Upgrading from DiMethineTriMethyl through Grouping_polyfragment through Grouping to Chemicalset.} *)

let dimethinetrimethyl = chemicalset_symbol_of_grouping_polyfragment_symbol Gps_t.DiMethineTriMethyl;;

(** {12 Upgrading from Ethcaracidmethyllamine through Grouping_polyfragment through Grouping to Chemicalset.} *)

let ethcaracidmethyllamine = chemicalset_symbol_of_grouping_polyfragment_symbol Gps_t.Ethcaracidmethyllamine;;

(** {12 Upgrading from Ethcaracidmethylramine through Grouping_polyfragment through Grouping to Chemicalset.} *)

let ethcaracidmethylramine = chemicalset_symbol_of_grouping_polyfragment_symbol Gps_t.Ethcaracidmethylramine;;

(** {12 Upgrading from Ethineacidlamine through Grouping_polyfragment through Grouping to Chemicalset.} *)

let ethineacidlamine = chemicalset_symbol_of_grouping_polyfragment_symbol Gps_t.Ethineacidlamine;;

(** {12 Upgrading from Ethineacidramine through Grouping_polyfragment through Grouping to Chemicalset.} *)

let ethineacidramine = chemicalset_symbol_of_grouping_polyfragment_symbol Gps_t.Ethineacidramine;;

(** {12 Upgrading from Guanidine through Grouping_polyfragment through Grouping to Chemicalset.} *)

let guanidine = chemicalset_symbol_of_grouping_polyfragment_symbol Gps_t.Guanidine;;

(** {12 Upgrading from Guanidinium through Grouping_polyfragment through Grouping to Chemicalset.} *)

let guanidinium = chemicalset_symbol_of_grouping_polyfragment_symbol Gps_t.Guanidinium;;

(** {12 Upgrading from MetheneMethineDiMethyl through Grouping_polyfragment through Grouping to Chemicalset.} *)

let methenemethinedimethyl = chemicalset_symbol_of_grouping_polyfragment_symbol Gps_t.MetheneMethineDiMethyl;;

(** {12 Upgrading from MethineDiMethyl through Grouping_polyfragment through Grouping to Chemicalset.} *)

let methinedimethyl = chemicalset_symbol_of_grouping_polyfragment_symbol Gps_t.MethineDiMethyl;;

(** {12 Upgrading from MethineEthylMethyl through Grouping_polyfragment through Grouping to Chemicalset.} *)

let methineethylmethyl = chemicalset_symbol_of_grouping_polyfragment_symbol Gps_t.MethineEthylMethyl;;

(** {12 Upgrading from MethinolMethyl through Grouping_polyfragment through Grouping to Chemicalset.} *)

let methinolmethyl = chemicalset_symbol_of_grouping_polyfragment_symbol Gps_t.MethinolMethyl;;

(** {12 Upgrading from TriMetheneGuanidinium through Grouping_polyfragment through Grouping to Chemicalset.} *)

let trimetheneguanidinium = chemicalset_symbol_of_grouping_polyfragment_symbol Gps_t.TriMetheneGuanidinium;;

(** {12 Upgrading from TriMethineTetraMethyl through Grouping_polyfragment through Grouping to Chemicalset.} *)

let trimethinetetramethyl = chemicalset_symbol_of_grouping_polyfragment_symbol Gps_t.TriMethineTetraMethyl;;

(** {9 Upgrading from Grouping_bridged through Grouping to Chemicalset.} *)

let chemicalset_symbol_of_grouping_bridged_symbol smb_grb =
  let smb_grp = Grs_v.grouping_symbol_of_grouping_bridged_symbol smb_grb in
  chemicalset_symbol_of_grouping_symbol smb_grp
;;

(** {12 Upgrading from Benzale through Grouping_bridged through Grouping to Chemicalset.} *)

let benzale = chemicalset_symbol_of_grouping_bridged_symbol Gbs_t.Benzale;;

(** {12 Upgrading from Benzole through Grouping_bridged through Grouping to Chemicalset.} *)

let benzole = chemicalset_symbol_of_grouping_bridged_symbol Gbs_t.Benzole;;

(** {12 Upgrading from Benzyl through Grouping_bridged through Grouping to Chemicalset.} *)

let benzyl = chemicalset_symbol_of_grouping_bridged_symbol Gbs_t.Benzyl;;

(** {12 Upgrading from Indole through Grouping_bridged through Grouping to Chemicalset.} *)

let indole = chemicalset_symbol_of_grouping_bridged_symbol Gbs_t.Indole;;

(** {12 Upgrading from Metheneimidazole through Grouping_bridged through Grouping to Chemicalset.} *)

let metheneimidazole = chemicalset_symbol_of_grouping_bridged_symbol Gbs_t.Metheneimidazole;;

(** {12 Upgrading from MetheneIndole through Grouping_bridged through Grouping to Chemicalset.} *)

let metheneindole = chemicalset_symbol_of_grouping_bridged_symbol Gbs_t.MetheneIndole;;

(** {12 Upgrading from Dimethonecarbonhydroxyldimethone through Grouping_bridged through Grouping to Chemicalset.} *)

let dimethonecarbonhydroxyldimethone = chemicalset_symbol_of_grouping_bridged_symbol Gbs_t.Dimethonecarbonhydroxyldimethone;;

(** {12 Upgrading from Dimethone through Grouping_bridged through Grouping to Chemicalset.} *)

let dimethone = chemicalset_symbol_of_grouping_bridged_symbol Gbs_t.Dimethone;;

(** {12 Upgrading from Phenol through Grouping_bridged through Grouping to Chemicalset.} *)

let phenol = chemicalset_symbol_of_grouping_bridged_symbol Gbs_t.Phenol;;

(** {12 Upgrading from Pyrrole through Grouping_bridged through Grouping to Chemicalset.} *)

let pyrrole = chemicalset_symbol_of_grouping_bridged_symbol Gbs_t.Pyrrole;;

(** {12 Upgrading from Methenephenol through Grouping_bridged through Grouping to Chemicalset.} *)

let methenephenol = chemicalset_symbol_of_grouping_bridged_symbol Gbs_t.Methenephenol;;

(** {6 Upgrading from Mendeleev to Chemicalset.} *)

let chemicalset_symbol_of_mendeleev_symbol smb_mnd =
  Css_t.Mendeleev_symbol smb_mnd
;;

(** {9 Upgrading from Hand through Mendeleev to Chemicalset.} *)

(* No Upgrade from hand h. *)

(** {6 Upgrading from Molecule_aminoacid to Chemicalset.} *)

let chemicalset_symbol_of_molecule_aminoacid_symbol smb_mam =
  Css_t.Molecule_aminoacid_symbol smb_mam
;;

(** {9 Upgrading from Molecule_aminoacid_segmented through Molecule_aminoacid to Chemicalset.} *)

let chemicalset_symbol_of_molecule_aminoacid_segmented_symbol smb_mas =
  let smb_mam = Mas_v.molecule_aminoacid_symbol_of_molecule_aminoacid_segmented_symbol smb_mas in
  chemicalset_symbol_of_molecule_aminoacid_symbol smb_mam
;;

(** {12 Upgrading from Glycine through Molecule_aminoacid_segmented through Molecule_aminoacid to Chemicalset.} *)

let glycine = chemicalset_symbol_of_molecule_aminoacid_segmented_symbol Mass_t.Glycine;;

(** {9 Upgrading from Molecule_aminoacid_fragmented through Molecule_aminoacid to Chemicalset.} *)

let chemicalset_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
  let smb_mam = Mas_v.molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf in
  chemicalset_symbol_of_molecule_aminoacid_symbol smb_mam
;;

(** {12 Upgrading from Pro through Molecule_aminoacid_fragmented through Molecule_aminoacid to Chemicalset.} *)

let pro = chemicalset_symbol_of_molecule_aminoacid_fragmented_symbol Mafs_t.Pro;;

(** {12 Upgrading from Molecule_aminoacid_regular through Molecule_aminoacid_fragmented through Molecule_aminoacid to Chemicalset.} *)

let chemicalset_symbol_of_molecule_aminoacid_regular_symbol smb_mar =
  let smb_maf = Mafs_v.molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_regular_symbol smb_mar in
    chemicalset_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf
;;

(** {6 Upgrading from Molecule_aminoacid_olc to Chemicalset.} *)

let chemicalset_symbol_of_molecule_aminoacid_olc_symbol smb_amo =
  Css_t.Molecule_aminoacid_olc_symbol smb_amo
;;

(** {9 Upgrading from Molecule_aminoacid_segmented_olc through Molecule_aminoacid_olc to Chemicalset.} *)

let chemicalset_symbol_of_molecule_aminoacid_segmented_olc_symbol smb_aos =
  let smb_amo = Maos_v.molecule_aminoacid_olc_symbol_of_molecule_aminoacid_segmented_olc_symbol smb_aos in
  chemicalset_symbol_of_molecule_aminoacid_olc_symbol smb_amo
;;

(** {12 Upgrading from G through Molecule_aminoacid_segmented_olc through Molecule_aminoacid_olc to Chemicalset.} *)

let g = chemicalset_symbol_of_molecule_aminoacid_segmented_olc_symbol Maoss_t.G;;

(** {9 Upgrading from Molecule_aminoacid_fragmented_olc through Molecule_aminoacid_olc to Chemicalset.} *)

let chemicalset_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_aof =
  let smb_amo = Maos_v.molecule_aminoacid_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_aof in
  chemicalset_symbol_of_molecule_aminoacid_olc_symbol smb_amo
;;

(** {12 Upgrading from P through Molecule_aminoacid_fragmented_olc through Molecule_aminoacid_olc to Chemicalset.} *)

let p = chemicalset_symbol_of_molecule_aminoacid_fragmented_olc_symbol Maofs_t.P;;

(** {12 Upgrading from Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc through Molecule_aminoacid_olc to Chemicalset.} *)

let chemicalset_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aor =
  let smb_aof = Maofs_v.molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aor in
    chemicalset_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_aof
;;

(** {6 Upgrading from Molecule_aminoacid_tlc to Chemicalset.} *)

let chemicalset_symbol_of_molecule_aminoacid_tlc_symbol smb_amt =
  Css_t.Molecule_aminoacid_tlc_symbol smb_amt
;;

(** {9 Upgrading from Molecule_aminoacid_segmented_tlc through Molecule_aminoacid_tlc to Chemicalset.} *)

let chemicalset_symbol_of_molecule_aminoacid_segmented_tlc_symbol smb_ast =
  let smb_amt = Mats_v.molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_segmented_tlc_symbol smb_ast in
  chemicalset_symbol_of_molecule_aminoacid_tlc_symbol smb_amt
;;

(** {12 Upgrading from Gly through Molecule_aminoacid_segmented_tlc through Molecule_aminoacid_tlc to Chemicalset.} *)

let gly = chemicalset_symbol_of_molecule_aminoacid_segmented_tlc_symbol Masts_t.Gly;;

(** {9 Upgrading from Molecule_aminoacid_fragmented_tlc through Molecule_aminoacid_tlc to Chemicalset.} *)

let chemicalset_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft =
  let smb_amt = Mats_v.molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft in
  chemicalset_symbol_of_molecule_aminoacid_tlc_symbol smb_amt
;;

(** {12 Upgrading from Pro through Molecule_aminoacid_fragmented_tlc through Molecule_aminoacid_tlc to Chemicalset.} *)

let pro = chemicalset_symbol_of_molecule_aminoacid_fragmented_tlc_symbol Mafts_t.Pro;;

(** {12 Upgrading from Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc through Molecule_aminoacid_tlc to Chemicalset.} *)

let chemicalset_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art =
  let smb_aft = Mafts_v.molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art in
    chemicalset_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

(** {6 Upgrading from Molecule to Chemicalset.} *)

let chemicalset_symbol_of_molecule_symbol smb_mol =
  Css_t.Molecule_symbol smb_mol
;;

(** {9 Upgrading from Molecule_aminoacid through Molecule to Chemicalset.} *)

let chemicalset_symbol_of_molecule_aminoacid_symbol smb_mam =
  let smb_mol = Mos_v.molecule_symbol_of_molecule_aminoacid_symbol smb_mam in
  chemicalset_symbol_of_molecule_symbol smb_mol
;;

(** {12 Upgrading from Molecule_aminoacid_segmented through Molecule_aminoacid through Molecule to Chemicalset.} *)

let chemicalset_symbol_of_molecule_aminoacid_segmented_symbol smb_mas =
  let smb_mam = Mas_v.molecule_aminoacid_symbol_of_molecule_aminoacid_segmented_symbol smb_mas in
    chemicalset_symbol_of_molecule_aminoacid_symbol smb_mam
;;

(** {12 Upgrading from Molecule_aminoacid_fragmented through Molecule_aminoacid through Molecule to Chemicalset.} *)

let chemicalset_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf =
  let smb_mam = Mas_v.molecule_aminoacid_symbol_of_molecule_aminoacid_fragmented_symbol smb_maf in
    chemicalset_symbol_of_molecule_aminoacid_symbol smb_mam
;;

(** {9 Upgrading from Molecule_bridged through Molecule to Chemicalset.} *)

let chemicalset_symbol_of_molecule_bridged_symbol smb_mbd =
  let smb_mol = Mos_v.molecule_symbol_of_molecule_bridged_symbol smb_mbd in
  chemicalset_symbol_of_molecule_symbol smb_mol
;;

(** {12 Upgrading from Fake_b through Molecule_bridged through Molecule to Chemicalset.} *)

let fake_b = chemicalset_symbol_of_molecule_bridged_symbol Mbs_t.Fake_b;;

(** {12 Upgrading from Benzene through Molecule_bridged through Molecule to Chemicalset.} *)

let benzene = chemicalset_symbol_of_molecule_bridged_symbol Mbs_t.Benzene;;

(** {12 Upgrading from Phenol through Molecule_bridged through Molecule to Chemicalset.} *)

let phenol = chemicalset_symbol_of_molecule_bridged_symbol Mbs_t.Phenol;;

(** {12 Upgrading from Pyrrole through Molecule_bridged through Molecule to Chemicalset.} *)

let pyrrole = chemicalset_symbol_of_molecule_bridged_symbol Mbs_t.Pyrrole;;

(** {9 Upgrading from Molecule_dendrimer through Molecule to Chemicalset.} *)

let chemicalset_symbol_of_molecule_dendrimer_symbol smb_mdn =
  let smb_mol = Mos_v.molecule_symbol_of_molecule_dendrimer_symbol smb_mdn in
  chemicalset_symbol_of_molecule_symbol smb_mol
;;

(** {12 Upgrading from Fake_d2 through Molecule_dendrimer through Molecule to Chemicalset.} *)

let fake_d2 = chemicalset_symbol_of_molecule_dendrimer_symbol Mds_t.Fake_d2;;

(** {9 Upgrading from Molecule_forked through Molecule to Chemicalset.} *)

let chemicalset_symbol_of_molecule_forked_symbol smb_mfk =
  let smb_mol = Mos_v.molecule_symbol_of_molecule_forked_symbol smb_mfk in
  chemicalset_symbol_of_molecule_symbol smb_mol
;;

(** {12 Upgrading from Molecule_forked_oneforked through Molecule_forked through Molecule to Chemicalset.} *)

let chemicalset_symbol_of_molecule_forked_oneforked_symbol smb_mfo =
  let smb_mfk = Mfs_v.molecule_forked_symbol_of_molecule_forked_oneforked_symbol smb_mfo in
    chemicalset_symbol_of_molecule_forked_symbol smb_mfk
;;

(** {12 Upgrading from Molecule_forked_twoforked through Molecule_forked through Molecule to Chemicalset.} *)

let chemicalset_symbol_of_molecule_forked_twoforked_symbol smb_mf2 =
  let smb_mfk = Mfs_v.molecule_forked_symbol_of_molecule_forked_twoforked_symbol smb_mf2 in
    chemicalset_symbol_of_molecule_forked_symbol smb_mfk
;;

(** {12 Upgrading from Molecule_forked_threeforked through Molecule_forked through Molecule to Chemicalset.} *)

let chemicalset_symbol_of_molecule_forked_threeforked_symbol smb_mf3 =
  let smb_mfk = Mfs_v.molecule_forked_symbol_of_molecule_forked_threeforked_symbol smb_mf3 in
    chemicalset_symbol_of_molecule_forked_symbol smb_mfk
;;

(** {12 Upgrading from Molecule_forked_moreforked through Molecule_forked through Molecule to Chemicalset.} *)

let chemicalset_symbol_of_molecule_forked_moreforked_symbol smb_mfm =
  let smb_mfk = Mfs_v.molecule_forked_symbol_of_molecule_forked_moreforked_symbol smb_mfm in
    chemicalset_symbol_of_molecule_forked_symbol smb_mfk
;;

(** {9 Upgrading from Molecule_linear through Molecule to Chemicalset.} *)

let chemicalset_symbol_of_molecule_linear_symbol smb_ml =
  let smb_mol = Mos_v.molecule_symbol_of_molecule_linear_symbol smb_ml in
  chemicalset_symbol_of_molecule_symbol smb_mol
;;

(** {12 Upgrading from Molecule_linear_monoatomic through Molecule_linear through Molecule to Chemicalset.} *)

let chemicalset_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
  let smb_ml = Mls_v.molecule_linear_symbol_of_molecule_linear_monoatomic_symbol smb_mlm in
    chemicalset_symbol_of_molecule_linear_symbol smb_ml
;;

(** {12 Upgrading from Molecule_linear_diatomic through Molecule_linear through Molecule to Chemicalset.} *)

let chemicalset_symbol_of_molecule_linear_diatomic_symbol smb_ml2 =
  let smb_ml = Mls_v.molecule_linear_symbol_of_molecule_linear_diatomic_symbol smb_ml2 in
    chemicalset_symbol_of_molecule_linear_symbol smb_ml
;;

(** {12 Upgrading from Molecule_linear_triatomic through Molecule_linear through Molecule to Chemicalset.} *)

let chemicalset_symbol_of_molecule_linear_triatomic_symbol smb_ml3 =
  let smb_ml = Mls_v.molecule_linear_symbol_of_molecule_linear_triatomic_symbol smb_ml3 in
    chemicalset_symbol_of_molecule_linear_symbol smb_ml
;;

(** {12 Upgrading from Molecule_linear_tetratomic through Molecule_linear through Molecule to Chemicalset.} *)

let chemicalset_symbol_of_molecule_linear_tetratomic_symbol smb_ml4 =
  let smb_ml = Mls_v.molecule_linear_symbol_of_molecule_linear_tetratomic_symbol smb_ml4 in
    chemicalset_symbol_of_molecule_linear_symbol smb_ml
;;

(** {12 Upgrading from Molecule_linear_pentatomic through Molecule_linear through Molecule to Chemicalset.} *)

let chemicalset_symbol_of_molecule_linear_pentatomic_symbol smb_ml5 =
  let smb_ml = Mls_v.molecule_linear_symbol_of_molecule_linear_pentatomic_symbol smb_ml5 in
    chemicalset_symbol_of_molecule_linear_symbol smb_ml
;;

(** {12 Upgrading from Molecule_linear_polyatomic through Molecule_linear through Molecule to Chemicalset.} *)

let chemicalset_symbol_of_molecule_linear_polyatomic_symbol smb_mlp =
  let smb_ml = Mls_v.molecule_linear_symbol_of_molecule_linear_polyatomic_symbol smb_mlp in
    chemicalset_symbol_of_molecule_linear_symbol smb_ml
;;

(** {9 Upgrading from Molecule_nucleoside through Molecule to Chemicalset.} *)

let molecule_nucleoside = chemicalset_symbol_of_molecule_symbol Mos_t.Molecule_nucleoside;;

(** {9 Upgrading from Molecule_polymer through Molecule to Chemicalset.} *)

let chemicalset_symbol_of_molecule_polymer_symbol smb_mp =
  let smb_mol = Mos_v.molecule_symbol_of_molecule_polymer_symbol smb_mp in
  chemicalset_symbol_of_molecule_symbol smb_mol
;;

(** {12 Upgrading from Polypeptide through Molecule_polymer through Molecule to Chemicalset.} *)

let chemicalset_symbol_of_polypeptide_symbol smb_plp =
  let smb_mp = Mps_v.molecule_polymer_symbol_of_polypeptide_symbol smb_plp in
    chemicalset_symbol_of_molecule_polymer_symbol smb_mp
;;

(** {12 Upgrading from Nucleicacid through Molecule_polymer through Molecule to Chemicalset.} *)

let chemicalset_symbol_of_nucleicacid_symbol smb_nca =
  let smb_mp = Mps_v.molecule_polymer_symbol_of_nucleicacid_symbol smb_nca in
    chemicalset_symbol_of_molecule_polymer_symbol smb_mp
;;

(** {6 Upgrading from Nitrogenous_base to Chemicalset.} *)

let chemicalset_symbol_of_nitrogenous_base_symbol smb_nbs =
  Css_t.Nitrogenous_base_symbol smb_nbs
;;

(** {9 Upgrading from Purine_base through Nitrogenous_base to Chemicalset.} *)

let chemicalset_symbol_of_purine_base_symbol smb_pur =
  let smb_nbs = Nbs_v.nitrogenous_base_symbol_of_purine_base_symbol smb_pur in
  chemicalset_symbol_of_nitrogenous_base_symbol smb_nbs
;;

(** {12 Upgrading from Adenosine through Purine_base through Nitrogenous_base to Chemicalset.} *)

let adenosine = chemicalset_symbol_of_purine_base_symbol Pus_t.Adenosine;;

(** {12 Upgrading from Guanine through Purine_base through Nitrogenous_base to Chemicalset.} *)

let guanine = chemicalset_symbol_of_purine_base_symbol Pus_t.Guanine;;

(** {9 Upgrading from Pyrimidine_base through Nitrogenous_base to Chemicalset.} *)

let chemicalset_symbol_of_pyrimidine_base_symbol smb_pyr =
  let smb_nbs = Nbs_v.nitrogenous_base_symbol_of_pyrimidine_base_symbol smb_pyr in
  chemicalset_symbol_of_nitrogenous_base_symbol smb_nbs
;;

(** {12 Upgrading from Cytosine through Pyrimidine_base through Nitrogenous_base to Chemicalset.} *)

let cytosine = chemicalset_symbol_of_pyrimidine_base_symbol Pys_t.Cytosine;;

(** {12 Upgrading from Uracil through Pyrimidine_base through Nitrogenous_base to Chemicalset.} *)

let uracil = chemicalset_symbol_of_pyrimidine_base_symbol Pys_t.Uracil;;

(** {12 Upgrading from Thymine through Pyrimidine_base through Nitrogenous_base to Chemicalset.} *)

let thymine = chemicalset_symbol_of_pyrimidine_base_symbol Pys_t.Thymine;;

(** {6 Upgrading from Nucleoside to Chemicalset.} *)

let chemicalset_symbol_of_nucleoside_symbol smb_ncs =
  Css_t.Nucleoside_symbol smb_ncs
;;

(** {9 Upgrading from Ribonucleoside through Nucleoside to Chemicalset.} *)

let ribonucleoside = chemicalset_symbol_of_nucleoside_symbol Nss_t.Ribonucleoside;;

(** {9 Upgrading from Deoxyribonucleoside through Nucleoside to Chemicalset.} *)

let deoxyribonucleoside = chemicalset_symbol_of_nucleoside_symbol Nss_t.Deoxyribonucleoside;;

(** {6 Upgrading from Nucleotide to Chemicalset.} *)

let chemicalset_symbol_of_nucleotide_symbol smb_nct =
  Css_t.Nucleotide_symbol smb_nct
;;

(** {9 Upgrading from Ribonucleotide through Nucleotide to Chemicalset.} *)

let chemicalset_symbol_of_ribonucleotide_symbol smb_rnc =
  let smb_nct = Nts_v.nucleotide_symbol_of_ribonucleotide_symbol smb_rnc in
  chemicalset_symbol_of_nucleotide_symbol smb_nct
;;

(** {12 Upgrading from Ribonucleotide_purinic through Ribonucleotide through Nucleotide to Chemicalset.} *)

let chemicalset_symbol_of_ribonucleotide_purinic_symbol smb_rpu =
  let smb_rnc = Rncs_v.ribonucleotide_symbol_of_ribonucleotide_purinic_symbol smb_rpu in
    chemicalset_symbol_of_ribonucleotide_symbol smb_rnc
;;

(** {12 Upgrading from Ribonucleotide_pyrimidinic through Ribonucleotide through Nucleotide to Chemicalset.} *)

let chemicalset_symbol_of_ribonucleotide_pyrimidinic_symbol smb_rpy =
  let smb_rnc = Rncs_v.ribonucleotide_symbol_of_ribonucleotide_pyrimidinic_symbol smb_rpy in
    chemicalset_symbol_of_ribonucleotide_symbol smb_rnc
;;

(** {9 Upgrading from Deoxyribonucleotide through Nucleotide to Chemicalset.} *)

let chemicalset_symbol_of_deoxyribonucleotide_symbol smb_dnc =
  let smb_nct = Nts_v.nucleotide_symbol_of_deoxyribonucleotide_symbol smb_dnc in
  chemicalset_symbol_of_nucleotide_symbol smb_nct
;;

(** {12 Upgrading from Deoxyribonucleotide_purinic through Deoxyribonucleotide through Nucleotide to Chemicalset.} *)

let chemicalset_symbol_of_deoxyribonucleotide_purinic_symbol smb_dpu =
  let smb_dnc = Dncs_v.deoxyribonucleotide_symbol_of_deoxyribonucleotide_purinic_symbol smb_dpu in
    chemicalset_symbol_of_deoxyribonucleotide_symbol smb_dnc
;;

(** {12 Upgrading from Deoxyribonucleotide_pyrimidinic through Deoxyribonucleotide through Nucleotide to Chemicalset.} *)

let chemicalset_symbol_of_deoxyribonucleotide_pyrimidinic_symbol smb_dpy =
  let smb_dnc = Dncs_v.deoxyribonucleotide_symbol_of_deoxyribonucleotide_pyrimidinic_symbol smb_dpy in
    chemicalset_symbol_of_deoxyribonucleotide_symbol smb_dnc
;;

(** {6 Upgrading from Peptideca to Chemicalset.} *)

let chemicalset_symbol_of_peptideca_symbol smb_pca =
  Css_t.Peptideca_symbol smb_pca
;;

(** {9 Upgrading from Peptideca_buried through Peptideca to Chemicalset.} *)

let chemicalset_symbol_of_peptideca_buried_symbol smb_pcb =
  let smb_pca = Pas_v.peptideca_symbol_of_peptideca_buried_symbol smb_pcb in
  chemicalset_symbol_of_peptideca_symbol smb_pca
;;

(** {12 Upgrading from Peptideca_buried_segmented through Peptideca_buried through Peptideca to Chemicalset.} *)

let chemicalset_symbol_of_peptideca_buried_segmented_symbol smb_pbs =
  let smb_pcb = Pbs_v.peptideca_buried_symbol_of_peptideca_buried_segmented_symbol smb_pbs in
    chemicalset_symbol_of_peptideca_buried_symbol smb_pcb
;;

(** {12 Upgrading from Peptideca_buried_fragmented through Peptideca_buried through Peptideca to Chemicalset.} *)

let chemicalset_symbol_of_peptideca_buried_fragmented_symbol smb_pbf =
  let smb_pcb = Pbs_v.peptideca_buried_symbol_of_peptideca_buried_fragmented_symbol smb_pbf in
    chemicalset_symbol_of_peptideca_buried_symbol smb_pcb
;;

(** {9 Upgrading from Peptideca_nterminal through Peptideca to Chemicalset.} *)

let chemicalset_symbol_of_peptideca_nterminal_symbol smb_pcn =
  let smb_pca = Pas_v.peptideca_symbol_of_peptideca_nterminal_symbol smb_pcn in
  chemicalset_symbol_of_peptideca_symbol smb_pca
;;

(** {12 Upgrading from Peptideca_nterminal_segmented through Peptideca_nterminal through Peptideca to Chemicalset.} *)

let chemicalset_symbol_of_peptideca_nterminal_segmented_symbol smb_pns =
  let smb_pcn = Pns_v.peptideca_nterminal_symbol_of_peptideca_nterminal_segmented_symbol smb_pns in
    chemicalset_symbol_of_peptideca_nterminal_symbol smb_pcn
;;

(** {12 Upgrading from Peptideca_nterminal_fragmented through Peptideca_nterminal through Peptideca to Chemicalset.} *)

let chemicalset_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf =
  let smb_pcn = Pns_v.peptideca_nterminal_symbol_of_peptideca_nterminal_fragmented_symbol smb_pnf in
    chemicalset_symbol_of_peptideca_nterminal_symbol smb_pcn
;;

(** {6 Upgrading from Polypeptide_sidegroup to Chemicalset.} *)

let chemicalset_symbol_of_polypeptide_sidegroup_symbol smb_pls =
  Css_t.Polypeptide_sidegroup_symbol smb_pls
;;

(** {9 Upgrading from Benzyl through Polypeptide_sidegroup to Chemicalset.} *)

let benzyl = chemicalset_symbol_of_polypeptide_sidegroup_symbol Pss_t.Benzyl;;

(** {9 Upgrading from DiEtheneAmine through Polypeptide_sidegroup to Chemicalset.} *)

let dietheneamine = chemicalset_symbol_of_polypeptide_sidegroup_symbol Pss_t.DiEtheneAmine;;

(** {9 Upgrading from DiMetheneSMethyl through Polypeptide_sidegroup to Chemicalset.} *)

let dimethenesmethyl = chemicalset_symbol_of_polypeptide_sidegroup_symbol Pss_t.DiMetheneSMethyl;;

(** {9 Upgrading from MethineDiMethyl through Polypeptide_sidegroup to Chemicalset.} *)

let methinedimethyl = chemicalset_symbol_of_polypeptide_sidegroup_symbol Pss_t.MethineDiMethyl;;

(** {9 Upgrading from EtheneAcid through Polypeptide_sidegroup to Chemicalset.} *)

let etheneacid = chemicalset_symbol_of_polypeptide_sidegroup_symbol Pss_t.EtheneAcid;;

(** {9 Upgrading from EtheneAmide through Polypeptide_sidegroup to Chemicalset.} *)

let etheneamide = chemicalset_symbol_of_polypeptide_sidegroup_symbol Pss_t.EtheneAmide;;

(** {9 Upgrading from MetheneAcid through Polypeptide_sidegroup to Chemicalset.} *)

let metheneacid = chemicalset_symbol_of_polypeptide_sidegroup_symbol Pss_t.MetheneAcid;;

(** {9 Upgrading from MetheneAmide through Polypeptide_sidegroup to Chemicalset.} *)

let metheneamide = chemicalset_symbol_of_polypeptide_sidegroup_symbol Pss_t.MetheneAmide;;

(** {9 Upgrading from MetheneImidazole through Polypeptide_sidegroup to Chemicalset.} *)

let metheneimidazole = chemicalset_symbol_of_polypeptide_sidegroup_symbol Pss_t.MetheneImidazole;;

(** {9 Upgrading from MetheneMethineDiMethyl through Polypeptide_sidegroup to Chemicalset.} *)

let methenemethinedimethyl = chemicalset_symbol_of_polypeptide_sidegroup_symbol Pss_t.MetheneMethineDiMethyl;;

(** {9 Upgrading from MethenePhenol through Polypeptide_sidegroup to Chemicalset.} *)

let methenephenol = chemicalset_symbol_of_polypeptide_sidegroup_symbol Pss_t.MethenePhenol;;

(** {9 Upgrading from MetheneThiol through Polypeptide_sidegroup to Chemicalset.} *)

let methenethiol = chemicalset_symbol_of_polypeptide_sidegroup_symbol Pss_t.MetheneThiol;;

(** {9 Upgrading from MetheneIndole through Polypeptide_sidegroup to Chemicalset.} *)

let metheneindole = chemicalset_symbol_of_polypeptide_sidegroup_symbol Pss_t.MetheneIndole;;

(** {9 Upgrading from Methenol through Polypeptide_sidegroup to Chemicalset.} *)

let methenol = chemicalset_symbol_of_polypeptide_sidegroup_symbol Pss_t.Methenol;;

(** {9 Upgrading from MethineEthylMethyl through Polypeptide_sidegroup to Chemicalset.} *)

let methineethylmethyl = chemicalset_symbol_of_polypeptide_sidegroup_symbol Pss_t.MethineEthylMethyl;;

(** {9 Upgrading from MethinolMethyl through Polypeptide_sidegroup to Chemicalset.} *)

let methinolmethyl = chemicalset_symbol_of_polypeptide_sidegroup_symbol Pss_t.MethinolMethyl;;

(** {9 Upgrading from Methyl through Polypeptide_sidegroup to Chemicalset.} *)

let methyl = chemicalset_symbol_of_polypeptide_sidegroup_symbol Pss_t.Methyl;;

(** {9 Upgrading from TriMetheneGuanidinium through Polypeptide_sidegroup to Chemicalset.} *)

let trimetheneguanidinium = chemicalset_symbol_of_polypeptide_sidegroup_symbol Pss_t.TriMetheneGuanidinium;;

(** {6 Upgrading from Residue to Chemicalset.} *)

let chemicalset_symbol_of_residue_symbol smb_res =
  Css_t.Residue_symbol smb_res
;;

(** {9 Upgrading from Residue_nterminal through Residue to Chemicalset.} *)

let chemicalset_symbol_of_residue_nterminal_symbol smb_rsn =
  let smb_res = Rss_v.residue_symbol_of_residue_nterminal_symbol smb_rsn in
  chemicalset_symbol_of_residue_symbol smb_res
;;

(** {12 Upgrading from Residue_nterminal_segmented through Residue_nterminal through Residue to Chemicalset.} *)

let chemicalset_symbol_of_residue_nterminal_segmented_symbol smb_rns =
  let smb_rsn = Rns_v.residue_nterminal_symbol_of_residue_nterminal_segmented_symbol smb_rns in
    chemicalset_symbol_of_residue_nterminal_symbol smb_rsn
;;

(** {12 Upgrading from Residue_nterminal_fragmented through Residue_nterminal through Residue to Chemicalset.} *)

let chemicalset_symbol_of_residue_nterminal_fragmented_symbol smb_rnf =
  let smb_rsn = Rns_v.residue_nterminal_symbol_of_residue_nterminal_fragmented_symbol smb_rnf in
    chemicalset_symbol_of_residue_nterminal_symbol smb_rsn
;;

(** {9 Upgrading from Residue_buried through Residue to Chemicalset.} *)

let chemicalset_symbol_of_residue_buried_symbol smb_rse =
  let smb_res = Rss_v.residue_symbol_of_residue_buried_symbol smb_rse in
  chemicalset_symbol_of_residue_symbol smb_res
;;

(** {12 Upgrading from Residue_buried_segmented through Residue_buried through Residue to Chemicalset.} *)

let chemicalset_symbol_of_residue_buried_segmented_symbol smb_rbs =
  let smb_rse = Rbs_v.residue_buried_symbol_of_residue_buried_segmented_symbol smb_rbs in
    chemicalset_symbol_of_residue_buried_symbol smb_rse
;;

(** {12 Upgrading from Residue_buried_fragmented through Residue_buried through Residue to Chemicalset.} *)

let chemicalset_symbol_of_residue_buried_fragmented_symbol smb_rbf =
  let smb_rse = Rbs_v.residue_buried_symbol_of_residue_buried_fragmented_symbol smb_rbf in
    chemicalset_symbol_of_residue_buried_symbol smb_rse
;;

(** {6 Upgrading from Segment to Chemicalset.} *)

let chemicalset_symbol_of_segment_symbol smb_seg =
  Css_t.Segment_symbol smb_seg
;;

(** {9 Upgrading from Segment_head through Segment to Chemicalset.} *)

let chemicalset_symbol_of_segment_head_symbol smb_sgh =
  let smb_seg = Sms_v.segment_symbol_of_segment_head_symbol smb_sgh in
  chemicalset_symbol_of_segment_symbol smb_seg
;;

(** {12 Upgrading from Segment_zeroone through Segment_head through Segment to Chemicalset.} *)

let segment_zeroone = chemicalset_symbol_of_segment_head_symbol Shs_t.Segment_zeroone;;

(** {12 Upgrading from Block_zeroone through Segment_head through Segment to Chemicalset.} *)

let chemicalset_symbol_of_block_zeroone_symbol smb_bzo =
  let smb_sgh = Shs_v.segment_head_symbol_of_block_zeroone_symbol smb_bzo in
    chemicalset_symbol_of_segment_head_symbol smb_sgh
;;

(** {12 Upgrading from Segment_rightextended through Segment_head through Segment to Chemicalset.} *)

let segment_rightextended = chemicalset_symbol_of_segment_head_symbol Shs_t.Segment_rightextended;;

(** {9 Upgrading from Segment_buried through Segment to Chemicalset.} *)

let chemicalset_symbol_of_segment_buried_symbol smb_sgb =
  let smb_seg = Sms_v.segment_symbol_of_segment_buried_symbol smb_sgb in
  chemicalset_symbol_of_segment_symbol smb_seg
;;

(** {12 Upgrading from Segment_oneone through Segment_buried through Segment to Chemicalset.} *)

let segment_oneone = chemicalset_symbol_of_segment_buried_symbol Sbs_t.Segment_oneone;;

(** {12 Upgrading from Block_oneone through Segment_buried through Segment to Chemicalset.} *)

let chemicalset_symbol_of_block_oneone_symbol smb_boo =
  let smb_sgb = Sbs_v.segment_buried_symbol_of_block_oneone_symbol smb_boo in
    chemicalset_symbol_of_segment_buried_symbol smb_sgb
;;

(** {12 Upgrading from Segment_leftextended through Segment_buried through Segment to Chemicalset.} *)

let segment_leftextended = chemicalset_symbol_of_segment_buried_symbol Sbs_t.Segment_leftextended;;

(** {12 Upgrading from Polysegment through Segment_buried through Segment to Chemicalset.} *)

let polysegment = chemicalset_symbol_of_segment_buried_symbol Sbs_t.Polysegment;;

(** created by ./do_entitysum_symbol_v_ml.sh chemicalset 12 January 2011. *)

