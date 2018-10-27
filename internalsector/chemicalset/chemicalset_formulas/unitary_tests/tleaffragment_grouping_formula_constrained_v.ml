(** {3 Tests for Grouping_formula_constrained_v.} *)

open Make_test_v;;

(** {3 Leaffragment Grouping Marker Formula_Constrained.} *)

testing "Leaf Fragment Grouping_formula_constrained_v";;

(* toplevel 
   #use "tleaffragment_grouping_formula_constrained_v.ml";; 
*)


let amide = Grouping_formula_constrained_v.amide;;
let dietheneamine = Grouping_formula_constrained_v.dietheneamine;;
let dimethenesmethyl = Grouping_formula_constrained_v.dimethenesmethyl;;
let etheneacid = Grouping_formula_constrained_v.etheneacid;;
let etheneamide = Grouping_formula_constrained_v.etheneamide;;
let ethyl = Grouping_formula_constrained_v.ethyl;;
let ethyl = Grouping_formula_constrained_v.ethyl;;
let metheneacid = Grouping_formula_constrained_v.metheneacid;;
let metheneamide = Grouping_formula_constrained_v.metheneamide;;
let methenethiol = Grouping_formula_constrained_v.methenethiol;;
let methenol = Grouping_formula_constrained_v.methenol;;

test_number 1 (
amide Sole_index_v.stc
(* Grouping_formula_constrained_t.grouping_formula_constrained *)
  =
Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
  (Grouping_formula_constrained_t.Fragment_tag_t.Onezero_fragment_symbol
     Grouping_formula_constrained_t.Fragment_tag_t.Oz_CcocNch_2,
   Grouping_formula_constrained_t.Sole_index_t.Spherical_index
   (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
      Grouping_formula_constrained_t.Sole_index_t.St_c))
);;

test_number 2 (
Grouping_formula_constrained_v.name (amide Sole_index_v.stc)
(* : string *)
= 
"(Oz_CcocNch_2,stc)"
);;

test_number 3 (
etheneacid Sole_index_v.stc
(* : Grouping_formula_constrained_t.grouping_formula_constrained *)
  =
Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
  (Grouping_formula_constrained_t.Fragment_tag_t.Onezero_fragment_symbol
     Grouping_formula_constrained_t.Fragment_tag_t.Oz_C_h_2r2CdodO_h_,
   Grouping_formula_constrained_t.Sole_index_t.Spherical_index
     (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
	Grouping_formula_constrained_t.Sole_index_t.St_c))
);;

test_number 4 (
Grouping_formula_constrained_v.name (etheneacid Sole_index_v.stc)
(* : string *)
= 
"(Oz_C_h_2r2CdodO_h_,stc)"
);;
