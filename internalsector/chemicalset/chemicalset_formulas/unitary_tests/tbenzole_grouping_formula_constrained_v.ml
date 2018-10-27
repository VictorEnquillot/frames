(** {3 Tests for Grouping_formula_constrained_v.} *)

open Make_test_v;;

(** {3 Benzale Grouping Formula_Constrained.} *)

testing "Benzale grouping_formula_constrained_v";;

(* toplevel 
   #use "tbenzale_grouping_formula_constrained_v.ml";; 
*)


(* Benzale grouping 

                   (b)
                   Hbc "b"
                  /
     (i) --Chr4Cc<
                  \
                   Hbc "a"
                   (o)
			*)

;;

test_number 1 (
 Grouping_formula_constrained_v.retrieve Grouping_symbol_v.benzale
(* : Grouping_formula_constrained_t.grouping_formula_constrained *)
=
Grouping_formula_constrained_t.Indexed_leafed_tree_t.Node
 (Grouping_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
   (Grouping_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
     Grouping_formula_constrained_t.Fragment_tag_t.Obf_Cch_r4Cc),
 [(Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leaf
    (Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol
      Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc),
   Grouping_formula_constrained_t.Sole_index_t.Planar_index
    (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
      Grouping_formula_constrained_t.Sole_index_t.Pt_o));
  (Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leaf
    (Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol
      Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc),
   Grouping_formula_constrained_t.Sole_index_t.Planar_index
    (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
      Grouping_formula_constrained_t.Sole_index_t.Pt_b))])
);;
