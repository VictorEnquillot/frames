(** {3 Alanine Molecule Symbol Formula.} *)

open Make_test_v;;

testing "Alanine Molecule_symbol_formula_v";;

(* toplevel 
   #use "talanine_molecule_symbol_formula_v.ml";; 
*)


(** Aminoacid Symbol *)

let sym_amr = Molecule_aminoacid_symbol_t.Alanine;;
let sym_ama = Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol sym_amr;;

(** Molecule Symbol *)

let sym_mol = Molecule_linear_symbol_t.Monomer_molecule_symbol (Molecule_linear_symbol_t.Molecule_aminoacid_symbol sym_ama);; 
 
(* Molecule  Symbol Formula *)

let sym_cap = Fragment_symbol_v.h_o_h_cdodc_h_ ;;
let sym_sdr = Ssf_v.retrieve_regular_polypeptide_sidegroup_symbol_formula sym_amr;;

let for_smb_mol = Msf_v.retrieve sym_mol;;

let sym_frg_l = Msf_v.fragment_symbol_list_off_molecule_symbol_formula for_smb_mol;;
let sym_blk_l = Msf_v.block_symbol_list_off_molecule_symbol_formula for_smb_mol;;
let sym_atm_l = Msf_v.atom_symbol_list_off_molecule_symbol_formula for_smb_mol;;

test_number 1 (
smb_ama  (* : Molecule_aminoacid_symbol_t.regular_symbol *)
= 
Molecule_aminoacid_symbol_t.Alanine
);;

test_number 2 (
smb_mol (* : Molecule_aminoacid_symbol_t.molecule_symbol *)
= 
Molecule_aminoacid_symbol_t.Molecule_aminoacid_regular_symbol Molecule_aminoacid_symbol_t.Alanine
);;

test_number 3 (
 for_smb_mol (* : Molecule_symbol_formula_t.molecule_symbol_formula *)
=
(Molecule_symbol_formula_t.Msf_t.Fragment_tag_t.Zeroend_fragment_symbol
  (Molecule_symbol_formula_t.Msf_t.Fragment_tag_t.Zerofork_fragment_symbol
    (Molecule_symbol_formula_t.Msf_t.Fragment_tag_t.Zerobifork_fragment_symbol
      Molecule_symbol_formula_t.Msf_t.Fragment_tag_t.Zbf_O_h_CdodC_h_)),
 [Molecule_symbol_formula_t.Msf_t.Mcf_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
   (Molecule_symbol_formula_t.Msf_t.Fragment_tag_t.Onezero_block_symbol
     (Molecule_symbol_formula_t.Msf_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
       Molecule_symbol_formula_t.Msf_t.Fragment_tag_t.Block_symbol_t.Osz_C_h_3));
  Molecule_symbol_formula_t.Msf_t.Mcf_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
   (Molecule_symbol_formula_t.Msf_t.Fragment_tag_t.Onezero_block_symbol
     (Molecule_symbol_formula_t.Msf_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
       Molecule_symbol_formula_t.Msf_t.Fragment_tag_t.Block_symbol_t.Osz_N_h_2))])
);;

test_number 4 (
Asf_v.name for_smb_ama 
  = (* "Zbf_O_h_CdodC_h_ [Osz_C_h_3 Osz_N_h_2]" *)
"(Zbf_O_h_CdodC_h_,Osz_C_h_3Osz_N_h_2)" 
);;

test_number 5 (
smb_frg_l (* : Fragment_symbol_t.fragment_symbol list *)
=
[Fragment_symbol_t.Head_fragment_symbol
  (Fragment_symbol_t.Zeroend_fragment_symbol
    (Fragment_symbol_t.Zerofork_fragment_symbol
      (Fragment_symbol_t.Zerobifork_fragment_symbol
        Fragment_symbol_t.Zbf_O_h_CdodC_h_)));
 Fragment_symbol_t.Leaf_fragment_symbol
  (Fragment_symbol_t.Onezero_block_symbol
    (Fragment_symbol_t.Block_symbol_t.Onesinglezero_block_symbol
      Fragment_symbol_t.Block_symbol_t.Osz_C_h_3));
 Fragment_symbol_t.Leaf_fragment_symbol
  (Fragment_symbol_t.Onezero_block_symbol
    (Fragment_symbol_t.Block_symbol_t.Onesinglezero_block_symbol
      Fragment_symbol_t.Block_symbol_t.Osz_N_h_2))]
);; 

test_number 6 (
smb_blk_l (* : Block_symbol_t.block_symbol list *)
=
[Block_symbol_t.Block_zeroone_symbol
  (Block_symbol_t.Zeroonesingle_block_symbol Block_symbol_t.Zos_O_h_);
 Block_symbol_t.Block_oneone_symbol
  (Block_symbol_t.Onesingleonesingle_block_symbol Block_symbol_t.Osos_Cdod);
 Block_symbol_t.Block_oneend_symbol
  (Block_symbol_t.Onefork_block_symbol
    (Block_symbol_t.Onebifork_block_symbol
      (Block_symbol_t.Onesinglebiforksinglesingle_block_symbol
        Block_symbol_t.Osbss_C_h_)));
 Block_symbol_t.Block_oneend_symbol
  (Block_symbol_t.Onezero_block_symbol
    (Block_symbol_t.Onesinglezero_block_symbol Block_symbol_t.Osz_C_h_3));
 Block_symbol_t.Block_oneend_symbol
  (Block_symbol_t.Onezero_block_symbol
    (Block_symbol_t.Onesinglezero_block_symbol Block_symbol_t.Osz_N_h_2))]
);;

test_number 7 (
smb_atm_l (* : Atom_symbol_t.atom_symbol list *) 
=
[
Atom_symbol_v.o_; Atom_symbol_v.h_;
Atom_symbol_v.cd; Atom_symbol_v.od;                       (* Cc Oc Nc *)
Atom_symbol_v.c_; Atom_symbol_v.h_;                       (* CaHa *)
Atom_symbol_v.c_; Atom_symbol_v.h_; Atom_symbol_v.h_; Atom_symbol_v.h_; 
Atom_symbol_v.n_; Atom_symbol_v.h_; Atom_symbol_v.h_; 
]
);;

