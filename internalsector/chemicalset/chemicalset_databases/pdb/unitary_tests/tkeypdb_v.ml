(* $Id: Exp $ *)

open Make_test_v;;

testing "Keypdb_v";;

(* toplevel #use "tkeypdb_v.ml";; *)

let pri = Protein_identifier_t.Frames "gap" ;;
let fnm = File_pdb_v.file_name_pdb_of_protein_identifier pri;;

let key_top = Keypdb_t.Top;;
let key_prt = Keypdb_t.Partial_key;;

let idx_chn = Polypeptide_identifier_t.Chain_blank;;
let pli = (pri, idx_chn);;
let frm_plp =
  Polypeptide_formula_v.polypeptide_formula_of_polypeptide_identifier pli;; 
let sta_plp = Protonation_state_t.Zwitterion ;;

(** {6 Symbols.} *)

let sym_prn = pri;;
let sym_plp = Polypeptide_symbol_v.make pli sta_plp;;
let sym_ntl = Polypeptide_symbol_v.nterminal_symbol_of_polypeptide_symbol sym_plp;;
let sym_nfr = Polypeptide_symbol_v.nterminal_head_symbol_of_polypeptide_symbol sym_plp;;
let sym_chn = Peptidechain_symbol_v.peptidechain_symbol_of_polypeptide_symbol sym_plp;;
let sym_cfr = Polypeptide_symbol_v.cterminal_symbol_of_polypeptide_symbol sym_plp;;
let idx_rci = 2;;  (* canonical Ala *)
let idx_rsq = 2;;  (* sequence  Ala *)
let ini_res = Index_pdb_t.Insertion_blank;; 
let idx_res = (idx_rci, ini_res);;
let sym_res = frm_plp.(idx_rsq-1);;
let sym_ama = Residue_symbol_v.aminoacid_symbol_of_residue_symbol sym_res;;
let sym_pam = 
  Aminoacid_symbol_pdb_v.aminoacid_symbol_pdb_of_aminoacid_symbol sym_ama;;

(** {6 Levels.} *)

let lvl_prn = (Keypdb_t.Protein_symbol sym_prn, Keypdb_t.Can_index 0);;

test_number 1 (
lvl_prn
=
(Keypdb_t.Protein_symbol (Protein_identifier_t.Frames "gap"),
 Keypdb_t.Can_index 0)
);;

let lvl_plp = (Keypdb_t.Polypeptide_symbol sym_plp, 
	       Keypdb_t.Polypeptide_index idx_chn);;
test_number 2 (
lvl_plp
=
(Keypdb_t.Polypeptide_symbol
  {Polypeptide_symbol_t.identifier =
    (Protein_identifier_t.Frames "gap", Polypeptide_identifier_t.Chain_blank);
   Polypeptide_symbol_t.nterminal_head = Fragment_symbol_t.Nh3p;
   Polypeptide_symbol_t.cterminal = Fragment_symbol_t.Coom},
 Keypdb_t.Polypeptide_index Polypeptide_identifier_t.Chain_blank)
);;

let lvl_res = (Keypdb_t.Residue_symbol sym_pam,
	       Keypdb_t.Residue_index idx_res);;

test_number 3 (
lvl_res
=
(Keypdb_t.Residue_symbol (Aminoacid_symbol_pdb_t.Standard Aminoacid_symbol_t.Ala), 
 Keypdb_t.Residue_index (2, Index_pdb_t.Insertion_blank))
);;

let lvl_brn = (Keypdb_t.Branch_symbol,
	       Keypdb_t.Branch_index Index_pdb_t.Branch_blank);;

test_number 4 (
lvl_brn
=
(Keypdb_t.Branch_symbol, Keypdb_t.Branch_index Index_pdb_t.Branch_blank)
);;

let lvl_blk = (Keypdb_t.Block_symbol,
	       Keypdb_t.Block_index Index_pdb_t.Remote_B);;

test_number 5 (
lvl_blk
=
(Keypdb_t.Block_symbol, Keypdb_t.Block_index Index_pdb_t.Remote_B)
);;

let lvl_atm = (Keypdb_t.Atom_name Atom_v.c,
	       Keypdb_t.Atom_index 
		 (Index_pdb_t.H_blank, Index_pdb_t.Alternate_blank));;

test_number 6 (
lvl_atm
=
(Keypdb_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
 Keypdb_t.Atom_index (Index_pdb_t.H_blank, Index_pdb_t.Alternate_blank))
);;

(** {6 Keys.} *)

let key_prn = Keypdb_t.Level (lvl_prn, key_top);;
let key_plp = Keypdb_t.Level (lvl_plp, key_prn);; 
let key_res = Keypdb_t.Level (lvl_res, key_plp);;
let key_brn = Keypdb_t.Level (lvl_brn, key_res);;
let key_blk = Keypdb_t.Level (lvl_blk, key_brn);;
let key_atm = Keypdb_t.Level (lvl_atm, key_blk);;

test_number 7 ( 
key_atm   (* Cb Ala 2 of gap *)
=
Keypdb_t.Level
 ((Keypdb_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
   Keypdb_t.Atom_index (Index_pdb_t.H_blank, Index_pdb_t.Alternate_blank)),
 Keypdb_t.Level
  ((Keypdb_t.Block_symbol, Keypdb_t.Block_index Index_pdb_t.Remote_B),
  Keypdb_t.Level
   ((Keypdb_t.Branch_symbol,
     Keypdb_t.Branch_index Index_pdb_t.Branch_blank),
   Keypdb_t.Level
    ((Keypdb_t.Residue_symbol
       (Aminoacid_symbol_pdb_t.Standard Aminoacid_symbol_t.Ala), 
      Keypdb_t.Residue_index (2, Index_pdb_t.Insertion_blank)),
    Keypdb_t.Level
     ((Keypdb_t.Polypeptide_symbol
        {Polypeptide_symbol_t.identifier =
          (Protein_identifier_t.Frames "gap",
           Polypeptide_identifier_t.Chain_blank);
         Polypeptide_symbol_t.nterminal_head = Fragment_symbol_t.Nh3p;
         Polypeptide_symbol_t.cterminal = Fragment_symbol_t.Coom},
       Keypdb_t.Polypeptide_index Polypeptide_identifier_t.Chain_blank),
     Keypdb_t.Level
      ((Keypdb_t.Protein_symbol (Protein_identifier_t.Frames "gap"),
        Keypdb_t.Can_index 0),
      Keypdb_t.Top))))))
);;     
