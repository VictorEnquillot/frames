(** {3 Tests for Grouping_formula_constrained_v.} *)

open Make_test_v;;

(** {3 Leaf Block Grouping Marker Formula_Constrained.} *)

testing "Leafblock Grouping_formula_constrained_v";;

(* toplevel 
   #use "tleafblock_grouping_formula_constrained_v.ml";; 
*)


let amine = Grouping_formula_constrained_v.amine;;
let carcofferylate = Grouping_formula_constrained_v.carcofferylate;;
let hydroxyl = Grouping_formula_constrained_v.hydroxyl;;
let methyl = Grouping_formula_constrained_v.methyl;;
let nsh2 = Grouping_formula_constrained_v.nsh2;;
let thiol = Grouping_formula_constrained_v.thiol;;

test_number 1 (
amine Sole_index_v.stc 
(* : Grouping_formula_constrained_t.grouping_formula_constrained *)
=
Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
 (Grouping_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
   (Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
     Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_N_h_2),
  Grouping_formula_constrained_t.Sole_index_t.Spherical_index
   (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
     Grouping_formula_constrained_t.Sole_index_t.St_c))
);;

test_number 2 (
carcofferylate Sole_index_v.stc
(* : Grouping_formula_constrained_t.grouping_formula_constrained *)
=
Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
 (Grouping_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
   (Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
     Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_Ccoc2),
  Grouping_formula_constrained_t.Sole_index_t.Spherical_index
   (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
     Grouping_formula_constrained_t.Sole_index_t.St_c))
);;

test_number 3 (
hydroxyl Sole_index_v.stc
(* : Grouping_formula_constrained_t.grouping_formula_constrained *)
=
Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
 (Grouping_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
   (Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
     Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_O_h_),
  Grouping_formula_constrained_t.Sole_index_t.Spherical_index
   (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
     Grouping_formula_constrained_t.Sole_index_t.St_c))
);;

test_number 4 (
methyl Sole_index_v.stc
(* : Grouping_formula_constrained_t.grouping_formula_constrained *)
=
Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
 (Grouping_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
   (Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
     Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_C_h_3),
  Grouping_formula_constrained_t.Sole_index_t.Spherical_index
   (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
     Grouping_formula_constrained_t.Sole_index_t.St_c))
);;

test_number 5 (
nsh2 Sole_index_v.stc
(* : Grouping_formula_constrained_t.grouping_formula_constrained *)
=
Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
 (Grouping_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
   (Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
     Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_Nsh_2),
  Grouping_formula_constrained_t.Sole_index_t.Spherical_index
   (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
     Grouping_formula_constrained_t.Sole_index_t.St_c))
);;

test_number 6 (
thiol Sole_index_v.stc
(* : Grouping_formula_constrained_t.grouping_formula_constrained *)
=
Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
 (Grouping_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
   (Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
     Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_S_h_),
  Grouping_formula_constrained_t.Sole_index_t.Spherical_index
   (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
     Grouping_formula_constrained_t.Sole_index_t.St_c))
);;


