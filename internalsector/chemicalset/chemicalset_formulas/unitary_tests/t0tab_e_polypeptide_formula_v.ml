(** {3 0tab_e Polypeptide formula.} *)

open Make_test_v;;

testing "0tab_e Polypeptide_formula_v";;

(* toplevel 
   #use "t0tab_e_polypeptide_formula_v.ml";; 
*)


(* Polypeptide Symbol *)

let sym_plp = Polypeptide_symbol_t.Tab_e;;

(* Polypeptide Symbol Formula  *)

let for_plp = Polypeptide_formula_v.make sym_plp;;

test_number 1 (
Polypeptide_sequence_v.name (Polypeptide_sequence_v.make sym_plp)
=
"LIV"
);;

test_number 2 (
frm_plp 
(* : Polypeptide_formula_t.polypeptide_formula *) 
=
Polypeptide_formula_t.Molecule_linear_formula_t.Indexed_tree_t.Node
 (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Head_fragment_symbol
   (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Zerofork_fragment_symbol
     (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Zerobifork_fragment_symbol
       Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Zbf_N_h_2C_h_)),
 [(Polypeptide_formula_t.Molecule_linear_formula_t.Indexed_tree_t.Node
    (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Buried_fragment_symbol
      (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Buried_segment_extends_buried_fragment_symbol
        ([],
         Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onefork_fragment_symbol
          (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onebifork_fragment_symbol
            Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Obf_CcocNch_C_h_))),
    [(Polypeptide_formula_t.Molecule_linear_formula_t.Indexed_tree_t.Node
       (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Buried_fragment_symbol
         (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Buried_segment_extends_buried_fragment_symbol
           ([],
            Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onefork_fragment_symbol
             (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onebifork_fragment_symbol
               Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Obf_CcocNch_C_h_))),
       [(Polypeptide_formula_t.Molecule_linear_formula_t.Indexed_tree_t.Leaf
          (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Leaf_fragment_symbol
            (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Buried_segment_extends_leaf_fragment_symbol
              ([],
               Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onezero_fragment_symbol
                Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Oz_CdodO_h_))),
         Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_index
          (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_tetrahedral_index
            Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.St_r));
        (Polypeptide_formula_t.Molecule_linear_formula_t.Indexed_tree_t.Node
          (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Buried_fragment_symbol
            (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onefork_block_symbol
              (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Onebifork_block_symbol
                (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Onesinglebiforksinglesingle_block_symbol
                  Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Osbss_C_h_))),
          [(Polypeptide_formula_t.Molecule_linear_formula_t.Indexed_tree_t.Leaf
             (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Leaf_fragment_symbol
               (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onezero_block_symbol
                 (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
                   Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Osz_C_h_3))),
            Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_index
             (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_tetrahedral_index
               Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.St_r));
           (Polypeptide_formula_t.Molecule_linear_formula_t.Indexed_tree_t.Leaf
             (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Leaf_fragment_symbol
               (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onezero_block_symbol
                 (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
                   Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Osz_C_h_3))),
            Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_index
             (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_tetrahedral_index
               Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.St_l))]),
         Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_index
          (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_tetrahedral_index
            Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.St_l))]),
      Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_index
       (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_tetrahedral_index
         Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.St_r));
     (Polypeptide_formula_t.Molecule_linear_formula_t.Indexed_tree_t.Node
       (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Buried_fragment_symbol
         (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onefork_block_symbol
           (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Onebifork_block_symbol
             (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Onesinglebiforksinglesingle_block_symbol
               Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Osbss_C_h_))),
       [(Polypeptide_formula_t.Molecule_linear_formula_t.Indexed_tree_t.Leaf
          (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Leaf_fragment_symbol
            (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onezero_fragment_symbol
              Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Oz_C_h_2C_h_3)),
         Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_index
          (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_tetrahedral_index
            Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.St_r));
        (Polypeptide_formula_t.Molecule_linear_formula_t.Indexed_tree_t.Leaf
          (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Leaf_fragment_symbol
            (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onezero_block_symbol
              (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
                Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Osz_C_h_3))),
         Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_index
          (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_tetrahedral_index
            Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.St_l))]),
      Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_index
       (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_tetrahedral_index
         Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.St_l))]),
   Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_index
    (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_tetrahedral_index
      Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.St_r));
  (Polypeptide_formula_t.Molecule_linear_formula_t.Indexed_tree_t.Node
    (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Buried_fragment_symbol
      (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onefork_fragment_symbol
        (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onebifork_fragment_symbol
          Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Obf_C_h_2C_h_)),
    [(Polypeptide_formula_t.Molecule_linear_formula_t.Indexed_tree_t.Leaf
       (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Leaf_fragment_symbol
         (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onezero_block_symbol
           (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
             Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Osz_C_h_3))),
      Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_index
       (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_tetrahedral_index
         Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.St_r));
     (Polypeptide_formula_t.Molecule_linear_formula_t.Indexed_tree_t.Leaf
       (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Leaf_fragment_symbol
         (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Onezero_block_symbol
           (Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
             Polypeptide_formula_t.Molecule_linear_formula_t.Fragment_tag_t.Block_symbol_t.Osz_C_h_3))),
      Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_index
       (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_tetrahedral_index
         Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.St_r))]),
   Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_index
    (Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.Spherical_tetrahedral_index
      Polypeptide_formula_t.Molecule_linear_formula_t.Sole_index_t.St_l))])
);;

test_number 3 (
Polypeptide_formula_v.name for_plp (* : string *)
=
"{Zbf_N_h_2C_h_ [({x0Obf_CcocNch_C_h_ [({x0Obf_CcocNch_C_h_ [(x0Oz_CdodO_h_,str)({Osbss_C_h_ [(Osz_C_h_3,str)(Osz_C_h_3,stl)]},stl)]},str)({Osbss_C_h_ [(Oz_C_h_2C_h_3,str)(Osz_C_h_3,stl)]},stl)]},str)({Obf_C_h_2C_h_ [(Osz_C_h_3,str)(Osz_C_h_3,str)]},stl)]}"
);;

(*
"{Zbf_N_h_2C_h_ 
   [({x0Obf_CcocNch_C_h_ 
     [({x0Obf_CcocNch_C_h_ 
       [(x0Oz_CdodO_h_,str) 
       ({Osbss_C_h_ [(Osz_C_h_3,str)(Osz_C_h_3,stl)]}, stl)]}, str)
       ({Osbss_C_h_ [(Oz_C_h_2C_h_3,str)(Osz_C_h_3,stl)]},stl)]
      },
     str)
       ({Obf_C_h_2C_h_ [(Osz_C_h_3,str)(Osz_C_h_3,str)]},stl)
    ]
 }"
*)
