(* $Id: Exp $ *)

open Make_test_v;;

testing "Atom_keypdb_sidechain_v";;

(* toplevel #use "tatom_keypdb_sidechain_v.ml";; *)

let pth_top = Path_t.Top "Test_Polypeptide_pag";;

let pth_plp = 
  Path_t.Level
    ((Path_t.Polypeptide,
      Path_t.Polypeptide_symbol
        {Polypeptide_symbol_t.identifier =
         (Protein_identifier_t.Frames "pag",
          Polypeptide_identifier_t.Chain_blank);
         Polypeptide_symbol_t.nterminal_head = Fragment_symbol_t.Nh2p;
         Polypeptide_symbol_t.cterminal = Fragment_symbol_t.Coom},
      Path_t.Can 0),
     Path_t.Level
       ((Path_t.Protein,
         Path_t.Protein_symbol (Protein_identifier_t.Frames "pag"),
         Path_t.Can 0),
        Path_t.Level
          ((Path_t.System,
            Path_t.System_symbol System_symbol_t.Sys_coffer_one_mole, 
	    Path_t.Can 0),
           Path_t.Level
             ((Path_t.Simulation,
               Path_t.Simulation_symbol 
		 Simulation_symbol_t.Sim_nsys_coffer_one_mole,
               Path_t.Can 0), pth_top)))) 
;;

let pth_ntl_pro =
  Path_t.Spine
    ((Path_t.Nterminal,
      Path_t.Nterminal_symbol
        ((Aminoacid_symbol_t.Pro, Protonation_state_t.Abs),
         Fragment_symbol_t.Nh2p),
      Path_t.Head), pth_plp)
;;

let pth_frg_pro =
  Path_t.Spine
   ((Path_t.Fragment, Path_t.Fragment_symbol Fragment_symbol_t.Ch2r3,
     Path_t.Alone),
   Path_t.Left
    ((Path_t.Sidechain,
      Path_t.Sidechain_symbol
       (Aminoacid_symbol_t.Pro, Protonation_state_t.Abs),
      Path_t.Alone),
    Path_t.Spine
     ((Path_t.Fragment, Path_t.Fragment_symbol Fragment_symbol_t.Nh2pch,
       Path_t.Head),
     Path_t.Spine
      ((Path_t.Nterminal,
        Path_t.Nterminal_symbol
         ((Aminoacid_symbol_t.Pro, Protonation_state_t.Abs),
          Fragment_symbol_t.Nh2p),
        Path_t.Head), pth_plp))))
;;

let pth_blb_pro = (* Ch2 Beta in Sidechain of Pro *)
 Path_t.Level
  ((Path_t.Block, Path_t.Block_symbol Block_symbol_t.Ch2, Path_t.Head),
   pth_frg_pro)
;;

let pth_cb_pro = (* C of Cb in Sidechain of Pro *)
Path_t.Level
 ((Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
   Path_t.Web Path_t.W_elder), pth_blb_pro)
;;

let pth_2hb_pro = (* C of Cb in Sidechain of Pro *)
Path_t.Level
 ((Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.H),
   Path_t.Web Path_t.W_up),
 Path_t.Level
  ((Path_t.Block, Path_t.Block_symbol Block_symbol_t.Ch2, Path_t.Head),
   pth_frg_pro))
;;

let pth_blg_pro = (* Ch2 Gamma in Sidechain of Pro *)
 Path_t.Level
  ((Path_t.Block, Path_t.Block_symbol Block_symbol_t.Ch2, Path_t.Vertebra 1),
 pth_frg_pro)
;;

let pth_cg_pro = (* C of Cg in Sidechain of Pro *)
Path_t.Level
 ((Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
   Path_t.Web Path_t.W_elder), pth_blg_pro)
;;

let pth_bld_pro = (* Ch2 Delta in Sidechain of Pro *)
 Path_t.Level
  ((Path_t.Block, Path_t.Block_symbol Block_symbol_t.Ch2, Path_t.Tail),
 pth_frg_pro)
;;

let pth_cd_pro = (* C of Cd in Sidechain of Pro *)
Path_t.Level
 ((Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
   Path_t.Web Path_t.W_elder), pth_bld_pro)
;;

let pth_ala =
    Path_t.Spine
     ((Path_t.Residue,
       Path_t.Residue_symbol
        (Aminoacid_symbol_t.Ala, Protonation_state_t.Abs),
       Path_t.Vertebra 1),
     Path_t.Spine
      ((Path_t.Peptidechain,
        Path_t.Peptidechain_symbol
         (Protein_identifier_t.Frames "pag",
          Polypeptide_identifier_t.Chain_blank),
        Path_t.Body), pth_plp))
;;

let pth_cb_ala = (* Cb of Sidechain of Ala *)
Path_t.Level
 ((Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
   Path_t.Web Path_t.W_elder),
 Path_t.Level
  ((Path_t.Block, Path_t.Block_symbol Block_symbol_t.Ch3, Path_t.Head),
  Path_t.Spine
   ((Path_t.Fragment, Path_t.Fragment_symbol Fragment_symbol_t.Ch3,
     Path_t.Alone),
   Path_t.Left
    ((Path_t.Sidechain,
      Path_t.Sidechain_symbol
       (Aminoacid_symbol_t.Ala, Protonation_state_t.Abs),
      Path_t.Alone),
    Path_t.Spine
     ((Path_t.Residue,
       Path_t.Residue_symbol
        (Aminoacid_symbol_t.Ala, Protonation_state_t.Abs),
       Path_t.Vertebra 1),
     Path_t.Spine
      ((Path_t.Peptidechain,
        Path_t.Peptidechain_symbol
         (Protein_identifier_t.Frames "pag",
          Polypeptide_identifier_t.Chain_blank),
        Path_t.Body), pth_plp))))))
;;

let lvl_blk = Path_v.extract_level_of_grain_of_path Path_t.Block pth_cb_pro;;

(** {6 Making from Path.} *)

test_number 1 (
lvl_blk
=
(Path_t.Block, Path_t.Block_symbol Block_symbol_t.Ch2, Path_t.Head)
);;

test_number 2 (
Atom_keypdb_sidechain_v.block_level_keypdb_of_block_path pth_blb_pro
=
(Keypdb_t.Block_symbol, Keypdb_t.Block_index Index_pdb_t.Remote_B)
);;

test_number 3 (
Atom_keypdb_sidechain_v.block_level_keypdb_of_block_path pth_blg_pro
=
(Keypdb_t.Block_symbol, Keypdb_t.Block_index Index_pdb_t.Remote_G)
);;

test_number 4 (
Atom_keypdb_sidechain_v.block_level_keypdb_of_block_path pth_bld_pro
=
(Keypdb_t.Block_symbol, Keypdb_t.Block_index Index_pdb_t.Remote_D)
);;

test_number 5 (
Atom_keypdb_sidechain_v.branch_level_keypdb_of_atom_path pth_cg_pro
=
(Keypdb_t.Branch_symbol, Keypdb_t.Branch_index Index_pdb_t.Branch_one)
);;

test_number 6 (
Atom_keypdb_sidechain_v.atom_partial_keypdb_of_atom_path pth_cb_pro
=
Keypdb_t.Level
 ((Keypdb_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
   Keypdb_t.Atom_index (Index_pdb_t.H_blank, Index_pdb_t.Alternate_blank)),
 Keypdb_t.Level
  ((Keypdb_t.Block_symbol, Keypdb_t.Block_index Index_pdb_t.Remote_B),
  Keypdb_t.Level
   ((Keypdb_t.Residue_symbol
      (Aminoacid_symbol_pdb_t.Standard Aminoacid_symbol_t.Pro),
     Keypdb_t.Residue_index (1, Index_pdb_t.Insertion_blank)),
   Keypdb_t.Partial_key)))
);;

test_number 7 (
Atom_keypdb_sidechain_v.atom_partial_keypdb_of_atom_path pth_2hb_pro
=
Keypdb_t.Level
 ((Keypdb_t.Atom_name (Atom_name_t.Element Mendeleev_t.H),
   Keypdb_t.Atom_index (Index_pdb_t.H_two, Index_pdb_t.Alternate_blank)),
 Keypdb_t.Level
  ((Keypdb_t.Block_symbol, Keypdb_t.Block_index Index_pdb_t.Remote_B),
  Keypdb_t.Level
   ((Keypdb_t.Residue_symbol
      (Aminoacid_symbol_pdb_t.Standard Aminoacid_symbol_t.Pro),
     Keypdb_t.Residue_index (1, Index_pdb_t.Insertion_blank)),
   Keypdb_t.Partial_key)))
);;

test_number 8 (
Atom_keypdb_sidechain_v.atom_partial_keypdb_of_atom_path pth_cg_pro
=
Keypdb_t.Level
 ((Keypdb_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
   Keypdb_t.Atom_index (Index_pdb_t.H_blank, Index_pdb_t.Alternate_blank)),
 Keypdb_t.Level
  ((Keypdb_t.Block_symbol, Keypdb_t.Block_index Index_pdb_t.Remote_G),
  Keypdb_t.Level
   ((Keypdb_t.Residue_symbol
      (Aminoacid_symbol_pdb_t.Standard Aminoacid_symbol_t.Pro),
     Keypdb_t.Residue_index (1, Index_pdb_t.Insertion_blank)),
   Keypdb_t.Partial_key)))
);;

test_number 9 (
Atom_keypdb_sidechain_v.atom_partial_keypdb_of_atom_path pth_cd_pro
=
Keypdb_t.Level
 ((Keypdb_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
   Keypdb_t.Atom_index (Index_pdb_t.H_blank, Index_pdb_t.Alternate_blank)),
 Keypdb_t.Level
  ((Keypdb_t.Block_symbol, Keypdb_t.Block_index Index_pdb_t.Remote_D),
  Keypdb_t.Level
   ((Keypdb_t.Residue_symbol
      (Aminoacid_symbol_pdb_t.Standard Aminoacid_symbol_t.Pro),
     Keypdb_t.Residue_index (1, Index_pdb_t.Insertion_blank)),
   Keypdb_t.Partial_key)))
);;

test_number 10 (
Atom_keypdb_sidechain_v.atom_partial_keypdb_of_atom_path pth_cb_ala
=
Keypdb_t.Level
 ((Keypdb_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
   Keypdb_t.Atom_index (Index_pdb_t.H_blank, Index_pdb_t.Alternate_blank)),
 Keypdb_t.Level
  ((Keypdb_t.Block_symbol, Keypdb_t.Block_index Index_pdb_t.Remote_B),
  Keypdb_t.Level
   ((Keypdb_t.Branch_symbol, Keypdb_t.Branch_index Index_pdb_t.Branch_one),
   Keypdb_t.Level
    ((Keypdb_t.Residue_symbol
       (Aminoacid_symbol_pdb_t.Standard Aminoacid_symbol_t.Ala),
      Keypdb_t.Residue_index (2, Index_pdb_t.Insertion_blank)),
    Keypdb_t.Partial_key))))
);;

