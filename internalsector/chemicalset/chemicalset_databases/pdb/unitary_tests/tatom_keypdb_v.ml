(* $Id: Exp $ *)

open Make_test_v;;

testing "Atom_keypdb_v";;

(* toplevel #use "tatom_keypdb_v.ml";; *)

(** {From Recordpdb.} *)

let str =
"ATOM    470 1HD1ALEU A  25       0.243  16.147  -1.682  0.57  5.46           H  ";;
let arp = Recordpdb_atom_v.atom_record_of_string str;;

(** {From Path.} *)

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

let pth_nth_pro =
  Path_t.Spine
    ((Path_t.Fragment, Path_t.Fragment_symbol Fragment_symbol_t.Nh2pch,
      Path_t.Head), pth_plp)
;;

let pth_sdc_pro =
  Path_t.Spine
    ((Path_t.Fragment, Path_t.Fragment_symbol Fragment_symbol_t.Ch2r3,
      Path_t.Alone),
     Path_t.Left
       ((Path_t.Sidechain,
	 Path_t.Sidechain_symbol (Aminoacid_symbol_t.Pro, Protonation_state_t.Abs),
	 Path_t.Alone), pth_nth_pro)) 
;;

let pth_cpt_ala = 
  Path_t.Spine
    ((Path_t.Capeptide, Path_t.Capeptide_symbol Aminoacid_symbol_t.Ala,
      Path_t.Alone), pth_ala)
;;

let pth_sdc_ala =
  Path_t.Left
    ((Path_t.Sidechain,
      Path_t.Sidechain_symbol (Aminoacid_symbol_t.Ala, Protonation_state_t.Abs),
      Path_t.Alone), pth_ala)
;;

let pth_n_pro =  (* N of Nh2p in Nh2pch of Pro *)
  Path_t.Level
    ((Path_t.Atom,
      Path_t.Atom_name
	(Atom_name_t.Bonding (Atom_name_t.Element Mendeleev_t.N, 4)),
      Path_t.Web Path_t.W_elder),
     Path_t.Level
       ((Path_t.Block, Path_t.Block_symbol Block_symbol_t.Nh2p, Path_t.Head),
	pth_nth_pro))
;;

let pth_ca_pro =  (* C of Ca in Nh2pch of Pro *)
  Path_t.Level
    ((Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
      Path_t.Web Path_t.W_elder),
     Path_t.Level
       ((Path_t.Block, Path_t.Block_symbol Block_symbol_t.Ch, Path_t.Tail),
	pth_nth_pro))   
;;

let pth_blb_pro = (* Ch2 Beta in Sidechain of Pro *)
 Path_t.Level
  ((Path_t.Block, Path_t.Block_symbol Block_symbol_t.Ch2, Path_t.Head),
   pth_sdc_pro)
;;

let pth_blg_pro = (* Ch2 Gamma in Sidechain of Pro *)
 Path_t.Level
  ((Path_t.Block, Path_t.Block_symbol Block_symbol_t.Ch2, Path_t.Vertebra 1),
 pth_sdc_pro)
;;

let pth_bld_pro = (* Ch2 Delta in Sidechain of Pro *)
 Path_t.Level
  ((Path_t.Block, Path_t.Block_symbol Block_symbol_t.Ch2, Path_t.Tail),
 pth_sdc_pro)
;;

let pth_cb_pro = (* C of Cb in Sidechain of Pro *)
Path_t.Level
 ((Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
   Path_t.Web Path_t.W_elder), pth_blb_pro)
;; 

let pth_2hb_pro = (* C of Cb in Sidechain of Pro *)
Path_t.Level
 ((Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.H),
   Path_t.Web Path_t.W_up), pth_blb_pro)
;;

let pth_cg_pro = (* C of Cg in Sidechain of Pro *)
Path_t.Level
 ((Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
   Path_t.Web Path_t.W_elder), pth_blg_pro)
;;

let pth_cd_pro = (* C of Cd in Sidechain of Pro *)
Path_t.Level
 ((Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
   Path_t.Web Path_t.W_elder), pth_bld_pro)
;;

let pth_c_ala =  (* C of Co in Capeptide of Ala *)
Path_t.Level
 ((Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
   Path_t.Web Path_t.W_elder),
 Path_t.Level
  ((Path_t.Block, Path_t.Block_symbol Block_symbol_t.Co, Path_t.Head),
  Path_t.Spine
   ((Path_t.Fragment, Path_t.Fragment_symbol Fragment_symbol_t.Conhch,
     Path_t.Alone), pth_cpt_ala)))
;;

let pth_n_ala =  (* N of Nh in Capeptide of Ala *)
Path_t.Level
 ((Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.N),
   Path_t.Web Path_t.W_elder),
 Path_t.Level
  ((Path_t.Block, Path_t.Block_symbol Block_symbol_t.Nh, Path_t.Vertebra 1),
  Path_t.Spine
   ((Path_t.Fragment, Path_t.Fragment_symbol Fragment_symbol_t.Conhch,
     Path_t.Alone), pth_cpt_ala)))
;;

let pth_ca_ala =  (* C of Ch in Conhch of Ala *)
Path_t.Level
 ((Path_t.Atom, Path_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
   Path_t.Web Path_t.W_elder),
 Path_t.Level
  ((Path_t.Block, Path_t.Block_symbol Block_symbol_t.Ch, Path_t.Tail),
  Path_t.Spine
   ((Path_t.Fragment, Path_t.Fragment_symbol Fragment_symbol_t.Conhch,
     Path_t.Alone), pth_cpt_ala)))
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
     Path_t.Alone), pth_sdc_ala)))
;;

let lvl_blk = Path_v.extract_level_of_grain_of_path Path_t.Block pth_ca_pro;;

(** {6 Making from Path.} *)

test_number 1 (
lvl_blk
=
(Path_t.Block, Path_t.Block_symbol Block_symbol_t.Ch, Path_t.Tail)
);;
(*
test_number 2 (
Atom_keypdb_v.atom_partial_keypdb_of_atom_path pth_n_pro
=

);;
*)
test_number 3 (
Atom_keypdb_v.atom_partial_keypdb_of_atom_path pth_ca_pro
=
Keypdb_t.Level
 ((Keypdb_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
   Keypdb_t.Atom_index (Index_pdb_t.H_blank, Index_pdb_t.Alternate_blank)),
 Keypdb_t.Level
  ((Keypdb_t.Block_symbol, Keypdb_t.Block_index Index_pdb_t.Remote_A),
  Keypdb_t.Level
   ((Keypdb_t.Residue_symbol
      (Aminoacid_symbol_pdb_t.Standard Aminoacid_symbol_t.Pro),
     Keypdb_t.Residue_index (1, Index_pdb_t.Insertion_blank)),
   Keypdb_t.Partial_key)))
);;

test_number 4 (
Atom_keypdb_v.atom_partial_keypdb_of_atom_path pth_cb_pro
=
Keypdb_t.Level
 ((Keypdb_t.Atom_name (Atom_name_t.Element Mendeleev_t.H),
   Keypdb_t.Atom_index (Index_pdb_t.H_one, Index_pdb_t.Alternate_blank)),
 Keypdb_t.Level
  ((Keypdb_t.Block_symbol, Keypdb_t.Block_index Index_pdb_t.Remote_A),
  Keypdb_t.Level
   ((Keypdb_t.Residue_symbol
      (Aminoacid_symbol_pdb_t.Standard Aminoacid_symbol_t.Ala),
     Keypdb_t.Residue_index (2, Index_pdb_t.Insertion_blank)),
   Keypdb_t.Partial_key)))
);;

test_number 5 (
Atom_keypdb_v.atom_partial_keypdb_of_atom_path pth_cg_pro
=
Keypdb_t.Level
 ((Keypdb_t.Atom_name (Atom_name_t.Element Mendeleev_t.H),
   Keypdb_t.Atom_index (Index_pdb_t.H_one, Index_pdb_t.Alternate_blank)),
 Keypdb_t.Level
  ((Keypdb_t.Block_symbol, Keypdb_t.Block_index Index_pdb_t.Remote_A),
  Keypdb_t.Level
   ((Keypdb_t.Residue_symbol
      (Aminoacid_symbol_pdb_t.Standard Aminoacid_symbol_t.Ala),
     Keypdb_t.Residue_index (2, Index_pdb_t.Insertion_blank)),
   Keypdb_t.Partial_key)))
);;

test_number 6 (
Atom_keypdb_v.atom_partial_keypdb_of_atom_path pth_cd_pro
=
Keypdb_t.Level
 ((Keypdb_t.Atom_name (Atom_name_t.Element Mendeleev_t.H),
   Keypdb_t.Atom_index (Index_pdb_t.H_one, Index_pdb_t.Alternate_blank)),
 Keypdb_t.Level
  ((Keypdb_t.Block_symbol, Keypdb_t.Block_index Index_pdb_t.Remote_A),
  Keypdb_t.Level
   ((Keypdb_t.Residue_symbol
      (Aminoacid_symbol_pdb_t.Standard Aminoacid_symbol_t.Ala),
     Keypdb_t.Residue_index (2, Index_pdb_t.Insertion_blank)),
   Keypdb_t.Partial_key)))
);;

test_number 7 (
Atom_keypdb_v.atom_partial_keypdb_of_atom_path pth_c_ala (* Pdb C Pro *)
=
Keypdb_t.Level
 ((Keypdb_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
   Keypdb_t.Atom_index (Index_pdb_t.H_blank, Index_pdb_t.Alternate_blank)),
 Keypdb_t.Level
  ((Keypdb_t.Block_symbol, Keypdb_t.Block_index Index_pdb_t.Remote_blank),
  Keypdb_t.Level
   ((Keypdb_t.Residue_symbol
      (Aminoacid_symbol_pdb_t.Standard Aminoacid_symbol_t.Ala),
     Keypdb_t.Residue_index (1, Index_pdb_t.Insertion_blank)),
   Keypdb_t.Partial_key)))
);;


test_number 8 (
Atom_keypdb_v.atom_partial_keypdb_of_atom_path pth_n_ala (* Pdb N Ala *)
=
Keypdb_t.Level
 ((Keypdb_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
   Keypdb_t.Atom_index (Index_pdb_t.H_blank, Index_pdb_t.Alternate_blank)),
 Keypdb_t.Level
  ((Keypdb_t.Block_symbol, Keypdb_t.Block_index Index_pdb_t.Remote_blank),
  Keypdb_t.Level
   ((Keypdb_t.Residue_symbol
      (Aminoacid_symbol_pdb_t.Standard Aminoacid_symbol_t.Ala),
     Keypdb_t.Residue_index (1, Index_pdb_t.Insertion_blank)),
   Keypdb_t.Partial_key)))
);;


test_number 9 (
Atom_keypdb_v.atom_partial_keypdb_of_atom_path pth_ca_ala (* Pdb Ca Ala *)
=
Keypdb_t.Level
 ((Keypdb_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
   Keypdb_t.Atom_index (Index_pdb_t.H_blank, Index_pdb_t.Alternate_blank)),
 Keypdb_t.Level
  ((Keypdb_t.Block_symbol, Keypdb_t.Block_index Index_pdb_t.Remote_blank),
  Keypdb_t.Level
   ((Keypdb_t.Residue_symbol
      (Aminoacid_symbol_pdb_t.Standard Aminoacid_symbol_t.Ala),
     Keypdb_t.Residue_index (1, Index_pdb_t.Insertion_blank)),
   Keypdb_t.Partial_key)))
);;


test_number 10 (
Atom_keypdb_v.atom_partial_keypdb_of_atom_path pth_cb_ala (* Pdb Cb Ala *)
=
Keypdb_t.Level
 ((Keypdb_t.Atom_name (Atom_name_t.Element Mendeleev_t.C),
   Keypdb_t.Atom_index (Index_pdb_t.H_blank, Index_pdb_t.Alternate_blank)),
 Keypdb_t.Level
  ((Keypdb_t.Block_symbol, Keypdb_t.Block_index Index_pdb_t.Remote_blank),
  Keypdb_t.Level
   ((Keypdb_t.Residue_symbol
      (Aminoacid_symbol_pdb_t.Standard Aminoacid_symbol_t.Ala),
     Keypdb_t.Residue_index (1, Index_pdb_t.Insertion_blank)),
   Keypdb_t.Partial_key)))
);;


