(** {3 0tab_e Polypeptide regular formula constrained.} *)

open Make_test_v;;

testing "Polypeptide_regular_formula_constrained_v";;

(* toplevel 
   #use "tpolypeptide_regular_formula_constrained_v.ml";; 
*)


(* Polypeptide Regular Symbol *)

let sym_plr = Polypeptide_symbol_t.Tab_e;;
let sym_plp = Polypeptide_symbol_v.polypeptide_symbol_of_polypeptide_regular_symbol sym_plr;;

(* Polypeptide Regular Formula Constrained *)

let sci = Sole_index_v.cnt;;
let foc_plr = Polypeptide_regular_formula_constrained_v.retrieve sym_plr;;

test_number 1 (
Polypeptide_sequence_v.name (Polypeptide_sequence_v.make sym_plp)
=
"LIV"
);;

test_number 2 (
Polypeptide_regular_formula_constrained_v.capped_leafed_tree_of_polypeptide_regular_formula_constrained foc_plr
  =
frc_plr
);;

test_number 3 (
Polypeptide_regular_formula_constrained_v.name foc_plr 
(* : string *)
=
"((Zbf_N_h_2C_h_,head),{((P0_Oo_CcocNch_C_h_2,Obf_CcocNch_C_h_),str)[{((P0_Oo_CcocNch_C_h_2,Obf_CcocNch_C_h_),str)[((P0_Oo_CcocNch_C_h_2,Oz_CdodO_h_),str) {(Osbss_C_h_,stl)[(Osz_C_h_3,str) (Osz_C_h_3,stl)]}]} {(Osbss_C_h_,stl)[(Oz_C_h_2C_h_3,str) (Osz_C_h_3,stl)]}]}{(Obf_C_h_2C_h_,stl)[(Osz_C_h_3,str) (Osz_C_h_3,str)]})"
);;

test_number 4 (
frc_plr
(* : Polypeptide_regular_formula_constrained_t.polypeptide_regular_formula_constrained *)
=
((Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Zerofork_fragment_symbol
   (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Zerobifork_fragment_symbol
     Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Zbf_N_h_2C_h_),
  Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Sequential_index
   Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Head),
 [Polypeptide_regular_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Node
   ((Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Buried_segment_extends_buried_fragment_symbol
      (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Polysegment_symbol
        (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Index_p.make
          0,
         Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oneone_segment_symbol
          Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
       Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
        (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
          Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Obf_CcocNch_C_h_)),
     Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
      (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
        Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_r)),
   [Polypeptide_regular_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Node
     ((Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Buried_segment_extends_buried_fragment_symbol
        (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Polysegment_symbol
          (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Index_p.make
            0,
           Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oneone_segment_symbol
            Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
         Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
          (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
            Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Obf_CcocNch_C_h_)),
       Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
        (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
          Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_r)),
     [Polypeptide_regular_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
       (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Buried_segment_extends_leaf_fragment_symbol
         (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Polysegment_symbol
           (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Index_p.make
             0,
            Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oneone_segment_symbol
             Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
          Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Onezero_fragment_symbol
           Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Oz_CdodO_h_),
        Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
         (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
           Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_r));
      Polypeptide_regular_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Node
       ((Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Onefork_block_symbol
          (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onebifork_block_symbol
            (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglebiforksinglesingle_block_symbol
              Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osbss_C_h_)),
         Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
          (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
            Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_l)),
       [Polypeptide_regular_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
         (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
           (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
             Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_C_h_3),
          Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
           (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
             Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_r));
        Polypeptide_regular_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
         (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
           (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
             Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_C_h_3),
          Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
           (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
             Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_l))])]);
    Polypeptide_regular_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Node
     ((Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Onefork_block_symbol
        (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onebifork_block_symbol
          (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglebiforksinglesingle_block_symbol
            Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osbss_C_h_)),
       Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
        (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
          Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_l)),
     [Polypeptide_regular_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
       (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Onezero_fragment_symbol
         Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Oz_C_h_2C_h_3,
        Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
         (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
           Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_r));
      Polypeptide_regular_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
       (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
         (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
           Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_C_h_3),
        Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
         (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
           Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_l))])]);
  Polypeptide_regular_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Node
   ((Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
      (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
        Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Obf_C_h_2C_h_),
     Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
      (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
        Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_l)),
   [Polypeptide_regular_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
     (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
       (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
         Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_C_h_3),
      Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
       (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
         Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_r));
    Polypeptide_regular_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
     (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
       (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
         Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_C_h_3),
      Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
       (Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
         Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_r))])])
);;
