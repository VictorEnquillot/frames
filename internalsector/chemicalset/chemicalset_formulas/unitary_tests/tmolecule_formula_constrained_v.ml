(** {3 Molecule Formula Constrained.} *)

open Make_test_v;;

testing "Molecule_formula_constrained_v";;

(* toplevel 
   #use "tmolecule_formula_constrained_v.ml";; 
*)


(** Molecule_linear : Water *)

let foc_water = Molecule_formula_constrained_v.retrieve Molecule_symbol_v.water;; 

(** Molecule : Tetrahedrane *)

(** Molecule Forked : *)

(** Molecule Aminoacid : Tryptophan *)

let foc_ala = Molecule_formula_constrained_v.retrieve Molecule_symbol_v.alanine;;

let foc_trp = Molecule_formula_constrained_v.retrieve Molecule_symbol_v.tryptophan;;

(** Molecule_bridged : Benzene *)

let foc_benzene = Molecule_formula_constrained_v.retrieve Molecule_symbol_v.benzene;;

(** Molecule Nonbridged : Guanidine *)
let foc_gua = Molecule_formula_constrained_v.retrieve Molecule_symbol_v.guanidine;;

(** Water *)

test_number 1 (
Molecule_formula_constrained_v.name foc_water
(* : string *)
= 
"(Zz_O_h_2,head)"
);;

test_number 2 (
frc_water
(* : Molecule_formula_constrained_t.molecule_formula_constrained *)
=
Molecule_formula_constrained_t.Molecule_linear_formula_constrained
 (Molecule_formula_constrained_t.Molecule_linear_formula_constrained_t.Fragment_tag_t.Frs_t.Block_zerozero_symbol
   (Molecule_formula_constrained_t.Molecule_linear_formula_constrained_t.Fragment_tag_t.Frs_t.Block_zerozero_symbol_t.Block_zerozero_triatomic_symbol
     Molecule_formula_constrained_t.Molecule_linear_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Zz_O_h_2),
  Molecule_formula_constrained_t.Molecule_linear_formula_constrained_t.Fragment_tag_t.Sole_index_t.Sequential_index
   Molecule_formula_constrained_t.Molecule_linear_formula_constrained_t.Fragment_tag_t.Sole_index_t.Head)
);;

(** Alanine *)

test_number 3 (
Molecule_formula_constrained_v.name foc_ala
(* : string *)
= 
"((Zbf_O_h_CdodC_h_,head),(Osz_C_h_3,str)(Osz_N_h_2,stl))"
);;

test_number 4 (
frc_ala 
(* : Molecule_formula_constrained_t.molecule_formula_constrained *)
=
Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained
 (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained
   ((Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Zerofork_fragment_symbol
      (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Zerobifork_fragment_symbol
        Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Zbf_O_h_CdodC_h_),
     Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Sequential_index
      Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Head),
    [Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
      (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
        (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
          Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_C_h_3),
       Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
        (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
          Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_r));
     Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
      (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
        (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
          Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_N_h_2),
       Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
        (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
          Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_l))]))
);;

(** TRP *)

test_number 5 (
Molecule_formula_constrained_v.name foc_trp
(* : string *)
=
"((Zbf_O_h_CdodC_h_,head),{(Obf_Cch_Nch_Cc,str)[{(Obf_Cch_Nch_Cc,pto)[{(Obf_Cch_r4Cc,pto)[(Hbc,pto) (Hbc,ptb)]} (Hbc,ptb)]} (Hbc,ptb)]}(Osz_N_h_2,stl))"
);;

test_number 6 (
frc_trp
(* : Molecule_formula_constrained_t.molecule_formula_constrained *)
=
Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained
 (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained
   ((Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Zerofork_fragment_symbol
      (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Zerobifork_fragment_symbol
        Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Zbf_O_h_CdodC_h_),
     Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Sequential_index
      Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Head),
    [Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Node
      ((Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
         (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
           Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Obf_Cch_Nch_Cc),
        Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
         (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
           Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_r)),
      [Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Node
        ((Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
           (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
             Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Obf_Cch_Nch_Cc),
          Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_index
           (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
             Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Pt_o)),
        [Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Node
          ((Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
             (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
               Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Obf_Cch_r4Cc),
            Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_index
             (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
               Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Pt_o)),
          [Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
            (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Halfbridge_symbol
              Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Halfbridge_symbol_t.Hbc,
             Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_index
              (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
                Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Pt_o));
           Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
            (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Halfbridge_symbol
              Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Halfbridge_symbol_t.Hbc,
             Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_index
              (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
                Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Pt_b))]);
         Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
          (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Halfbridge_symbol
            Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Halfbridge_symbol_t.Hbc,
           Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_index
            (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
              Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Pt_b))]);
       Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
        (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Halfbridge_symbol
          Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Halfbridge_symbol_t.Hbc,
         Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_index
          (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
            Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Pt_b))]);
     Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
      (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
        (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
          Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_N_h_2),
       Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
        (Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
          Molecule_formula_constrained_t.Molecule_aminoacid_formula_constrained_t.Molecule_aminoacid_fragmented_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_l))]))
);;

test_number 7 (
Molecule_formula_constrained_v.name foc_benzene
(* : string *)
  =
"((Zbf_Cch_,head),(B_Cch_r5Bc,pto)(Hbc,ptb))"
);;

test_number 8 (
frc_benzene
(* : Molecule_formula_constrained_t.molecule_formula_constrained *)
=
Molecule_formula_constrained_t.Molecule_bridged_formula_constrained
 ((Molecule_formula_constrained_t.Molecule_bridged_formula_constrained_t.Fragment_tag_t.Frs_t.Block_zerofork_symbol
    (Molecule_formula_constrained_t.Molecule_bridged_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Block_zerobifork_symbol
      Molecule_formula_constrained_t.Molecule_bridged_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Zbf_Cch_),
   Molecule_formula_constrained_t.Molecule_bridged_formula_constrained_t.Fragment_tag_t.Sole_index_t.Sequential_index
    Molecule_formula_constrained_t.Molecule_bridged_formula_constrained_t.Fragment_tag_t.Sole_index_t.Head),
  [Molecule_formula_constrained_t.Molecule_bridged_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
    (Molecule_formula_constrained_t.Molecule_bridged_formula_constrained_t.Fragment_tag_t.Frs_t.Halfbridgetail_fragment_symbol
      Molecule_formula_constrained_t.Molecule_bridged_formula_constrained_t.Fragment_tag_t.Frs_t.B_Cch_r5Bc,
     Molecule_formula_constrained_t.Molecule_bridged_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_index
      (Molecule_formula_constrained_t.Molecule_bridged_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
        Molecule_formula_constrained_t.Molecule_bridged_formula_constrained_t.Fragment_tag_t.Sole_index_t.Pt_o));
   Molecule_formula_constrained_t.Molecule_bridged_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
    (Molecule_formula_constrained_t.Molecule_bridged_formula_constrained_t.Fragment_tag_t.Frs_t.Halfbridge_symbol
      Molecule_formula_constrained_t.Molecule_bridged_formula_constrained_t.Fragment_tag_t.Frs_t.Halfbridge_symbol_t.Hbc,
     Molecule_formula_constrained_t.Molecule_bridged_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_index
      (Molecule_formula_constrained_t.Molecule_bridged_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
        Molecule_formula_constrained_t.Molecule_bridged_formula_constrained_t.Fragment_tag_t.Sole_index_t.Pt_b))])
);;

test_number 9 (
Molecule_formula_constrained_v.name foc_gua
(* : string *)
  =
"((Zbf_N_h_2Cd,ptc),(Osz_N_h_2,pto)(Odz_Ndh_,ptb))"
);;

test_number 10 (
frc_gua
(* : Molecule_formula_constrained_t.molecule_formula_constrained *)
=
Molecule_formula_constrained_t.Molecule_forked_formula_constrained
 ((Molecule_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Zerofork_fragment_symbol
    (Molecule_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Zerobifork_fragment_symbol
      Molecule_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Zbf_N_h_2Cd),
   Molecule_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_index
    (Molecule_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
      Molecule_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Pt_c)),
  [Molecule_formula_constrained_t.Molecule_forked_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
    (Molecule_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
      (Molecule_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
        Molecule_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_N_h_2),
     Molecule_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_index
      (Molecule_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
        Molecule_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Pt_o));
   Molecule_formula_constrained_t.Molecule_forked_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
    (Molecule_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
      (Molecule_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onedoublezero_block_symbol
        Molecule_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Odz_Ndh_),
     Molecule_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_index
      (Molecule_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Planar_trigonal_index
        Molecule_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Sole_index_t.Pt_b))])
);;

