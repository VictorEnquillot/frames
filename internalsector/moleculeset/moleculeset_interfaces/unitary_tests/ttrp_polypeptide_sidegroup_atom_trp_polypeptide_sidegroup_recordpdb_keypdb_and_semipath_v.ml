(** {3 Tryptophan Polypeptide_polypeptide_sidegroup Symbol Formula.} *)

open Make_test_v;;

testing "Trp_polypeptide_sidegroup Atom_recordpdb_keypdb_and_semipath_v";;

(* toplevel 
   #use "ttrp_polypeptide_sidegroup_atom_recordpdb_keypdb_and_semipath_v.ml";; 
*)


(* CG of Tryptophan 4 of 1try *)

(* Symbols *)

let sym_prn = Prs_t.Try;;
let sym_plp = Pls_t.Try;;
let sym_ama = Aas_v.tryptophan;;
let sym_sdg = Sgs_v.polypeptide_sidegroup_symbol_of_molecule_aminoacid_symbol sym_ama;; (* MetheneIndol *)
let sym_frg = Frs_v.obf_c_h_2cc;;                                  (* -CBh2-CG< *)
let sym_blk = Bls_v.bls_cc;;                                       (*      -CG< *)
let sym_atm = Ats_t.Core_atom_symbol Ats_v.csnth_c;;               (*      -Cc< *) 

(* Indices *)

let idx_prn = Ord_p.one;;
let idx_plp = Ord_p.one;;
let idx_sdg = Ord_p.four;;
let idx_frg = Fragment_index_t.Sequence_index Sequence_index_t.Head;;
let idx_blk = Block_index_t.Sequence_index (Sequence_index_t.Ordinal Ord_p.two);;
let idx_atm = Atom_index_t.Planar_index Atom_index_t.Planar_core

(* Markers *)

let mrk_prn = Mrk_v.make sym_prn idx_prn;;
let mrk_plp = Mrk_v.make sym_plp idx_plp;;
let mrk_sdg = Mrk_v.make sym_sdg idx_sdg;;
let mrk_frg = Mrk_v.make sym_frg idx_frg;;
let mrk_blk = Mrk_v.make sym_blk idx_blk;;
let mrk_atm = Mrk_v.make sym_atm idx_atm;;

let mrk_chs_l =
[
Csm_v.chemical_set_marker_of_atom_marker mrk_atm;
Csm_v.chemical_set_marker_of_block_marker mrk_blk;
Csm_v.chemical_set_marker_of_fragment_marker mrk_frg;
Csm_v.chemical_set_marker_of_polypeptide_sidegroup_marker mrk_sdg;
Csm_v.chemical_set_marker_of_polypeptide_marker mrk_plp;
Csm_v.chemical_set_marker_of_protein_marker mrk_prn;
];;

let smp_atm = mrk_chs_l;;
let smp_blk = List.tl smp_atm;;
let smp_plp = List.tl smp_blk;;
let smp_frg = List.tl smp_plp;;
let smp_sdg = List.tl smp_frg;;
let smp_plp = List.tl smp_sdg;;
let smp_prn = List.tl smp_plp;;

(* Polypeptide_polypeptide_sidegroup Symbol Formula *)

let frm_smb_sdg = Ssf_v.make sym_sdg;;

let sym_frg_l = Ssf_v.fragment_symbol_list_off_polypeptide_sidegroup_symbol_formula frm_smb_sdg;;
let sym_blk_l = Ssf_v.block_symbol_list_off_polypeptide_sidegroup_symbol_formula frm_smb_sdg;;
let sym_atm_l = Ssf_v.atom_symbol_list_off_polypeptide_sidegroup_symbol_formula frm_smb_sdg;;

test_number 1 (
smp_atm (* : Chemical_set_marker_t.chemical_set_marker list *)
=
  [
   Chemical_set_marker_t.Atom_marker
     {Chemical_set_marker_t.Ats_t.Mrk_t.symbol =
      Chemical_set_marker_t.Ats_t.Ats_t.Core_atom_symbol
	(Chemical_set_marker_t.Ats_t.Ats_t.Threetied_atom_symbol
           (Chemical_set_marker_t.Ats_t.Ats_t.Nonsigma_threetied_atom_symbol
              (Chemical_set_marker_t.Ats_t.Ats_t.Singlenonsigma_threetied_atom_symbol
		 Chemical_set_marker_t.Ats_t.Ats_t.Snth_C)));
      Chemical_set_marker_t.Ats_t.Mrk_t.index =
      Chemical_set_marker_t.Ats_t.Ati_t.Planar_index
	Chemical_set_marker_t.Ats_t.Ati_t.Planar_core};

   Chemical_set_marker_t.Block_marker
     {Chemical_set_marker_t.Bls_t.Mrk_t.symbol =
      Chemical_set_marker_t.Bls_t.Bls_t.Oneend_block_symbol
	(Chemical_set_marker_t.Bls_t.Bls_t.Onefork_block_symbol
           (Chemical_set_marker_t.Bls_t.Bls_t.Onebifork_block_symbol
              (Chemical_set_marker_t.Bls_t.Bls_t.Onesinglebiforksinglesingle_block_symbol
		 Chemical_set_marker_t.Bls_t.Bls_t.Osbss_Cc)));
      Chemical_set_marker_t.Bls_t.Mrk_t.index =
      Chemical_set_marker_t.Bls_t.Bli_t.Sequence_index
	(Chemical_set_marker_t.Bls_t.Bli_t.Sqi_t.Ordinal Ord_p.two)};

   Chemical_set_marker_t.Fragment_marker
     {Chemical_set_marker_t.Frs_t.Mrk_t.symbol =
      Chemical_set_marker_t.Frs_t.Frs_t.Buried_fragment_symbol
	(Chemical_set_marker_t.Frs_t.Frs_t.Onefork_fragment_symbol
           (Chemical_set_marker_t.Frs_t.Frs_t.Onebifork_fragment_symbol
              Chemical_set_marker_t.Frs_t.Frs_t.Obf_C_h_2Cc));
      Chemical_set_marker_t.Frs_t.Mrk_t.index =
      Chemical_set_marker_t.Frs_t.Fri_t.Sequence_index
	Chemical_set_marker_t.Frs_t.Fri_t.Sqi_t.Head};

   Chemical_set_marker_t.Polypeptide_polypeptide_sidegroup_marker
    {Chemical_set_marker_t.Scs_t.Mrk_t.symbol =
      Chemical_set_marker_t.Scs_t.Cns_t.MetheneIndol;
     Chemical_set_marker_t.Scs_t.Mrk_t.index = Ordinal_p.make 4};

   Chemical_set_marker_t.Polypeptide_marker
    {Chemical_set_marker_t.Pls_t.Mrk_t.symbol =
      Chemical_set_marker_t.Pls_t.Pls_t.Try;
     Chemical_set_marker_t.Pls_t.Mrk_t.index = Ordinal_p.make 1};

Chemical_set_marker_t.Protein_marker
  {Chemical_set_marker_t.Prs_t.Mrk_t.symbol =
    Chemical_set_marker_t.Prs_t.Prs_t.Try;
   Chemical_set_marker_t.Prs_t.Mrk_t.index = Ordinal_p.make 1}
]
);;

Arks_v.atom_recordpdb_keypdb_of_atom_semipath smp_atm;;

