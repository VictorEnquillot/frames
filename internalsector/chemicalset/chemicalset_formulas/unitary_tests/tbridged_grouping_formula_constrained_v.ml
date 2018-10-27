(** {3 Tests for Grouping_formula_constrained_v.} *)

open Make_test_v;;

(** {3 Bridged Grouping Marker Formula_Constrained.} *)

testing "Bridged Grouping_formula_constrained_v";;

(* toplevel 
   #use "tbridged_grouping_formula_constrained_v.ml";; 
*)

;;

test_number 1 (
Grouping_formula_constrained_v.benzyl Sole_index_v.stc 
(* : Grouping_formula_constrained_t.grouping_formula_constrained *) 
=
Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
 ((Grouping_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
    (Grouping_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
      Grouping_formula_constrained_t.Fragment_tag_t.Obf_C_h_2Cc),
   Grouping_formula_constrained_t.Sole_index_t.Spherical_index
    (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
      Grouping_formula_constrained_t.Sole_index_t.St_c)),
 [Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
   (Grouping_formula_constrained_t.Fragment_tag_t.Halfbridgetail_fragment_symbol
     Grouping_formula_constrained_t.Fragment_tag_t.B_Cch_r5Bc,
    Grouping_formula_constrained_t.Sole_index_t.Planar_index
     (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
       Grouping_formula_constrained_t.Sole_index_t.Pt_o));
  Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
   (Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol
     Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc,
    Grouping_formula_constrained_t.Sole_index_t.Planar_index
     (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
       Grouping_formula_constrained_t.Sole_index_t.Pt_b))])
);;

test_number 2 (
Grouping_formula_constrained_v.name (Grouping_formula_constrained_v.benzyl Sole_index_v.stc) 
(* : string *)
= 
"{(Obf_C_h_2Cc,stc)[(B_Cch_r5Bc,pto) (Hbc,ptb)]}"
);;

test_number 3 (
Grouping_formula_constrained_v.benzale Sole_index_v.stc
(* : Grouping_formula_constrained_t.grouping_formula_constrained *)
=
Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
 ((Grouping_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
    (Grouping_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
      Grouping_formula_constrained_t.Fragment_tag_t.Obf_Cch_r4Cc),
   Grouping_formula_constrained_t.Sole_index_t.Spherical_index
    (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
      Grouping_formula_constrained_t.Sole_index_t.St_c)),
 [Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
   (Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol
     Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc,
    Grouping_formula_constrained_t.Sole_index_t.Planar_index
     (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
       Grouping_formula_constrained_t.Sole_index_t.Pt_o));
  Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
   (Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol
     Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc,
    Grouping_formula_constrained_t.Sole_index_t.Planar_index
     (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
       Grouping_formula_constrained_t.Sole_index_t.Pt_b))])
);;

test_number 4 (
Grouping_formula_constrained_v.name (Grouping_formula_constrained_v.benzale Sole_index_v.stc) 
(* : string *)
= 
"{(Obf_Cch_r4Cc,stc)[(Hbc,pto) (Hbc,ptb)]}"
);;

test_number 5 (
Grouping_formula_constrained_v.dimethone Sole_index_v.stc 
(* : Grouping_formula_constrained_t.grouping_formula_constrained *)
=
Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
 (Grouping_formula_constrained_t.Fragment_tag_t.Halfbridgetail_fragment_symbol
   Grouping_formula_constrained_t.Fragment_tag_t.B_Cch_r2Bc,
  Grouping_formula_constrained_t.Sole_index_t.Spherical_index
   (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
     Grouping_formula_constrained_t.Sole_index_t.St_c))
);;

test_number 6 (
Grouping_formula_constrained_v.name (Grouping_formula_constrained_v.dimethone Sole_index_v.stc) 
(* : string *)
= 
"(B_Cch_r2Bc,stc)"
);;

test_number 7 (
Grouping_formula_constrained_v.dimethonecarbonhydroxyldimethone Sole_index_v.stc 
(* : Grouping_formula_constrained_t.grouping_formula_constrained *)
=
Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
 ((Grouping_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
    (Grouping_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
      Grouping_formula_constrained_t.Fragment_tag_t.Obf_Cch_r2Cc),
   Grouping_formula_constrained_t.Sole_index_t.Spherical_index
    (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
      Grouping_formula_constrained_t.Sole_index_t.St_c)),
 [Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
   (Grouping_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
     (Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
       Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_O_h_),
    Grouping_formula_constrained_t.Sole_index_t.Planar_index
     (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
       Grouping_formula_constrained_t.Sole_index_t.Pt_o));
  Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
   (Grouping_formula_constrained_t.Fragment_tag_t.Halfbridgetail_fragment_symbol
     Grouping_formula_constrained_t.Fragment_tag_t.B_Cch_r2Bc,
    Grouping_formula_constrained_t.Sole_index_t.Planar_index
     (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
       Grouping_formula_constrained_t.Sole_index_t.Pt_b))])
);;

test_number 8 (
Grouping_formula_constrained_v.name (Grouping_formula_constrained_v.dimethonecarbonhydroxyldimethone Sole_index_v.stc) 
(* : string *)
= 
"{(Obf_Cch_r2Cc,stc)[(Osz_O_h_,pto) (B_Cch_r2Bc,ptb)]}"
);;

test_number 9 (
Grouping_formula_constrained_v.indole Sole_index_v.stc 
(* : Grouping_formula_constrained_t.grouping_formula_constrained *)
=
Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
 ((Grouping_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
    (Grouping_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
      Grouping_formula_constrained_t.Fragment_tag_t.Obf_Cch_Nch_Cc),
   Grouping_formula_constrained_t.Sole_index_t.Spherical_index
    (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
      Grouping_formula_constrained_t.Sole_index_t.St_c)),
 [Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
   ((Grouping_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
      (Grouping_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
        Grouping_formula_constrained_t.Fragment_tag_t.Obf_Cch_r4Cc),
     Grouping_formula_constrained_t.Sole_index_t.Planar_index
      (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
        Grouping_formula_constrained_t.Sole_index_t.Pt_o)),
   [Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
     (Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol
       Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc,
      Grouping_formula_constrained_t.Sole_index_t.Planar_index
       (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
         Grouping_formula_constrained_t.Sole_index_t.Pt_o));
    Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
     (Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol
       Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc,
      Grouping_formula_constrained_t.Sole_index_t.Planar_index
       (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
         Grouping_formula_constrained_t.Sole_index_t.Pt_b))]);
  Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
   (Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol
     Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc,
    Grouping_formula_constrained_t.Sole_index_t.Planar_index
     (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
       Grouping_formula_constrained_t.Sole_index_t.Pt_b))])
);;

test_number 10 (
Grouping_formula_constrained_v.name (Grouping_formula_constrained_v.indole Sole_index_v.stc)
(* : string *)
=
"{(Obf_Cch_Nch_Cc,stc)[{(Obf_Cch_r4Cc,pto)[(Hbc,pto) (Hbc,ptb)]} (Hbc,ptb)]}"
);;

test_number 11 (
Grouping_formula_constrained_v.metheneimidazole Sole_index_v.stc 
(* : Grouping_formula_constrained_t.grouping_formula_constrained *)
=
Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
 ((Grouping_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
    (Grouping_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
      Grouping_formula_constrained_t.Fragment_tag_t.Obf_C_h_2Cc),
   Grouping_formula_constrained_t.Sole_index_t.Spherical_index
    (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
      Grouping_formula_constrained_t.Sole_index_t.St_c)),
 [Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
   (Grouping_formula_constrained_t.Fragment_tag_t.Halfbridgetail_fragment_symbol
     Grouping_formula_constrained_t.Fragment_tag_t.B_Nch_Cch_NcCch_Bc,
    Grouping_formula_constrained_t.Sole_index_t.Planar_index
     (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
       Grouping_formula_constrained_t.Sole_index_t.Pt_o));
  Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
   (Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol
     Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc,
    Grouping_formula_constrained_t.Sole_index_t.Planar_index
     (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
       Grouping_formula_constrained_t.Sole_index_t.Pt_b))])
);;

test_number 12 (
Grouping_formula_constrained_v.name (Grouping_formula_constrained_v.metheneimidazole Sole_index_v.stc) 
(* : string *)
= 
"{(Obf_C_h_2Cc,stc)[(B_Nch_Cch_NcCch_Bc,pto) (Hbc,ptb)]}"
);;

test_number 13 (
Grouping_formula_constrained_v.metheneindole Sole_index_v.stc 
(* : Grouping_formula_constrained_t.grouping_formula_constrained *)
=
Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
 ((Grouping_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
    (Grouping_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
      Grouping_formula_constrained_t.Fragment_tag_t.Obf_Cch_Nch_Cc),
   Grouping_formula_constrained_t.Sole_index_t.Spherical_index
    (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
      Grouping_formula_constrained_t.Sole_index_t.St_c)),
 [Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
   ((Grouping_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
      (Grouping_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
        Grouping_formula_constrained_t.Fragment_tag_t.Obf_Cch_Nch_Cc),
     Grouping_formula_constrained_t.Sole_index_t.Planar_index
      (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
        Grouping_formula_constrained_t.Sole_index_t.Pt_o)),
   [Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
     ((Grouping_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
        (Grouping_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
          Grouping_formula_constrained_t.Fragment_tag_t.Obf_Cch_r4Cc),
       Grouping_formula_constrained_t.Sole_index_t.Planar_index
        (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
          Grouping_formula_constrained_t.Sole_index_t.Pt_o)),
     [Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
       (Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol
         Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc,
        Grouping_formula_constrained_t.Sole_index_t.Planar_index
         (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
           Grouping_formula_constrained_t.Sole_index_t.Pt_o));
      Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
       (Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol
         Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc,
        Grouping_formula_constrained_t.Sole_index_t.Planar_index
         (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
           Grouping_formula_constrained_t.Sole_index_t.Pt_b))]);
    Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
     (Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol
       Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc,
      Grouping_formula_constrained_t.Sole_index_t.Planar_index
       (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
         Grouping_formula_constrained_t.Sole_index_t.Pt_b))]);
  Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
   (Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol
     Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc,
    Grouping_formula_constrained_t.Sole_index_t.Planar_index
     (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
       Grouping_formula_constrained_t.Sole_index_t.Pt_b))])
);;

test_number 14 (
Grouping_formula_constrained_v.name (Grouping_formula_constrained_v.metheneindole Sole_index_v.stc) 
(* : string *)
=
"{(Obf_Cch_Nch_Cc,stc)[{(Obf_Cch_Nch_Cc,pto)[{(Obf_Cch_r4Cc,pto)[(Hbc,pto) (Hbc,ptb)]} (Hbc,ptb)]} (Hbc,ptb)]}"
);;

test_number 15 (
Grouping_formula_constrained_v.methenephenol Sole_index_v.stc 
(* : Grouping_formula_constrained_t.grouping_formula_constrained *)
=
Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
 ((Grouping_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
    (Grouping_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
      Grouping_formula_constrained_t.Fragment_tag_t.Obf_C_h_2Cc),
   Grouping_formula_constrained_t.Sole_index_t.Spherical_index
    (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
      Grouping_formula_constrained_t.Sole_index_t.St_c)),
 [Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
   ((Grouping_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
      (Grouping_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
        Grouping_formula_constrained_t.Fragment_tag_t.Obf_Cch_r2Cc),
     Grouping_formula_constrained_t.Sole_index_t.Planar_index
      (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
        Grouping_formula_constrained_t.Sole_index_t.Pt_o)),
   [Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
     (Grouping_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
       (Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
         Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_O_h_),
      Grouping_formula_constrained_t.Sole_index_t.Planar_index
       (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
         Grouping_formula_constrained_t.Sole_index_t.Pt_o));
    Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
     (Grouping_formula_constrained_t.Fragment_tag_t.Halfbridgetail_fragment_symbol
       Grouping_formula_constrained_t.Fragment_tag_t.B_Cch_r2Bc,
      Grouping_formula_constrained_t.Sole_index_t.Planar_index
       (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
         Grouping_formula_constrained_t.Sole_index_t.Pt_b))]);
  Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
   (Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol
     Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc,
    Grouping_formula_constrained_t.Sole_index_t.Planar_index
     (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
       Grouping_formula_constrained_t.Sole_index_t.Pt_b))])
);;

test_number 16 (
Grouping_formula_constrained_v.name (Grouping_formula_constrained_v.methenephenol Sole_index_v.stc) 
(* : string *)
=
"{(Obf_C_h_2Cc,stc)[{(Obf_Cch_r2Cc,pto)[(Osz_O_h_,pto) (B_Cch_r2Bc,ptb)]} (Hbc,ptb)]}"
);;

test_number 17 (
Grouping_formula_constrained_v.phenol Sole_index_v.stc 
(* : Grouping_formula_constrained_t.grouping_formula_constrained *)
=
Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
 ((Grouping_formula_constrained_t.Fragment_tag_t.Onefork_block_symbol
    (Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onebifork_block_symbol
      (Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglebiforksinglesingle_block_symbol
        Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osbss_Cc)),
   Grouping_formula_constrained_t.Sole_index_t.Spherical_index
    (Grouping_formula_constrained_t.Sole_index_t.Spherical_tetrahedral_index
      Grouping_formula_constrained_t.Sole_index_t.St_c)),
 [Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Node
   ((Grouping_formula_constrained_t.Fragment_tag_t.Onefork_fragment_symbol
      (Grouping_formula_constrained_t.Fragment_tag_t.Onebifork_fragment_symbol
        Grouping_formula_constrained_t.Fragment_tag_t.Obf_Cch_r2Cc),
     Grouping_formula_constrained_t.Sole_index_t.Planar_index
      (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
        Grouping_formula_constrained_t.Sole_index_t.Pt_o)),
   [Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
     (Grouping_formula_constrained_t.Fragment_tag_t.Onezero_block_symbol
       (Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Onesinglezero_block_symbol
         Grouping_formula_constrained_t.Fragment_tag_t.Block_symbol_t.Osz_O_h_),
      Grouping_formula_constrained_t.Sole_index_t.Planar_index
       (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
         Grouping_formula_constrained_t.Sole_index_t.Pt_o));
    Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
     (Grouping_formula_constrained_t.Fragment_tag_t.Halfbridgetail_fragment_symbol
       Grouping_formula_constrained_t.Fragment_tag_t.B_Cch_r2Bc,
      Grouping_formula_constrained_t.Sole_index_t.Planar_index
       (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
         Grouping_formula_constrained_t.Sole_index_t.Pt_b))]);
  Grouping_formula_constrained_t.Indexed_leafed_tree_t.Leafed_tree_t.Leaf
   (Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol
     Grouping_formula_constrained_t.Fragment_tag_t.Halfbridge_symbol_t.Hbc,
    Grouping_formula_constrained_t.Sole_index_t.Planar_index
     (Grouping_formula_constrained_t.Sole_index_t.Planar_trigonal_index
       Grouping_formula_constrained_t.Sole_index_t.Pt_b))])
);;

test_number 18 (
Grouping_formula_constrained_v.name (Grouping_formula_constrained_v.phenol Sole_index_v.stc)
=
"{(Osbss_Cc,stc)[{(Obf_Cch_r2Cc,pto)[(Osz_O_h_,pto) (B_Cch_r2Bc,ptb)]} (Hbc,ptb)]}"
);;


