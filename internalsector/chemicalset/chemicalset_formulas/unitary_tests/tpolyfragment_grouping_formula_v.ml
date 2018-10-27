(** {3 Tests for Grouping_formula_v.} *)

open Make_test_v;;

(** {3 Polyfragment Grouping Marker Formula.} *)

testing "Poly Fragment Grouping_formula_v";;

(* toplevel 
   #use "tpolyfragment_grouping_formula_v.ml";; 
*)

;;

let sym_grp = Grouping_symbol_v.ethcaracidmethyllamine;;

let foc_grp = Grouping_formula_constrained_v.ethcaracidmethyllamine Sole_index_v.stc;;

let for_grp = Grf_v.make sym_grp Sole_index_v.stc;;

test_number 1 (
Grf_v.make sym_grp Sole_index_v.stc
(* : Grouping_formula_t.grouping_formula *)
=
  Tree_t.Node
   ((Grouping_formula_t.Fragment_tag_t.Buried_fragment_symbol
      (Grouping_formula_t.Fragment_tag_t.Onefork_fragment_symbol
        (Grouping_formula_t.Fragment_tag_t.Onebifork_fragment_symbol
          Grouping_formula_t.Fragment_tag_t.Obf_C_h_2Cc)),
     Grouping_formula_t.Sole_index_t.Spherical_index
      (Grouping_formula_t.Sole_index_t.Spherical_tetrahedral_index
        Grouping_formula_t.Sole_index_t.St_c)),
   [Tree_t.Leaf
     (Grouping_formula_t.Fragment_tag_t.Leaf_fragment_symbol
       (Grouping_formula_t.Fragment_tag_t.Onezero_block_symbol
         (Grouping_formula_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
           Grouping_formula_t.Fragment_tag_t.Block_symbol_t.Osz_O_h_)),
      Grouping_formula_t.Sole_index_t.Spherical_index
       (Grouping_formula_t.Sole_index_t.Spherical_tetrahedral_index
         Grouping_formula_t.Sole_index_t.St_o));
    Tree_t.Leaf
     (Grouping_formula_t.Fragment_tag_t.Leaf_fragment_symbol
       (Grouping_formula_t.Fragment_tag_t.Onezero_block_symbol
         (Grouping_formula_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
           Grouping_formula_t.Fragment_tag_t.Block_symbol_t.Osz_C_h_3)),
      Grouping_formula_t.Sole_index_t.Spherical_index
       (Grouping_formula_t.Sole_index_t.Spherical_tetrahedral_index
         Grouping_formula_t.Sole_index_t.St_r));
    Tree_t.Leaf
     (Grouping_formula_t.Fragment_tag_t.Leaf_fragment_symbol
       (Grouping_formula_t.Fragment_tag_t.Onezero_block_symbol
         (Grouping_formula_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
           Grouping_formula_t.Fragment_tag_t.Block_symbol_t.Osz_Nsh_2)),
      Grouping_formula_t.Sole_index_t.Spherical_index
       (Grouping_formula_t.Sole_index_t.Spherical_tetrahedral_index
         Grouping_formula_t.Sole_index_t.St_l))])
);;

test_number 2 (
Grouping_formula_constrained_v.ethcaracidmethylramine Sole_index_v.stc
(* : Grouping_formula_t.grouping_formula *)
=
Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
 ((Grouping_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
    (Grouping_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
      Grouping_formula_constrained_t.Fragment_tag_t.Obf_C_h_2Cc),
   Grouping_formula_constrained_t.Sole_index_t.Spherical_index
    (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
      Grouping_formula_constrained_t.Sole_index_t.St_c)),
 [Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
   (Grouping_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
     (Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
       Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_O_h_),
    Grouping_formula_constrained_t.Sole_index_t.Spherical_index
     (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
       Grouping_formula_constrained_t.Sole_index_t.St_o));
  Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
   (Grouping_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
     (Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
       Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_C_h_3),
    Grouping_formula_constrained_t.Sole_index_t.Spherical_index
     (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
       Grouping_formula_constrained_t.Sole_index_t.St_r));
  Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
   (Grouping_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
     (Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
       Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_Nsh_2),
    Grouping_formula_constrained_t.Sole_index_t.Spherical_index
     (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
       Grouping_formula_constrained_t.Sole_index_t.St_l))])
);;

test_number 3 (
Grouping_formula_constrained_v.ethineacidlamine Sole_index_v.stc
(* : Grouping_formula_t.grouping_formula *)
=
Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
 ((Grouping_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
    (Grouping_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
      Grouping_formula_constrained_t.Fragment_tag_t.Obf_C_h_2C_h_),
   Grouping_formula_constrained_t.Sole_index_t.Spherical_index
    (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
      Grouping_formula_constrained_t.Sole_index_t.St_c)),
 [Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
   (Grouping_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
     (Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
       Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_O_h_),
    Grouping_formula_constrained_t.Sole_index_t.Spherical_index
     (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
       Grouping_formula_constrained_t.Sole_index_t.St_r));
  Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
   (Grouping_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
     (Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
       Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_Nsh_2),
    Grouping_formula_constrained_t.Sole_index_t.Spherical_index
     (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
       Grouping_formula_constrained_t.Sole_index_t.St_l))])
);;

test_number 4 (
Grouping_formula_constrained_v.ethineacidramine Sole_index_v.stc
(* : Grouping_formula_t.grouping_formula *)
=
Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
 ((Grouping_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
    (Grouping_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
      Grouping_formula_constrained_t.Fragment_tag_t.Obf_C_h_2C_h_),
   Grouping_formula_constrained_t.Sole_index_t.Spherical_index
    (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
      Grouping_formula_constrained_t.Sole_index_t.St_c)),
 [Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
   (Grouping_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
     (Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
       Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_O_h_),
    Grouping_formula_constrained_t.Sole_index_t.Spherical_index
     (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
       Grouping_formula_constrained_t.Sole_index_t.St_r));
  Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
   (Grouping_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
     (Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
       Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_Nsh_2),
    Grouping_formula_constrained_t.Sole_index_t.Spherical_index
     (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
       Grouping_formula_constrained_t.Sole_index_t.St_l))])
);;

test_number 5 (
Grouping_formula_constrained_v.guanidine Sole_index_v.stc
(* : Grouping_formula_t.grouping_formula *)
=
Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
 ((Grouping_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
    (Grouping_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
      Grouping_formula_constrained_t.Fragment_tag_t.Obf_NdCd),
   Grouping_formula_constrained_t.Sole_index_t.Spherical_index
    (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
      Grouping_formula_constrained_t.Sole_index_t.St_c)),
 [Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
   (Grouping_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
     (Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
       Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_Nsh_2),
    Grouping_formula_constrained_t.Sole_index_t.Planar_index
     (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
       Grouping_formula_constrained_t.Sole_index_t.Pt_o));
  Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
   (Grouping_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
     (Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
       Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_Nsh_2),
    Grouping_formula_constrained_t.Sole_index_t.Planar_index
     (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
       Grouping_formula_constrained_t.Sole_index_t.Pt_b))])
);;

test_number 6 ( 
Grouping_formula_constrained_v.guanidinium Sole_index_v.stc
(* : Grouping_formula_t.grouping_formula *)
=Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
 ((Grouping_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
    (Grouping_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
      Grouping_formula_constrained_t.Fragment_tag_t.Obf_Nsh_Cc),
   Grouping_formula_constrained_t.Sole_index_t.Spherical_index
    (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
      Grouping_formula_constrained_t.Sole_index_t.St_c)),
 [Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
   (Grouping_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
     (Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
       Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_Nsh_2),
    Grouping_formula_constrained_t.Sole_index_t.Planar_index
     (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
       Grouping_formula_constrained_t.Sole_index_t.Pt_o));
  Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
   (Grouping_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
     (Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
       Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_Nsh_2),
    Grouping_formula_constrained_t.Sole_index_t.Planar_index
     (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
       Grouping_formula_constrained_t.Sole_index_t.Pt_b))])
);;


