(* $Id: Exp $ *)

open Make_test_v;;

testing "Residue_keypdb_v";;

(* toplevel #use "tresidue_keypdb_v.ml";; *)

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

let pth_ca_pro =  (* C of Ca in Nh2pch of Pro *)
  Path_t.Level
    ((Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
      Path_t.Web Path_t.W_elder),
     Path_t.Level
       ((Path_t.Block, Path_t.Block_symbol Block_symbol_t.Ch, Path_t.Tail),
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

let pth_ntl_pro =
  Path_t.Spine
    ((Path_t.Nterminal,
      Path_t.Nterminal_symbol
        ((Aminoacid_symbol_t.Pro, Protonation_state_t.Abs),
         Fragment_symbol_t.Nh2p),
      Path_t.Head), pth_plp)
;;

let pth_cb_pro = (* C of Cb in Sidechain of Pro *)
Path_t.Level
 ((Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
   Path_t.Web Path_t.W_elder),
 Path_t.Level
  ((Path_t.Block, Path_t.Block_symbol Block_symbol_t.Ch2, Path_t.Head),
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
        Path_t.Head), pth_plp)))))
);;

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

let pth_cpt_ala = 
   Path_t.Spine
    ((Path_t.Capeptide, Path_t.Capeptide_symbol Aminoacid_symbol_t.Ala,
      Path_t.Alone), pth_ala)
;;

let pth_c_ala =  (* C of Co in Conhch of Ala *)
Path_t.Level
 ((Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
   Path_t.Web Path_t.W_elder),
 Path_t.Level
  ((Path_t.Block, Path_t.Block_symbol Block_symbol_t.Co, Path_t.Head),
  Path_t.Spine
   ((Path_t.Fragment, Path_t.Fragment_symbol Fragment_symbol_t.Conhch,
     Path_t.Alone),
   Path_t.Spine
    ((Path_t.Capeptide, Path_t.Capeptide_symbol Aminoacid_symbol_t.Ala,
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

let pth_ha_ala =  (* H of Ha in Capeptide of Ala *)
Path_t.Level
 ((Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.H),
   Path_t.Web Path_t.W_left),
 Path_t.Level
  ((Path_t.Block, Path_t.Block_symbol Block_symbol_t.Ch, Path_t.Tail),
  Path_t.Spine
   ((Path_t.Fragment, Path_t.Fragment_symbol Fragment_symbol_t.Conhch,
     Path_t.Alone), pth_cpt_ala)))
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

(** {6 from Atom Record.} *)

let str =
"ATOM    470 1HD1BALA A  25C      0.243  16.147  -1.682  0.57  5.46           H  ";;
let arp = Recordpdb_atom_v.atom_record_of_string str;;

test_number 1 (
Residue_keypdb_v.residue_level_keypdb_of_recordpdb_atom arp
=
  (Keypdb_t.Residue_symbol
  (Aminoacid_symbol_pdb_t.Standard Aminoacid_symbol_t.Ala),
  Keypdb_t.Residue_index (25, Index_pdb_t.Insertion_C))
);;

test_number 2 (
Residue_keypdb_v.residue_partial_keypdb_of_recordpdb_atom arp
=
Keypdb_t.Level
  ((Keypdb_t.Residue_symbol
      (Aminoacid_symbol_pdb_t.Standard Aminoacid_symbol_t.Ala),
    Keypdb_t.Residue_index (25, Index_pdb_t.Insertion_C)),
   Keypdb_t.Partial_key)
);;

(** {6 from Path.} *)

test_number 3 (
Residue_keypdb_v.residue_canonical_index_pdb_of_vertebra_index 1
=
2
);;

test_number 4 (
Residue_keypdb_v.insertion_index_pdb_of_vertebra_index 1
=
Index_pdb_t.Insertion_blank
);;

let lvl_co_ala =
 (Path_t.Block, Path_t.Block_symbol Block_symbol_t.Co, Path_t.Head);;

let lvl_nh_ala =
 (Path_t.Block, Path_t.Block_symbol Block_symbol_t.Nh, Path_t.Head);;

test_number 5 (
Residue_keypdb_v.residue_level_keypdb_of_block_level_of_capeptide_path 
lvl_co_ala  pth_cpt_ala
=
(Keypdb_t.Residue_symbol
  (Aminoacid_symbol_pdb_t.Standard Aminoacid_symbol_t.Ala),
 Keypdb_t.Residue_index (1, Index_pdb_t.Insertion_blank))
);;

test_number 6 (
Residue_keypdb_v.residue_level_keypdb_of_block_level_of_capeptide_path 
lvl_nh_ala  pth_cpt_ala
=
(Keypdb_t.Residue_symbol
  (Aminoacid_symbol_pdb_t.Standard Aminoacid_symbol_t.Ala),
 Keypdb_t.Residue_index (2, Index_pdb_t.Insertion_blank))
);;

test_number 7 (
Residue_keypdb_v.residue_level_keypdb_of_nterminal_head_path pth_ntl_pro
=
(Keypdb_t.Residue_symbol
  (Aminoacid_symbol_pdb_t.Standard Aminoacid_symbol_t.Pro),
 Keypdb_t.Residue_index (1, Index_pdb_t.Insertion_blank))
);;

test_number 8 (
Residue_keypdb_v.residue_level_keypdb_of_nterminal_sidechain_path pth_ntl_pro
=
(Keypdb_t.Residue_symbol
  (Aminoacid_symbol_pdb_t.Standard Aminoacid_symbol_t.Pro),
 Keypdb_t.Residue_index (1, Index_pdb_t.Insertion_blank))
);;

let pth_sdc_pro =
Path_t.Level
 ((Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
   Path_t.Web Path_t.W_elder),
 Path_t.Level
  ((Path_t.Block, Path_t.Block_symbol Block_symbol_t.Ch2, Path_t.Head),
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
        Path_t.Head), pth_plp))))))
;;

let pth_sdc_ala =
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

(*
test_number 9 (
Residue_keypdb_v.residue_level_keypdb_of_sidechain_path pth_sdc_pro
Residue_keypdb_v.residue_level_keypdb_of_sidechain_path pth_sdc_ala
*)
