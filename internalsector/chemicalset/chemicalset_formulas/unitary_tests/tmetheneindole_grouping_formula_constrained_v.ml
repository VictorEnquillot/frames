(** {3 Tests for Grouping_formula_constrained_v.} *)

open Make_test_v;;

(** {3 MetheneIndole Grouping Formula Constrained.} *)

testing "MetheneIndole Grouping_formula_constrained_v";;

(* toplevel 
   #use "tmetheneindole_grouping_formula_constrained_v.ml";; 
*)

;;

(*
 --- MetheneIndole grouping -------------------

         -Ch2C<     
            / \
           /  ptb 
          /   "a"
  ------ pto  ----- Indole grouping ------------
         /    
  -ChNhC<   <--- Pyrrole part grouping      
       / \	 
     pto ptb 
    /    "b"
  ----------------------------------------------
  /
 Chr4C<  <-- Benzale part grouping 
     / \
    pto ptb
   "a"  "b"
*)

(* MetheneIndole grouping *)

test_number 1 (
Grouping_formula_constrained_v.metheneindole
(* : Grouping_formula_constrained_t.grouping_formula_constrained *)
=
Grouping_formula_constrained_t.Indexed_leafed_tree_t.Node
 (Grouping_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
   (Grouping_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
     Grouping_formula_constrained_t.Fragment_tag_t.Obf_Cch_Nch_Cc),
 [(Grouping_formula_constrained_t.Indexed_leafed_tree_t.Node
    (Grouping_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
      (Grouping_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
        Grouping_formula_constrained_t.Fragment_tag_t.Obf_Cch_Nch_Cc),
    [(Grouping_formula_constrained_t.Indexed_leafed_tree_t.Node
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
            Grouping_formula_constrained_t.Sole_index_t.Pt_b))]),
      Grouping_formula_constrained_t.Sole_index_t.Planar_index
       (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
         Grouping_formula_constrained_t.Sole_index_t.Pt_o));
     (Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leaf
       (Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol
         Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc),
      Grouping_formula_constrained_t.Sole_index_t.Planar_index
       (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
         Grouping_formula_constrained_t.Sole_index_t.Pt_b))]),
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

