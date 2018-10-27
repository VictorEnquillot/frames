(** {3 0tab_f Polypeptide formula constrained.} *)

open Make_test_v;;

testing "0tab_f Polypeptide_formula_constrained_v";;

(* toplevel 
   #use "t0tab_f_polypeptide_formula_constrained_v.ml";; 
*)


(* Polypeptide Symbol *)

let nam_prn = "0tab";;
let sym_plr = Polypeptide_symbol_t.Frompdbid (nam_prn ^ "_f");;
let sym_plp = Polypeptide_symbol_v.polypeptide_symbol_of_polypeptide_regular_symbol sym_plr;;

(* Polypeptide Symbol Formula  *)

let foc_plp = Polypeptide_formula_constrained_v.retrieve sym_plp;;

test_number 1 (
Polypeptide_sequence_v.name (Polypeptide_sequence_v.make sym_plp)
=
"GGAGS"
);;

test_number 2 (
Polypeptide_formula_constrained_v.name foc_plp 
(* : string *)
  =
"(((Zo_N_h_2C_h_2,(P1_Oo_CcocNch_C_h_2,Obf_CcocNch_C_h_)),head),{((P1_Oo_CcocNch_C_h_2,Obf_CcocNch_C_h_),str)[((P0_Oo_CcocNch_C_h_2,Oz_CdodO_h_),str) (Oz_C_h_2O_h_,stl)]}(Osz_C_h_3,stl))"
);;

test_number 3 (
frc_plp 
(* : Polypeptide_formula_constrained_t.polypeptide_formula_constrained *)
=
Polypeptide_formula_constrained_t.Polypeptide_regular
 ((Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Head_segment_extends_buried_fragment_symbol
    (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Zeroone_segment_symbol
      Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Zo_N_h_2C_h_2,
     Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Buried_segment_extends_buried_fragment_symbol
      (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Polysegment_symbol
        (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Index_p.make
          1,
         Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oneone_segment_symbol
          Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
       Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
        (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
          Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Obf_CcocNch_C_h_))),
   Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Sequential_index
    Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Head),
  [Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Node
    ((Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Buried_segment_extends_buried_fragment_symbol
       (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Polysegment_symbol
         (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Index_p.make
           1,
          Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oneone_segment_symbol
           Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
        Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Onefork_fragment_symbol
         (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Onebifork_fragment_symbol
           Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Obf_CcocNch_C_h_)),
      Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
       (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
         Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_r)),
    [Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
      (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Buried_segment_extends_leaf_fragment_symbol
        (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Polysegment_symbol
          (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Index_p.make
            0,
           Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oneone_segment_symbol
            Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Segment_symbol_t.Oo_CcocNch_C_h_2),
         Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Onezero_fragment_symbol
          Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Oz_CdodO_h_),
       Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
        (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
          Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_r));
     Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
      (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Onezero_fragment_symbol
        Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Oz_C_h_2O_h_,
       Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
        (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
          Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_l))]);
   Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Capped_leafed_tree_t.Leafed_tree_t.Leaf
    (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Onezero_block_symbol
      (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Onesinglezero_block_symbol
        Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Frs_t.Block_symbol_t.Osz_C_h_3),
     Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_index
      (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.Spherical_tetrahedral_index
        Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Fragment_tag_t.Sole_index_t.St_l))])
);;
