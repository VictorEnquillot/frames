open Make_test_v;;

(** {3 Molecule Formula.} *)

testing "Molecule_formula_v";;

(* toplevel 
   #use "tmolecule_formula_v.ml";; 
*)


(** Molecule_linear : Water *)

let for_water = Mof_v.make Molecule_symbol_v.water;; 

(** Molecule : Tetrahedrane *)

(** Molecule Forked : *)

(** Molecule Aminoacid : Tryptophan *)

let for_ala = Mof_v.make Molecule_symbol_v.alanine;;

let for_trp = Mof_v.make Molecule_symbol_v.tryptophan;;

(** Molecule_bridged : Benzene *)

let for_benzene = Mof_v.make Molecule_symbol_v.benzene;;

(** Molecule Nonbridged : Guanidine *)
let for_gua = Mof_v.make Molecule_symbol_v.guanidine;;

(** Water *)

test_number 1 (
frm_water
(* : Molecule_formula_t.molecule_formula *)
=
Molecule_formula_t.Tree_t.Leaf
 (Molecule_formula_t.Fragment_tag_t.Frs_t.Closed_fragment_symbol
   (Molecule_formula_t.Fragment_tag_t.Frs_t.Block_zerozero_symbol
     (Molecule_formula_t.Fragment_tag_t.Frs_t.Block_zerozero_symbol_t.Block_zerozero_triatomic_symbol
       Molecule_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Zz_O_h_2)),
  Molecule_formula_t.Fragment_tag_t.Sole_index_t.Sequential_index
   Molecule_formula_t.Fragment_tag_t.Sole_index_t.Head)
);;

test_number 2 (
Mof_v.name for_water
  =
"(Zz_O_h_2,head)"
);;

(** Alanine *)

test_number 3 (
frm_ala
(* : Molecule_formula_t.molecule_formula *)
=
Molecule_formula_t.Tree_t.Node
 ((Molecule_formula_t.Fragment_tag_t.Frs_t.Head_fragment_symbol
    (Molecule_formula_t.Fragment_tag_t.Frs_t.Zerofork_fragment_symbol
      (Molecule_formula_t.Fragment_tag_t.Frs_t.Zerobifork_fragment_symbol
        Molecule_formula_t.Fragment_tag_t.Frs_t.Zbf_O_h_CdodC_h_)),
   Molecule_formula_t.Fragment_tag_t.Sole_index_t.Sequential_index
    Molecule_formula_t.Fragment_tag_t.Sole_index_t.Head),
 [Molecule_formula_t.Tree_t.Leaf
   (Molecule_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
     (Molecule_formula_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
       (Molecule_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
         Molecule_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_C_h_3)),
    Molecule_formula_t.Fragment_tag_t.Sole_index_t.Spherical_index
     (Molecule_formula_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
       Molecule_formula_t.Fragment_tag_t.Sole_index_t.St_r));
  Molecule_formula_t.Tree_t.Leaf
   (Molecule_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
     (Molecule_formula_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
       (Molecule_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
         Molecule_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_N_h_2)),
    Molecule_formula_t.Fragment_tag_t.Sole_index_t.Spherical_index
     (Molecule_formula_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
       Molecule_formula_t.Fragment_tag_t.Sole_index_t.St_l))])
);;

test_number 4 (
Mof_v.name for_ala
(* : string *)
  =
"{(Zbf_O_h_CdodC_h_,head)[(Osz_C_h_3,str) (Osz_N_h_2,stl)]}"
);;

(** TRP *)

test_number 5 (
frm_trp
(* : Molecule_formula_t.molecule_formula *)
=
Molecule_formula_t.Tree_t.Node
 ((Molecule_formula_t.Fragment_tag_t.Frs_t.Head_fragment_symbol
    (Molecule_formula_t.Fragment_tag_t.Frs_t.Zerofork_fragment_symbol
      (Molecule_formula_t.Fragment_tag_t.Frs_t.Zerobifork_fragment_symbol
        Molecule_formula_t.Fragment_tag_t.Frs_t.Zbf_O_h_CdodC_h_)),
   Molecule_formula_t.Fragment_tag_t.Sole_index_t.Sequential_index
    Molecule_formula_t.Fragment_tag_t.Sole_index_t.Head),
 [Molecule_formula_t.Tree_t.Node
   ((Molecule_formula_t.Fragment_tag_t.Frs_t.Buried_fragment_symbol
      (Molecule_formula_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
        (Molecule_formula_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
          Molecule_formula_t.Fragment_tag_t.Frs_t.Obf_Cch_Nch_Cc)),
     Molecule_formula_t.Fragment_tag_t.Sole_index_t.Spherical_index
      (Molecule_formula_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
        Molecule_formula_t.Fragment_tag_t.Sole_index_t.St_r)),
   [Molecule_formula_t.Tree_t.Node
     ((Molecule_formula_t.Fragment_tag_t.Frs_t.Buried_fragment_symbol
        (Molecule_formula_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
          (Molecule_formula_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
            Molecule_formula_t.Fragment_tag_t.Frs_t.Obf_Cch_Nch_Cc)),
       Molecule_formula_t.Fragment_tag_t.Sole_index_t.Planar_index
        (Molecule_formula_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
          Molecule_formula_t.Fragment_tag_t.Sole_index_t.Pt_o)),
     [Molecule_formula_t.Tree_t.Node
       ((Molecule_formula_t.Fragment_tag_t.Frs_t.Buried_fragment_symbol
          (Molecule_formula_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
            (Molecule_formula_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
              Molecule_formula_t.Fragment_tag_t.Frs_t.Obf_Cch_r4Cc)),
         Molecule_formula_t.Fragment_tag_t.Sole_index_t.Planar_index
          (Molecule_formula_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
            Molecule_formula_t.Fragment_tag_t.Sole_index_t.Pt_o)),
       [Molecule_formula_t.Tree_t.Leaf
         (Molecule_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
           (Molecule_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol
             Molecule_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol_t.Hbc),
          Molecule_formula_t.Fragment_tag_t.Sole_index_t.Planar_index
           (Molecule_formula_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
             Molecule_formula_t.Fragment_tag_t.Sole_index_t.Pt_o));
        Molecule_formula_t.Tree_t.Leaf
         (Molecule_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
           (Molecule_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol
             Molecule_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol_t.Hbc),
          Molecule_formula_t.Fragment_tag_t.Sole_index_t.Planar_index
           (Molecule_formula_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
             Molecule_formula_t.Fragment_tag_t.Sole_index_t.Pt_b))]);
      Molecule_formula_t.Tree_t.Leaf
       (Molecule_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
         (Molecule_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol
           Molecule_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol_t.Hbc),
        Molecule_formula_t.Fragment_tag_t.Sole_index_t.Planar_index
         (Molecule_formula_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
           Molecule_formula_t.Fragment_tag_t.Sole_index_t.Pt_b))]);
    Molecule_formula_t.Tree_t.Leaf
     (Molecule_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
       (Molecule_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol
         Molecule_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol_t.Hbc),
      Molecule_formula_t.Fragment_tag_t.Sole_index_t.Planar_index
       (Molecule_formula_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
         Molecule_formula_t.Fragment_tag_t.Sole_index_t.Pt_b))]);
  Molecule_formula_t.Tree_t.Leaf
   (Molecule_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
     (Molecule_formula_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
       (Molecule_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
         Molecule_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_N_h_2)),
    Molecule_formula_t.Fragment_tag_t.Sole_index_t.Spherical_index
     (Molecule_formula_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
       Molecule_formula_t.Fragment_tag_t.Sole_index_t.St_l))])
);;

test_number 6 (
Mof_v.name for_trp
(* : string *)
  =
"{(Zbf_O_h_CdodC_h_,head)[{(Obf_Cch_Nch_Cc,str)[{(Obf_Cch_Nch_Cc,pto)[{(Obf_Cch_r4Cc,pto)[(Hbc,pto) (Hbc,ptb)]} (Hbc,ptb)]} (Hbc,ptb)]} (Osz_N_h_2,stl)]}"
);;

test_number 7 (
frm_benzene
(* : Molecule_formula_t.molecule_formula *)
=
Molecule_formula_t.Tree_t.Node
 ((Molecule_formula_t.Fragment_tag_t.Frs_t.Head_fragment_symbol
    (Molecule_formula_t.Fragment_tag_t.Frs_t.Block_zerofork_symbol
      (Molecule_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Block_zerobifork_symbol
        Molecule_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Zbf_Cch_)),
   Molecule_formula_t.Fragment_tag_t.Sole_index_t.Sequential_index
    Molecule_formula_t.Fragment_tag_t.Sole_index_t.Head),
 [Molecule_formula_t.Tree_t.Leaf
   (Molecule_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
     (Molecule_formula_t.Fragment_tag_t.Frs_t.Halfbridgetail_fragment_symbol
       Molecule_formula_t.Fragment_tag_t.Frs_t.B_Cch_r5Bc),
    Molecule_formula_t.Fragment_tag_t.Sole_index_t.Planar_index
     (Molecule_formula_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
       Molecule_formula_t.Fragment_tag_t.Sole_index_t.Pt_o));
  Molecule_formula_t.Tree_t.Leaf
   (Molecule_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
     (Molecule_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol
       Molecule_formula_t.Fragment_tag_t.Frs_t.Halfbridge_symbol_t.Hbc),
    Molecule_formula_t.Fragment_tag_t.Sole_index_t.Planar_index
     (Molecule_formula_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
       Molecule_formula_t.Fragment_tag_t.Sole_index_t.Pt_b))])
);;

test_number 8 (
Mof_v.name for_benzene
(* : string *)
  =
"{(Zbf_Cch_,head)[(B_Cch_r5Bc,pto) (Hbc,ptb)]}"
);;

test_number 9 (
frm_gua
(* : Molecule_formula_t.molecule_formula *)
=
Molecule_formula_t.Tree_t.Node
 ((Molecule_formula_t.Fragment_tag_t.Frs_t.Head_fragment_symbol
    (Molecule_formula_t.Fragment_tag_t.Frs_t.Zerofork_fragment_symbol
      (Molecule_formula_t.Fragment_tag_t.Frs_t.Zerobifork_fragment_symbol
        Molecule_formula_t.Fragment_tag_t.Frs_t.Zbf_N_h_2Cd)),
   Molecule_formula_t.Fragment_tag_t.Sole_index_t.Planar_index
    (Molecule_formula_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
      Molecule_formula_t.Fragment_tag_t.Sole_index_t.Pt_c)),
 [Molecule_formula_t.Tree_t.Leaf
   (Molecule_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
     (Molecule_formula_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
       (Molecule_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
         Molecule_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_N_h_2)),
    Molecule_formula_t.Fragment_tag_t.Sole_index_t.Planar_index
     (Molecule_formula_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
       Molecule_formula_t.Fragment_tag_t.Sole_index_t.Pt_o));
  Molecule_formula_t.Tree_t.Leaf
   (Molecule_formula_t.Fragment_tag_t.Frs_t.Leaf_fragment_symbol
     (Molecule_formula_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
       (Molecule_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onedoublezero_block_symbol
         Molecule_formula_t.Fragment_tag_t.Frs_t.Block_symbol_t.Odz_Ndh_)),
    Molecule_formula_t.Fragment_tag_t.Sole_index_t.Planar_index
     (Molecule_formula_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
       Molecule_formula_t.Fragment_tag_t.Sole_index_t.Pt_b))])
);;

test_number 10 (
Mof_v.name for_gua
(* : string *)
  =
"{(Zbf_N_h_2Cd,ptc)[(Osz_N_h_2,pto) (Odz_Ndh_,ptb)]}"
);;

