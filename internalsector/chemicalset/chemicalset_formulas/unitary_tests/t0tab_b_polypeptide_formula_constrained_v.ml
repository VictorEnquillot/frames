(** {3 0tab_b Polypeptide formula constrained.} *)

open Make_test_v;;

testing "0tab_b Polypeptide_formula_constrained_v";;

(* toplevel 
   #use "t0tab_b_polypeptide_formula_constrained_v.ml";; 
*)


(* Polypeptide Symbol *)

let sym_plr = Polypeptide_symbol_t.Tab_b;;
let sym_plp = Polypeptide_symbol_v.polypeptide_symbol_of_polypeptide_regular_symbol sym_plr;;

(* Polypeptide Symbol Formula  *)

let foc_plp = Polypeptide_formula_constrained_v.retrieve sym_plp;;

test_number 1 (
Polypeptide_sequence_v.name (Polypeptide_sequence_v.make sym_plp)
=
"GP"
);;
(*
test_number 2 (
frc_plp
(* : Polypeptide_formula_constrained_t.polypeptide_formula_constrained *)
=
Polypeptide_formula_constrained_t.Polypeptide_regular
 (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Zerofork_fragment_symbol
   (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Zerobifork_fragment_symbol
     Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Zbf_N_h_2C_h_),
  [Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Capped_indexed_leafed_tree_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
    ((Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Buried_segment_extends_buried_fragment_symbol
       ([],
        Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
         (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
           Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Obf_CcocNch_C_h_)),
      Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Spherical_index
       (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
         Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.St_l)),
    [Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Capped_indexed_leafed_tree_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
      ((Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Buried_segment_extends_buried_fragment_symbol
         ([],
          Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
           (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
             Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Obf_CcocNch_C_h_)),
        Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Spherical_index
         (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
           Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.St_r)),
      [Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Capped_indexed_leafed_tree_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
        ((Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Buried_segment_extends_buried_fragment_symbol
           ([],
            Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
             (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
               Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Obf_CcocNch_C_h_)),
          Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Spherical_index
           (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
             Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.St_r)),
        [Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Capped_indexed_leafed_tree_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
          (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Buried_segment_extends_leaf_fragment_symbol
            ([Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Segment_symbol_t.Oneone_segment_symbol
               Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Segment_symbol_t.Oo_CcocNch_C_h_2],
             Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Onezero_fragment_symbol
              Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Oz_CdodO_h_),
           Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Spherical_index
            (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
              Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.St_r));
         Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Capped_indexed_leafed_tree_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
          ((Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
             (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
               Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Obf_Cch_Nch_Cc),
            Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Spherical_index
             (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
               Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.St_l)),
          [Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Capped_indexed_leafed_tree_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
            ((Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
               (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
                 Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Obf_Cch_Nch_Cc),
              Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Planar_index
               (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Planar_trigonal_index
                 Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Pt_o)),
            [Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Capped_indexed_leafed_tree_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
              ((Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
                 (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
                   Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Obf_Cch_r4Cc),
                Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Planar_index
                 (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Planar_trigonal_index
                   Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Pt_o)),
              [Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Capped_indexed_leafed_tree_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
                (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol
                  Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc,
                 Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Planar_index
                  (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Planar_trigonal_index
                    Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Pt_o));
               Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Capped_indexed_leafed_tree_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
                (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol
                  Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc,
                 Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Planar_index
                  (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Planar_trigonal_index
                    Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Pt_b))]);
             Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Capped_indexed_leafed_tree_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
              (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol
                Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc,
               Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Planar_index
                (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Planar_trigonal_index
                  Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Pt_b))]);
           Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Capped_indexed_leafed_tree_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
            (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol
              Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc,
             Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Planar_index
              (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Planar_trigonal_index
                Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Pt_b))])]);
       Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Capped_indexed_leafed_tree_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
        (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
          (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
            Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_C_h_3),
         Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Spherical_index
          (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
            Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.St_l))]);
     Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Capped_indexed_leafed_tree_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
      (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
        (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
          Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_C_h_3),
       Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Spherical_index
        (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
          Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.St_l))]);
   Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Capped_indexed_leafed_tree_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
    ((Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Onefork_block_symbol
       (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onebifork_block_symbol
         (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglebiforksinglesingle_block_symbol
           Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osbss_C_h_)),
      Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Spherical_index
       (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
         Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.St_r)),
    [Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Capped_indexed_leafed_tree_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
      (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
        (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
          Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_C_h_3),
       Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Spherical_index
        (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
          Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.St_r));
     Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Capped_indexed_leafed_tree_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
      (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
        (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
          Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_C_h_3),
       Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Spherical_index
        (Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
          Polypeptide_formula_constrained_t.Polypeptide_regular_formula_constrained_t.Molecule_forked_formula_constrained_t.Sole_index_t.St_l))])])
);;

test_number 3 (
Polypeptide_formula_constrained_v.name foc_plp (* : string *)
=
"(Zbf_N_h_2C_h_,{(x0Obf_CcocNch_C_h_,stl)[{(x0Obf_CcocNch_C_h_,str)[{(x0Obf_CcocNch_C_h_,str)[(Oo_CcocNch_C_h_2r1Oz_CdodO_h_,str) {(Obf_Cch_Nch_Cc,stl)[{(Obf_Cch_Nch_Cc,pto)[{(Obf_Cch_r4Cc,pto)[(Hbc,pto) (Hbc,ptb)]} (Hbc,ptb)]} (Hbc,ptb)]}]} (Osz_C_h_3,stl)]} (Osz_C_h_3,stl)]}{(Osbss_C_h_,str)[(Osz_C_h_3,str) (Osz_C_h_3,stl)]})"
);;
*)
